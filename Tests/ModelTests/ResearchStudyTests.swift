//
//  ResearchStudyTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ResearchStudyTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ResearchStudy {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ResearchStudy {
		return try SwiftFHIR.ResearchStudy(json: json)
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
	func runResearchStudy1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ResearchStudy {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "researchstudy-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, ResearchStudyStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
