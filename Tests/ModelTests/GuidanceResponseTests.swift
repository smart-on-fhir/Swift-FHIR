//
//  GuidanceResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.contained?[0].id, "outputParameters1")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.identifier?[0].value, "guidanceResponse1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.moduleUri?.absoluteString, "http://someguidelineprovider.org/radiology-appropriateness-guidelines.html")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2017-03-10T16:02:00Z")
		XCTAssertEqual(inst.outputParameters?.reference, "#outputParameters1")
		XCTAssertEqual(inst.performer?.reference, "Device/software")
		XCTAssertEqual(inst.reasonCode?[0].text, "Guideline Appropriate Ordering Assessment")
		XCTAssertEqual(inst.requestIdentifier?.system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.requestIdentifier?.value, "guidanceRequest1")
		XCTAssertEqual(inst.status, GuidanceResponseStatus(rawValue: "success")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
