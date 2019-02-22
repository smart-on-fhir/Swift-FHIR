//
//  RequestGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-kdn5-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].valueInteger, 8)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].id, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].resource?.reference, "#1111")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].textEquivalent, "Gemcitabine 1250 mg/m² IV over 30 minutes on days 1 and 8")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].url, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].id, "action-2")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].actionId, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "concurrent-with-start")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].resource?.reference, "#2222")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].textEquivalent, "CARBOplatin AUC 5 IV over 30 minutes on Day 1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].id, "cycle-definition-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].textEquivalent, "21-day cycle for 6 cycles")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.count, 6)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.duration, "21")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.durationUnit, "d")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "sentence-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.author?.reference, "Practitioner/1")
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-06T17:31:00Z")
		XCTAssertEqual(inst.contained?[0].id, "1111")
		XCTAssertEqual(inst.contained?[1].id, "2222")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "kdn5-example")
		XCTAssertEqual(inst.identifier?[0].value, "requestgroup-kdn5")
		XCTAssertEqual(inst.instantiatesCanonical?[0].absoluteString, "PlanDefinition/KDN5")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Administer gemcitabine and carboplatin.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRequestGroup2() {
		do {
			let instance = try runRequestGroup2()
			try runRequestGroup2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RequestGroup successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRequestGroup2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRequestGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].description_fhir, "Administer medication 1")
		XCTAssertEqual(inst.action?[0].action?[0].id, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[0].resource?.reference, "#medicationrequest-1")
		XCTAssertEqual(inst.action?[0].action?[0].type?.coding?[0].code, "create")
		XCTAssertEqual(inst.action?[0].action?[1].description_fhir, "Administer medication 2")
		XCTAssertEqual(inst.action?[0].action?[1].id, "medication-action-2")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].actionId, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.unit, "h")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.value, "1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "after-end")!)
		XCTAssertEqual(inst.action?[0].action?[1].resource?.reference, "#medicationrequest-2")
		XCTAssertEqual(inst.action?[0].action?[1].type?.coding?[0].code, "create")
		XCTAssertEqual(inst.action?[0].cardinalityBehavior, ActionCardinalityBehavior(rawValue: "single")!)
		XCTAssertEqual(inst.action?[0].description_fhir, "Administer medications at the appropriate time")
		XCTAssertEqual(inst.action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].participant?[0].reference, "Practitioner/1")
		XCTAssertEqual(inst.action?[0].precheckBehavior, ActionPrecheckBehavior(rawValue: "yes")!)
		XCTAssertEqual(inst.action?[0].prefix, "1")
		XCTAssertEqual(inst.action?[0].requiredBehavior, ActionRequiredBehavior(rawValue: "must")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.action?[0].textEquivalent, "Administer medication 1, followed an hour later by medication 2")
		XCTAssertEqual(inst.action?[0].timingDateTime?.description, "2017-03-06T19:00:00Z")
		XCTAssertEqual(inst.action?[0].title, "Administer Medications")
		XCTAssertEqual(inst.author?.reference, "Practitioner/1")
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-06T17:31:00Z")
		XCTAssertEqual(inst.contained?[0].id, "medicationrequest-1")
		XCTAssertEqual(inst.contained?[1].id, "medicationrequest-2")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http://example.org/treatment-group")
		XCTAssertEqual(inst.groupIdentifier?.value, "00001")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "requestgroup-1")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "plan")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.note?[0].text, "Additional notes about the request group")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?[0].text, "Treatment")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example RequestGroup illustrating related actions to administer medications in sequence with time delay.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
