#!/bin/bash
#
#  Generate Swift classes from FHIR spec

if [ ! -e fhir-parser ]; then
	git submodule update --init
fi

# always copy our settings, then run the generator
cd fhir-parser
cp ../generator-settings.py ./settings.py
./generate.py $1
cd ..
