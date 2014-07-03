#!/usr/bin/env python3
#
#  Download and parse FHIR resource definitions

import os.path
import glob
import json
import datetime
import textwrap
from jinja2 import Environment, PackageLoader

url_spec = 'http://hl7.org/documentcenter/public/standards/FHIR/fhir-spec.zip'
cache = 'downloads'

classmap = {
	'Structure': 'FHIRElement',
	'Resource': 'FHIRBaseResource',
	
	'boolean': 'Bool',
	'integer': 'Int',
	'string': 'String',
	'dateTime': 'NSDate'
}
skip_properties = [
	'extension',
	'modifierExtension'
]

jinjaenv = Environment(loader=PackageLoader('parse', '.'))


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
	""" Parse all JSON profile definitions found in the given expanded directory.
	"""
	assert(os.path.exists(path))
	
	# get FHIR version
	version = None
	with open(os.path.join(path, 'version.info'), 'r') as handle:
		text = handle.read()
		for line in text.split("\n"):
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
	for prof in glob.glob(os.path.join(path, '*.profile.json')):
		parse_profile(prof, info)


def parse_profile(path, info):
	""" Parse one profile file.
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
		return
	
	requirements = profile.get('requirements')
	structure = structure_arr[0]
	mainClass = structure['type']
	elements = structure.get('element', [])
	print('-->  Parsing {}'.format(mainClass))
	
	mapping = {}
	classes = []
	
	# loop properties
	curr_props = properties = []
	for element in elements:
		path = element['path']
		parts = path.split('.')
		classpath = '.'.join(parts[:-1]) if len(parts) > 1 else parts[0]
		name = parts[-1]
		
		if name in skip_properties:
			continue
		
		definition = element.get('definition')
		if definition is None:
			print('xx>  No definition for {}'.format(path))
			continue
		
		k = mapping.get(classpath)
		newklass = parse_elem(path, name, definition, k)
		
		if newklass is not None:
			mapping[newklass['path']] = newklass
			classes.append(newklass)
			
			# is this the resource description itself?
			if path == mainClass:
				newklass['formal'] = _wrap(requirements)
	
	info['mainClass'] = mainClass
	render({'info': info, 'classes': classes}, 'template-resource.swift')


def parse_elem(path, name, definition, klass):
	""" Parse one profile element (which will become a class property).
	"""
	short = definition['short']
	formal = definition['formal']
	if formal and short == formal[:-1]:		# formal adds a trailing period
		formal = None
	n_min = definition['min']
	n_max = definition['max']
	
	# determine property class(es)
	types = set()
	for tp in definition.get('type', []):
		types.add(tp['code'])
	
	# no type means this is an inline-defined subtype, create a class for it
	newklass = None
	if klass is None or 0 == len(types):
		className = ''.join(['{}{}'.format(s[:1].upper(), s[1:]) for s in path.split('.')])
		newklass = {
			'path': path,
			'className': className,
			'superclass': classmap.get(types.pop(), 'FHIRElement') if len(types) > 0 else 'FHIRElement',
			'short': _wrap(short),
			'formal': _wrap(formal),
			'properties': [],
			'nonoptional': []
		}
		
		if 0 == len(types):
			types.add(className)
	
	# add as properties to class
	for tp in types:
		myname = name
		if '[x]' in myname:
			myname = name.replace('[x]', '{}{}'.format(tp[:1].upper(), tp[1:]))
		prop = {
			'name': myname,
			'short': short,
			'className': classmap.get(tp, tp),
			'modArray': '[]' if '*' == n_max else '',
			'modOptional': '?' if int(n_min) < 1 else ''
		}
		
		if klass is not None:
			klass['properties'].append(prop)
			if 0 != int(n_min):
				klass['nonoptional'].append(prop)
	
	return newklass


def render(data, template):
	""" Render the given class data using the given Jinja2 template, writing
	the output into 'Models'.
	"""
	assert(os.path.exists(template))
	template = jinjaenv.get_template(template)
	
	filename = data['info']['mainClass'] + '.swift'
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
		lines.extend(textwrap.wrap(line, width=110))
	
	return "\r\n".join(lines)


if '__main__' == __name__:
	
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


