#!/bin/bash
#
#  Run our unit tests

if [ ! -e fhir-parser ]; then
	git submodule update --init
fi

# always copy our settings, then run the generator in dry-run mode
cd fhir-parser
cp ../fhir-parser-resources/settings.py ./settings.py
./generate.py $1 --load-only
cd ..

# run the tests
swift test
