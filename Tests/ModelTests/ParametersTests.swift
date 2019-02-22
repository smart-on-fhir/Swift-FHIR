//
//  ParametersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.parameter?[0].name, "exact")
		XCTAssertEqual(inst.parameter?[0].valueBoolean, true)
		XCTAssertEqual(inst.parameter?[1].name, "property")
		XCTAssertEqual(inst.parameter?[1].part?[0].name, "code")
		XCTAssertEqual(inst.parameter?[1].part?[0].valueCode, "focus")
		XCTAssertEqual(inst.parameter?[1].part?[1].name, "value")
		XCTAssertEqual(inst.parameter?[1].part?[1].valueCode, "top")
		XCTAssertEqual(inst.parameter?[2].name, "patient")
		XCTAssertEqual(inst.parameter?[2].resource?.id, "example")
		
		return inst
	}
}
