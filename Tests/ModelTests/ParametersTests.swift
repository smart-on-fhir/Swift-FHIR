//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRParameters = Models.Parameters
#else
import SwiftFHIR
typealias SwiftFHIRParameters = SwiftFHIR.Parameters
#endif


class ParametersTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRParameters {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRParameters {
		return try SwiftFHIRParameters(json: json)
	}
	
	func testParameters1() {
		do {
			let instance = try runParameters1()
			try runParameters1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Parameters successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runParameters1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRParameters {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "parameters-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.parameter?[0].name, "start")
		XCTAssertEqual(inst.parameter?[0].valueDate?.description, "2010-01-01")
		XCTAssertEqual(inst.parameter?[1].name, "end")
		
		return inst
	}
}
