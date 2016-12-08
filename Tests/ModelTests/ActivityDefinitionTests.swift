//
//  ActivityDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-08.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ActivityDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ActivityDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ActivityDefinition {
		return try SwiftFHIR.ActivityDefinition(json: json)
	}
	
	func testActivityDefinition1() {
		do {
			let instance = try runActivityDefinition1()
			try runActivityDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-example.json")
		
		XCTAssertEqual(inst.category, ActivityDefinitionCategory(rawValue: "referral")!)
		XCTAssertEqual(inst.code?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.description_fhir, "refer to primary care mental-health integrated care program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participantType?[0], PlanActionParticipantType(rawValue: "practitioner")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Referral definition</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
