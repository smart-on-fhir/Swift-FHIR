//
//  RequestGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11599 on 2017-03-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRRequestGroup = Models.RequestGroup
#else
import SwiftFHIR
typealias SwiftFHIRRequestGroup = SwiftFHIR.RequestGroup
#endif


class RequestGroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRRequestGroup {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRRequestGroup {
		return try SwiftFHIRRequestGroup(json: json)
	}
	
	func testRequestGroup1() {
		do {
			let instance = try runRequestGroup1()
			try runRequestGroup1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RequestGroup successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRequestGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRequestGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].description_fhir, "Administer medication 1")
		XCTAssertEqual(inst.action?[0].action?[0].id, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[0].resource?.reference, "#medicationrequest-1")
		XCTAssertEqual(inst.action?[0].action?[0].type?.code, "create")
		XCTAssertEqual(inst.action?[0].action?[1].description_fhir, "Administer medication 2")
		XCTAssertEqual(inst.action?[0].action?[1].id, "medication-action-2")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].actionId, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.unit, "h")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.value, "1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "after-end")!)
		XCTAssertEqual(inst.action?[0].action?[1].resource?.reference, "#medicationrequest-2")
		XCTAssertEqual(inst.action?[0].action?[1].type?.code, "create")
		XCTAssertEqual(inst.action?[0].cardinalityBehavior, ActionCardinalityBehavior(rawValue: "single")!)
		XCTAssertEqual(inst.action?[0].description_fhir, "Administer medications at the appropriate time")
		XCTAssertEqual(inst.action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].label, "1")
		XCTAssertEqual(inst.action?[0].participant?[0].reference, "Practitioner/1")
		XCTAssertEqual(inst.action?[0].precheckBehavior, ActionPrecheckBehavior(rawValue: "yes")!)
		XCTAssertEqual(inst.action?[0].requiredBehavior, ActionRequiredBehavior(rawValue: "must")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.action?[0].textEquivalent, "Administer medication 1, followed an hour later by medication 2")
		XCTAssertEqual(inst.action?[0].timingDateTime?.description, "2017-03-06T19:00:00Z")
		XCTAssertEqual(inst.action?[0].title, "Administer Medications")
		XCTAssertEqual(inst.author?.reference, "Practitioner/1")
		XCTAssertEqual(inst.contained?[0].id, "medicationrequest-1")
		XCTAssertEqual(inst.contained?[1].id, "medicationrequest-2")
		XCTAssertEqual(inst.context?.reference, "Encounter/1")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.value, "requestgroup-1")
		XCTAssertEqual(inst.note?[0].text, "Additional notes about the request group")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2017-03-06T17:31:00Z")
		XCTAssertEqual(inst.reasonCodeableConcept?.text, "Treatment")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
