//
//  ActivityDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ActivityDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ActivityDefinition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ActivityDefinition {
		let instance = SwiftFHIR.ActivityDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testActivityDefinition1() {
		do {
			let instance = try runActivityDefinition1()
			try runActivityDefinition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runActivityDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ActivityDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-example.json")
		
		XCTAssertEqual(inst.category, "referral")
		XCTAssertEqual(inst.code?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.description_fhir, "refer to primary care mental-health integrated care program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participantType?[0], "practitioner")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Referral definition</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
