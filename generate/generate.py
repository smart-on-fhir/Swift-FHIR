#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
#  Download and parse FHIR resource definitions
#  Supply "-f" to force a redownload of the spec

import sys
import os.path
import glob
import re
import json
import datetime
import textwrap
from jinja2 import Environment, PackageLoader

url_spec = 'http://hl7.org/documentcenter/public/standards/FHIR/fhir-spec.zip'
cache = 'downloads'

classmap = {
	'Structure': 'FHIRElement',
	'Resource': 'FHIRResource',
	
	'boolean': 'Bool',
	'integer': 'Int',
	'date': 'NSDate',
	'dateTime': 'NSDate',
	'instant': 'Int',
	'Age': 'Double',
	'decimal': 'NSDecimalNumber',
	
	'string': 'String',
	'id': 'String',
	'oid': 'String',
	'idref': 'String',
	'uri': 'NSURL',
	'base64Binary': 'String',
	'xhtml': 'String',
	'code': 'String',		# for now we're not generating enums for these
}

jsonmap = {
	'FHIRElement': 'NSDictionary',
	'FHIRResource': 'NSDictionary',
	
	'Int': 'Int',
	'Bool': 'Int',
	'Double': 'NSNumber',
	
	'String': 'String',
	'NSDate': 'String',
	'NSDecimalNumber': 'Double',
	'NSDate': 'String',
	'NSURL': 'String',
}

reserved = {
	'class': 'klass',
	'import': 'importFrom',
	'protocol': 'proto',
	'extension': 'ext',
	'operator': 'operatr',
}

skip_properties = [
	'extension',
	'modifierExtension',
	'language',
	'contained',
]

jinjaenv = Environment(loader=PackageLoader('generate', '.'))
loglevel = 0

def log1(*logstring):
	if loglevel > 0:
		print(' '.join(str(s) for s in logstring))


def download(url, path):
	""" Download the given URL to the given path.
	"""
	import requests		# import here as we can bypass its use with a manual download
	
	print('->  Downloading {}'.format(url))
	ret = requests.get(url)
	assert(ret.ok)
	with open(path, 'wb') as handle:
		for chunk in ret.iter_content():
			handle.write(chunk)


def expand(path, target):
	""" Expand the ZIP file at the given path to the given target directory.
	"""
	assert(os.path.exists(path))
	import zipfile		# import here as we can bypass its use with a manual unzip
	
	print('->  Extracting to {}'.format(target))
	with zipfile.ZipFile(path) as z:
		z.extractall(target)


def parse(path):
	""" Parse all JSON profile definitions found in the given expanded
	directory, create classes for all found profiles, collect all search params
	and generate the search param extension.
	"""
	assert(os.path.exists(path))
	
	# get FHIR version
	version = None
	with open(os.path.join(path, 'version.info'), 'r') as handle:
		text = handle.read()
		for line in text.split("\r\n"):
			if '=' in line:
				(n, v) = line.split('=', 2)
				if 'FhirVersion' == n:
					version = v
	
	assert(version is not None)
	print("->  This is FHIR version {}".format(version))
	now = datetime.date.today()
	info = {
		'version': version,
		'date': now.isoformat(),
		'year': now.year
	}
	
	# parse profiles
	factories = set()
	search_params = set()
	in_profiles = {}
	for prof in glob.glob(os.path.join(path, '*.profile.json')):
		profile_name, srch, supp = process_profile(prof, info)
		
		if profile_name is not None:
			factories.add(profile_name)
		
		if srch is not None:
			search_params |= srch
			for spp in supp:
				if spp in in_profiles:
					in_profiles[spp].add(profile_name)
				else:
					in_profiles[spp] = set([profile_name])
	
	# process element factory
	process_factories(factories, info)
	
	# process search parameters
	process_search(search_params, in_profiles, info)


def process_profile(path, info):
	""" Parse one profile file, render the Swift class and return possible
	search parameters.
	
	:returns: A tuple with (profile-name, "name|original-name|type", "name")
	"""
	assert(os.path.exists(path))
	
	# read the profile
	profile = None
	with open(path, 'r') as handle:
		profile = json.load(handle)
	
	assert(profile != None)
	assert('Profile' == profile['resourceType'])
	
	structure_arr = profile.get('structure')
	if structure_arr is None or 0 == len(structure_arr):
		print('xx>  {} has no structure'.format(path))
		return None, None, None
	
	info['filename'] = filename = os.path.basename(path)
	requirements = profile.get('requirements')
	structure = structure_arr[0]
	
	# figure out which type/class this is
	
	# Some profiles, such as "Age", basically define a subclass of a type, like
	# "Quantity", which is not apparent from inside the `element` definitions.
	# OTOH, "LipidProfile" on "DiagnosticReport" extends a profile - we are
	#
	# NOT YET
	#
	# handling these - well we are dumping these as well, but not handling any
	# additional attributes. Not yet sure if that's correct and we're not
	# adding these classes to the repo
	is_subclass = False
	superclass = structure['type']
	main = structure.get('name')
	if main is None:
		main = superclass
	elif main != superclass:
		is_subclass = True
	
	print('-->  Parsing {}  --  {}'.format(main, filename))
	classes = []
	
	# loop elements
	mapping = {}
	elements = structure.get('element', [])
	
	for element in elements:
		path = element['path']
		parts = path.split('.')
		classpath = '.'.join(parts[:-1]) if len(parts) > 1 else parts[0]
		name = parts[-1]
		
		if name in skip_properties:
			log1('--->  Skipping {} property'.format(name))
			continue
		
		definition = element.get('definition')
		if definition is None:
			print('xx>  No definition for {}'.format(path))
			continue
		
		k = mapping.get(classpath)
		newklass = parse_elem(path, name, definition, k)
		
		# element describes a new class
		if newklass is not None:
			mapping[newklass['path']] = newklass
			classes.append(newklass)
			
			# is this the resource description itself?
			if path == main:
				newklass['resourceName'] = main
				newklass['formal'] = _wrap(requirements)
			
			# this is a "subclass", such as "Age" on "Quantity"
			elif is_subclass:
				log1('--->  Treating {} as subclass of {}'.format(main, superclass))
				newklass['className'] = main
				newklass['superclass'] = superclass
				newklass['is_subclass'] = True
				newklass['short'] = _wrap(profile.get('name'))
				newklass['formal'] = _wrap(profile.get('description'))
				break
	
	info['main'] = main
	render({'info': info, 'classes': classes}, 'template-resource.swift')
	
	# get search params
	srch = set()
	supported = set()
	params = structure.get('searchParam', [])	# list of dictionaries with "name", "type" and "documentation"
	for param in params:
		name = param['name']
		tp = param['type']
		if name and tp:
			orig = name
			name = re.sub(r'[^\w\d\-]', '', name)
			if '-' in name:
				i = 0
				for n in name.split('-'):
					if i > 0:
						name += n[0].upper() + n[1:]
					else:
						name = n
					i += 1
			srch.add('{}|{}|{}'.format(name, orig, tp))
			supported.add(name)
	
	return main, srch, supported


def parse_elem(path, name, definition, klass):
	""" Parse one profile element (which will become a class property).
	A `klass` dictionary may be passed in, in which case the element's
	definitions will be interpreted in its context. A new class may be returned
	if an inline defined subtype is detected.
	
	:param path: The path to the element, like "MedicationPrescription.identifier"
	:param name: The name of the property, like "identifier"
	:param definition: The element's definition
	:param klass: The owning class of the element, if it has just been parsed
	:returns: A dictionary with class attributes, if and only if an inline-
		defined subtype is detected
	"""
	short = definition['short']
	formal = definition['formal']
	if formal and short == formal[:-1]:		# formal adds a trailing period
		formal = None
	n_min = definition['min']
	n_max = definition['max']
	
	# determine property class(es)
	types = []
	haz = set()
	for tp in definition.get('type', []):
		code = tp['code']
		if code not in haz:
			haz.add(code)
			types.append((code, tp.get('profile', None) is not None))
	
	# no type means this is an inline-defined subtype, create a class for it
	newklass = None
	if klass is None or 0 == len(types):
		className = ''.join(['{}{}'.format(s[:1].upper(), s[1:]) for s in path.split('.')])
		newklass = {
			'path': path,
			'className': className,
			'superclass': classmap.get(types[0][0], 'FHIRElement') if len(types) > 0 else 'FHIRElement',
			'short': _wrap(short),
			'formal': _wrap(formal),
			'properties': [],
			'nonoptional': []
		}
		
		if 0 == len(types):
			types.append((className, False))
	
	# add as properties to class
	if klass is not None:
		for tp, isRef in types:
			myname = name
			if '*' == tp:
				tp = 'FHIRElement'
				myname = name.replace('[x]', '')
			if '[x]' in myname:
				myname = name.replace('[x]', '{}{}'.format(tp[:1].upper(), tp[1:]))
			mappedClass = classmap.get(tp, tp)
			prop = {
				'name': reserved.get(myname, myname),
				'short': short,
				'className': mappedClass,
				'jsonClass': jsonmap.get(mappedClass, 'NSDictionary'),
				'isArray': True if '*' == n_max else False,
				'isReference': isRef,
				#'modOptional': '?' if int(n_min) < 1 else ''
			}
			
			klass['properties'].append(prop)
			if 0 != int(n_min):
				klass['nonoptional'].append(prop)
	
	return newklass


def process_factories(factories, info):
	""" Renders a template which creates an extension to FHIRElement that has
	a factory method with all FHIR resource types.
	"""
	data = {
		'filename': 'FHIRElement+Factory.swift',
		'info': info,
		'classes': factories,
	}
	render(data, 'template-elementfactory.swift')


def process_search(params, in_profiles, info):
	""" Processes and renders the FHIR search params extension.
	"""
	extensions = []
	dupes = set()
	for param in sorted(params):
		(name, orig, typ) = param.split('|')
		finalname = reserved.get(name, name)
		for d in extensions:
			if finalname == d['name']:
				dupes.add(finalname)
		
		extensions.append({'name': finalname, 'original': orig, 'type': typ})
	
	data = {
		'filename': 'FHIRSearchParam+Params.swift',
		'info': info,
		'extensions': extensions,
		'in_profiles': in_profiles,
		'dupes': dupes,
	}
	render(data, 'template-searchparams.swift')


def render(data, template):
	""" Render the given class data using the given Jinja2 template, writing
	the output into 'Models'.
	"""
	assert(os.path.exists(template))
	template = jinjaenv.get_template(template)
	
	if 'filename' in data:
		filename = data['filename']
	else:
		filename = data['info']['main'] + '.swift'
	
	with open(os.path.join('..', 'Models', filename), 'w') as handle:
		print('-->  Writing {}'.format(filename))
		handle.write(template.render(data))


def _wrap(text):
	""" Wrap text to a maximum line width.
	"""
	if text is None:
		return None
	lines = []
	for line in text.split("\r\n"):		# The spec uses "\r\n"
		if line:
			line = line.replace(u'\xa0', u' ')				# getting into the unicode trouble land when leaving this in place
			lines.extend(textwrap.wrap(line, width=110))
		else:
			lines.append('')
	
	return "\r\n".join(lines)


if '__main__' == __name__:
	
	# start from scratch?
	if len(sys.argv) > 1 and '-f' == sys.argv[1]:
		if os.path.isdir(cache):
			os.rmdir(cache)
	
	# download spec if needed and extract
	path_spec = os.path.join(cache, os.path.split(url_spec)[1])
	expanded_spec = os.path.dirname(path_spec)

	if not os.path.exists(path_spec):
		if not os.path.isdir(cache):
			os.mkdir(cache)
		download(url_spec, path_spec)
		expand(path_spec, expanded_spec)

	# parse
	parse(os.path.join(expanded_spec, 'site'))


