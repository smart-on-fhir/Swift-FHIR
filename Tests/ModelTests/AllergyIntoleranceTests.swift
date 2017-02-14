//
//  AllergyIntoleranceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRAllergyIntolerance = Models.AllergyIntolerance
#else
import SwiftFHIR
typealias SwiftFHIRAllergyIntolerance = SwiftFHIR.AllergyIntolerance
#endif


class AllergyIntoleranceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRAllergyIntolerance {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRAllergyIntolerance {
		return try SwiftFHIRAllergyIntolerance(json: json)
	}
	
	func testAllergyIntolerance1() {
		do {
			let instance = try runAllergyIntolerance1()
			try runAllergyIntolerance1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test AllergyIntolerance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAllergyIntolerance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAllergyIntolerance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "allergyintolerance-example.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2014-10-09T14:58:00+11:00")
		XCTAssertEqual(inst.asserter?.reference, "Patient/example")
		XCTAssertEqual(inst.category?[0], AllergyIntoleranceCategory(rawValue: "food")!)
		XCTAssertEqual(inst.clinicalStatus, AllergyIntoleranceClinicalStatus(rawValue: "active")!)
		XCTAssertEqual(inst.code?.coding?[0].code, "227493005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Cashew nuts")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.criticality, AllergyIntoleranceCriticality(rawValue: "high")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/ids/patients/risks")
		XCTAssertEqual(inst.identifier?[0].value, "49476534")
		XCTAssertEqual(inst.lastOccurrence?.description, "2012-06")
		XCTAssertEqual(inst.note?[0].text, "The criticality is high becasue of the observed anaphylactic reaction when challenged with cashew extract.")
		XCTAssertEqual(inst.onsetDateTime?.description, "2004")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.reaction?[0].certainty, AllergyIntoleranceCertainty(rawValue: "confirmed")!)
		XCTAssertEqual(inst.reaction?[0].description_fhir, "Challenge Protocol. Severe reaction to subcutaneous cashew extract. Epinephrine administered")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].code, "34206005")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].display, "Subcutaneous route")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].code, "39579001")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].display, "Anaphylactic reaction")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[0].onset?.description, "2012-06-12")
		XCTAssertEqual(inst.reaction?[0].severity, AllergyIntoleranceSeverity(rawValue: "severe")!)
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].code, "1160593")
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].display, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].system?.absoluteString, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.reaction?[1].certainty, AllergyIntoleranceCertainty(rawValue: "likely")!)
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].code, "64305001")
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].display, "Urticaria")
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[1].note?[0].text, "The patient reports that the onset of urticaria was within 15 minutes of eating cashews.")
		XCTAssertEqual(inst.reaction?[1].onset?.description, "2004")
		XCTAssertEqual(inst.reaction?[1].severity, AllergyIntoleranceSeverity(rawValue: "moderate")!)
		XCTAssertEqual(inst.recorder?.reference, "Practitioner/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, AllergyIntoleranceType(rawValue: "allergy")!)
		XCTAssertEqual(inst.verificationStatus, AllergyIntoleranceVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
}
