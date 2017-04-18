#!/bin/bash
#
#  Generate Swift classes from FHIR spec

if [ ! -e fhir-parser ]; then
	git submodule update --init
fi

pip3 install -r generator-requirements.txt

# always copy our mappings and settings, then run the generator
cp fhir-parser-resources/mappings.py fhir-parser/mappings.py
cp fhir-parser-resources/settings.py fhir-parser/settings.py
cd fhir-parser
pip3 install -r requirements.txt
./generate.py $1 $2
cd ..
