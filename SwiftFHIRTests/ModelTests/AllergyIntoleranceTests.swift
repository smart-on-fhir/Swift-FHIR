//
//  AllergyIntoleranceTests.swift
//  AllergyIntoleranceTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-15.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class AllergyIntoleranceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> AllergyIntolerance? {
		let json = readJSONFile(filename)
		let instance = AllergyIntolerance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAllergyIntolerance1() {
		let inst = instantiateFrom("allergyintolerance-example-dust-f201.json")
		XCTAssertNotNil(inst, "Must have instantiated a AllergyIntolerance instance")
		
		XCTAssertEqual(inst!.criticality!, "medium")	
		XCTAssertEqual(inst!.identifier![0].label!, "House dust allergy")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.identifier![0].value!, "232349006")
		XCTAssertEqual(inst!.recordedDate!, NSDate.dateFromISOString("2013-01-28")!)	
		XCTAssertEqual(inst!.recorder!.reference!, "Practitioner/f201")	
		XCTAssertEqual(inst!.sensitivityType!, "allergy")	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.substance!.display!, "House dust allergen")	
		XCTAssertEqual(inst!.substance!.reference!, "Substance/f201")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: House dust allergy = 232349006\n      </p>\n      <p>\n        <b>criticality</b>: medium\n      </p>\n      <p>\n        <b>sensitivityType</b>: allergy\n      </p>\n      <p>\n        <b>recordedDate</b>: 28-Jan 2013\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>recorder</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>substance</b>: House dust allergen\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
