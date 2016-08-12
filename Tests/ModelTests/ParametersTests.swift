//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ParametersTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Parameters {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Parameters {
		let instance = Parameters(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testParameters1() {
		do {
			let instance = try runParameters1()
			try runParameters1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Parameters successfully, but threw")
		}
	}
	
	func runParameters1(json: FHIRJSON? = nil) throws -> Parameters {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.parameter![0].name, "start")
		XCTAssertEqual(inst.parameter![0].valueDate?.description, "2010-01-01")
		XCTAssertEqual(inst.parameter![1].name, "end")
		
		return inst
	}
}
