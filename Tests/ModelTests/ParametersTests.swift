//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ParametersTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Parameters {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Parameters {
		return try SwiftFHIR.Parameters(json: json)
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
	
	@discardableResult
	func runParameters1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Parameters {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.parameter?[0].name, "start")
		XCTAssertEqual(inst.parameter?[0].valueDate?.description, "2010-01-01")
		XCTAssertEqual(inst.parameter?[1].name, "end")
		
		return inst
	}
}
