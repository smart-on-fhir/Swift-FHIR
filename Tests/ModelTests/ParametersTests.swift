//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ParametersTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Parameters {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Parameters {
		let instance = SwiftFHIR.Parameters(json: json)
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
	
	@discardableResult
	func runParameters1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Parameters {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.parameter?[0].name, "start")
		XCTAssertEqual(inst.parameter?[0].valueDate?.description, "2010-01-01")
		XCTAssertEqual(inst.parameter?[1].name, "end")
		
		return inst
	}
}
