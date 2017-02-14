#!/bin/bash
#
#  Generate Swift classes from FHIR spec

if [ ! -e fhir-parser ]; then
	git submodule update --init
fi

# always copy our mappings and settings, then run the generator
cp fhir-parser-resources/mappings.py fhir-parser/mappings.py
cp fhir-parser-resources/settings.py fhir-parser/settings.py
cd fhir-parser
./generate.py $1 $2
cd ..
