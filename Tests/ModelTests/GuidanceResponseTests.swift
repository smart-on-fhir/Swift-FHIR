//
//  GuidanceResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRGuidanceResponse = Models.GuidanceResponse
#else
import SwiftFHIR
typealias SwiftFHIRGuidanceResponse = SwiftFHIR.GuidanceResponse
#endif


class GuidanceResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRGuidanceResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRGuidanceResponse {
		return try SwiftFHIRGuidanceResponse(json: json)
	}
	
	func testGuidanceResponse1() {
		do {
			let instance = try runGuidanceResponse1()
			try runGuidanceResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test GuidanceResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGuidanceResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGuidanceResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "guidanceresponse-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.module?.reference, "ServiceDefinition/example")
		XCTAssertEqual(inst.status, GuidanceResponseStatus(rawValue: "success")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
