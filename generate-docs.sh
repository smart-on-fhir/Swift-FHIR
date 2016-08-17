#!/bin/bash
#
#  Build documentation using jazzy:
#    [sudo] gem install jazzy

jazzy \
	-a "SMART Health IT" \
	-u "http://www.smarthealthit.org" \
	-m "SwiftFHIR" \
	-g "https://github.com/smart-on-fhir/Swift-FHIR" \
	-r "http://smart-on-fhir.github.io/Swift-FHIR" \
	-o "docs" \
	--module-version "2.8"
