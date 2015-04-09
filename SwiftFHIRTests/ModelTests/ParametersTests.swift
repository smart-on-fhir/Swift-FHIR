//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ParametersTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Parameters {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Parameters {
		let instance = Parameters(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testParameters1() {
		let instance = testParameters1_impl()
		testParameters1_impl(json: instance.asJSON())
	}
	
	func testParameters1_impl(json: FHIRJSON? = nil) -> Parameters {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.parameter![0].name!, "start")
		XCTAssertEqual(inst.parameter![0].valueDate!.description, "2010-01-01")
		XCTAssertEqual(inst.parameter![1].name!, "end")
		
		return inst
	}
}
