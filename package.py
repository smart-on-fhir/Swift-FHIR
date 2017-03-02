#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
#  This script will dump a list of `Element` and `Resource` names that need to
#  be present if the provided resources are to be included in a build

# set to `True` to also require resources that appear in references
_require_referenced_resources = True


import io
import sys
import json


def read_dependencies():
	with io.open('dependencies.json', 'r', encoding='utf-8') as h:
		return json.load(h)

def deps_of(name, dependency_graph, include_references, global_needs=None):
	if not name:
		return None
	if not dependency_graph:
		raise Exception('Must provide dependency_graph to `deps_of`')
	
	my_needs = dependency_graph.get(name, {}).get('dependencies')
	if include_references:
		ref_needs = dependency_graph.get(name, {}).get('references')
		if ref_needs is not None and len(ref_needs) > 0:
			if my_needs is None:
				my_needs = []
			my_needs.extend(ref_needs)
	if my_needs is None or 0 == len(my_needs):
		return None
	
	needs = global_needs if global_needs is not None else set()
	for need in my_needs:
		if need in needs:
			continue
		needs.add(need)
		
		# recurse dependencies, providing what's already needed in order to
		# prevent infinite recursion
		subneeds = deps_of(need, dependency_graph, include_references, needs)
		if subneeds is not None:
			needs.update(subneeds)
	return needs

def dump_graph(needs):
	needlist = sorted(needs)
	print()
	print(needlist)

def graph_for(resources, include_references):
	if resources is None or 0 == len(resources):
		print('-->  No resource names provided, not creating dependency graph')
		return
	
	deps = read_dependencies()
	needs = set()
	for resource in resources:
		res_needs  = deps_of(resource, deps, include_references)
		if res_needs is not None:
			needs.update(res_needs)
	dump_graph(needs)


if '__main__' == __name__:
	graph_for(sys.argv[1:], _require_referenced_resources)
