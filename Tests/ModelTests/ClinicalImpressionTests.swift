//
//  ClinicalImpressionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ClinicalImpressionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ClinicalImpression {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ClinicalImpression {
		return try SwiftFHIR.ClinicalImpression(json: json)
	}
	
	func testClinicalImpression1() {
		do {
			let instance = try runClinicalImpression1()
			try runClinicalImpression1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClinicalImpression successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClinicalImpression1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ClinicalImpression {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "clinicalimpression-example.json")
		
		XCTAssertEqual(inst.assessor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.date?.description, "2014-12-06T22:33:00+11:00")
		XCTAssertEqual(inst.description_fhir, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst.finding?[0].itemCodeableConcept?.coding?[0].code, "850.0")
		XCTAssertEqual(inst.finding?[0].itemCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.investigation?[0].code?.text, "Initial Examination")
		XCTAssertEqual(inst.investigation?[0].item?[0].display, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst.investigation?[0].item?[1].display, "decreased level of consciousness")
		XCTAssertEqual(inst.investigation?[0].item?[2].display, "disoriented to time and place")
		XCTAssertEqual(inst.investigation?[0].item?[3].display, "restless")
		XCTAssertEqual(inst.problem?[0].display, "MVA")
		XCTAssertEqual(inst.status, ClinicalImpressionStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.summary, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
