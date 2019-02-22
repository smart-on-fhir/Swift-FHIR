//
//  ResearchStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRResearchStudy = Models.ResearchStudy
#else
import SwiftFHIR
typealias SwiftFHIRResearchStudy = SwiftFHIR.ResearchStudy
#endif


class ResearchStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRResearchStudy {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRResearchStudy {
		return try SwiftFHIRResearchStudy(json: json)
	}
	
	func testResearchStudy1() {
		do {
			let instance = try runResearchStudy1()
			try runResearchStudy1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ResearchStudy successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runResearchStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRResearchStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "researchstudy-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ResearchStudyStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
