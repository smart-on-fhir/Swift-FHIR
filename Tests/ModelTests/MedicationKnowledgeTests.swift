//
//  MedicationKnowledgeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicationKnowledge = Models.MedicationKnowledge
#else
import SwiftFHIR
typealias SwiftFHIRMedicationKnowledge = SwiftFHIR.MedicationKnowledge
#endif


class MedicationKnowledgeTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicationKnowledge {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicationKnowledge {
		return try SwiftFHIRMedicationKnowledge(json: json)
	}
	
	func testMedicationKnowledge1() {
		do {
			let instance = try runMedicationKnowledge1()
			try runMedicationKnowledge1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicationKnowledge successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicationKnowledge1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicationKnowledge {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationknowledge-example.json")
		
		XCTAssertEqual(inst.amount?.unit, "mg/ml")
		XCTAssertEqual(inst.amount?.value, "50")
		XCTAssertEqual(inst.code?.coding?[0].code, "0069-2587-10")
		XCTAssertEqual(inst.code?.coding?[0].display, "Vancomycin Hydrochloride (VANCOMYCIN HYDROCHLORIDE)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/ndc")
		XCTAssertEqual(inst.contained?[0].id, "org4")
		XCTAssertEqual(inst.doseForm?.coding?[0].code, "385219001")
		XCTAssertEqual(inst.doseForm?.coding?[0].display, "Injection Solution (qualifier value)")
		XCTAssertEqual(inst.doseForm?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.manufacturer?.reference, "#org4")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, MedicationKnowledgeStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.synonym?[0], "Vancomycin Hydrochloride (VANCOMYCIN HYDROCHLORIDE)")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
