//
//  ActivityDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRActivityDefinition = Models.ActivityDefinition
#else
import SwiftFHIR
typealias SwiftFHIRActivityDefinition = SwiftFHIR.ActivityDefinition
#endif


class ActivityDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRActivityDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRActivityDefinition {
		return try SwiftFHIRActivityDefinition(json: json)
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
	func runActivityDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Referral to service (procedure)")
		XCTAssertEqual(inst.description_fhir, "refer to primary care mental-health integrated care program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.kind, "ReferralRequest")
		XCTAssertEqual(inst.participant?[0].type, ActionParticipantType(rawValue: "practitioner")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testActivityDefinition2() {
		do {
			let instance = try runActivityDefinition2()
			try runActivityDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-medicationorder-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[1].id, "citalopramSubstance")
		XCTAssertEqual(inst.dosage?[0].doseQuantity?.unit, "{tbl}")
		XCTAssertEqual(inst.dosage?[0].doseQuantity?.value, "1")
		XCTAssertEqual(inst.dosage?[0].route?.coding?[0].code, "26643006")
		XCTAssertEqual(inst.dosage?[0].route?.coding?[0].display, "Oral route (qualifier value)")
		XCTAssertEqual(inst.dosage?[0].route?.text, "Oral route (qualifier value)")
		XCTAssertEqual(inst.dosage?[0].text, "1 tablet oral 1 time daily")
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.dynamicValue?[0].expression, "3")
		XCTAssertEqual(inst.dynamicValue?[0].path, "dispenseRequest.numberOfRepeatsAllowed")
		XCTAssertEqual(inst.dynamicValue?[1].expression, "30 '{tbl}'")
		XCTAssertEqual(inst.dynamicValue?[1].path, "dispenseRequest.quantity")
		XCTAssertEqual(inst.id, "citalopramPrescription")
		XCTAssertEqual(inst.kind, "MedicationRequest")
		XCTAssertEqual(inst.productReference?.reference, "#citalopramMedication")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
