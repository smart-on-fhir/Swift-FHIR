//
//  ResearchSubjectTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRResearchSubject = Models.ResearchSubject
#else
import SwiftFHIR
typealias SwiftFHIRResearchSubject = SwiftFHIR.ResearchSubject
#endif


class ResearchSubjectTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRResearchSubject {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRResearchSubject {
		return try SwiftFHIRResearchSubject(json: json)
	}
	
	func testResearchSubject1() {
		do {
			let instance = try runResearchSubject1()
			try runResearchSubject1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ResearchSubject successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runResearchSubject1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRResearchSubject {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "researchsubject-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://example.org/studysubjectids")
		XCTAssertEqual(inst.identifier?.type?.text, "Subject id")
		XCTAssertEqual(inst.identifier?.value, "123")
		XCTAssertEqual(inst.individual?.reference, "Patient/example")
		XCTAssertEqual(inst.status, ResearchSubjectStatus(rawValue: "candidate")!)
		XCTAssertEqual(inst.study?.reference, "ResearchStudy/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
