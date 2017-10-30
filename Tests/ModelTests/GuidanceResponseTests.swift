//
//  GuidanceResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRGuidanceResponse = SwiftFHIR.GuidanceResponse


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
		
		XCTAssertEqual(inst.contained?[0].id, "outputParameters1")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.identifier?.value, "guidanceResponse1")
		XCTAssertEqual(inst.module?.reference, "ServiceDefinition/example")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2017-03-10T16:02:00Z")
		XCTAssertEqual(inst.outputParameters?.reference, "#outputParameters1")
		XCTAssertEqual(inst.performer?.reference, "Device/software")
		XCTAssertEqual(inst.reasonCodeableConcept?.text, "Guideline Appropriate Ordering Assessment")
		XCTAssertEqual(inst.requestId, "guidanceRequest1")
		XCTAssertEqual(inst.status, GuidanceResponseStatus(rawValue: "success")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
