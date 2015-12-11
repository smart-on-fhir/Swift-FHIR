//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ParametersTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Parameters {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Parameters {
		let instance = Parameters(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testParameters1() {
		let instance = try? runParameters1()
		XCTAssertNotNil(instance, "Must instantiate Parameters")
		if let instance = instance {
			try! runParameters1(instance.asJSON())
		}
	}
	
	func runParameters1(json: FHIRJSON? = nil) throws -> Parameters {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.parameter![0].name!, "start")
		XCTAssertEqual(inst.parameter![0].valueDate!.description, "2010-01-01")
		XCTAssertEqual(inst.parameter![1].name!, "end")
		
		return inst
	}
}
