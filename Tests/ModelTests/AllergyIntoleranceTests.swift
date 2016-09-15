//
//  AllergyIntoleranceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AllergyIntoleranceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.AllergyIntolerance {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.AllergyIntolerance {
		let instance = SwiftFHIR.AllergyIntolerance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAllergyIntolerance1() {
		do {
			let instance = try runAllergyIntolerance1()
			try runAllergyIntolerance1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AllergyIntolerance successfully, but threw")
		}
	}
	
	@discardableResult
	func runAllergyIntolerance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AllergyIntolerance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "allergyintolerance-example.json")
		
		XCTAssertEqual(inst.attestedDate?.description, "2014-10-09T14:58:00+11:00")
		XCTAssertEqual(inst.category, "food")
		XCTAssertEqual(inst.code?.coding?[0].code, "227493005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Cashew nuts")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.criticality, "high")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/ids/patients/risks")
		XCTAssertEqual(inst.identifier?[0].value, "49476534")
		XCTAssertEqual(inst.lastOccurrence?.description, "2012-06")
		XCTAssertEqual(inst.note?[0].text, "The criticality is high becasue of the observed anaphylactic reaction when challenged with cashew extract.")
		XCTAssertEqual(inst.onset?.description, "2004")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.reaction?[0].certainty, "confirmed")
		XCTAssertEqual(inst.reaction?[0].description_fhir, "Challenge Protocol. Severe reaction to subcutaneous cashew extract. Epinephrine administered")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].code, "34206005")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].display, "Subcutaneous route")
		XCTAssertEqual(inst.reaction?[0].exposureRoute?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].code, "39579001")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].display, "Anaphylactic reaction")
		XCTAssertEqual(inst.reaction?[0].manifestation?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[0].onset?.description, "2012-06-12")
		XCTAssertEqual(inst.reaction?[0].severity, "severe")
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].code, "1160593")
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].display, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst.reaction?[0].substance?.coding?[0].system?.absoluteString, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.reaction?[1].certainty, "likely")
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].code, "64305001")
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].display, "Urticaria")
		XCTAssertEqual(inst.reaction?[1].manifestation?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reaction?[1].note?[0].text, "The patient reports that the onset of urticaria was within 15 minutes of eating cashews.")
		XCTAssertEqual(inst.reaction?[1].onset?.description, "2004")
		XCTAssertEqual(inst.reaction?[1].severity, "moderate")
		XCTAssertEqual(inst.recorder?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reporter?.reference, "Patient/example")
		XCTAssertEqual(inst.status, "active-confirmed")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "allergy")
		
		return inst
	}
}
