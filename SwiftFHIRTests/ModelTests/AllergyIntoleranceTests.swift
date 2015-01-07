//
//  AllergyIntoleranceTests.swift
//  AllergyIntoleranceTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

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
		let inst = instantiateFrom("allergyintolerance-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a AllergyIntolerance instance")
	
		XCTAssertEqual(inst!.category!, "food")
		XCTAssertEqual(inst!.criticality!, "high")
		XCTAssertEqual(inst!.event![0].certainty!, "confirmed")
		XCTAssertEqual(inst!.event![0].description!, "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].code!, "39579001")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].display!, "Anaphylactic reaction")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![0].onset!, NSDate.dateFromISOString("2012-06-12")!)
		XCTAssertEqual(inst!.event![0].severity!, "severe")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].code!, "C3214954")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].display!, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].system!, NSURL(string: "http://www.nlm.nih.gov/research/umls/rxnorm")!)
		XCTAssertEqual(inst!.event![1].certainty!, "likely")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].code!, "64305001")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].display!, "Urticaria")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![1].onset!, NSDate.dateFromISOString("2004")!)
		XCTAssertEqual(inst!.event![1].severity!, "moderate")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://acme.com/ids/patients/risks")!)
		XCTAssertEqual(inst!.identifier![0].value!, "49476534")
		XCTAssertEqual(inst!.lastOccurence!, NSDate.dateFromISOString("2012-06")!)
		XCTAssertEqual(inst!.recordedDate!, NSDate.dateFromISOString("2014-10-09T14:58:00+11:00")!)
		XCTAssertEqual(inst!.recorder!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substance!.coding![0].code!, "227493005")
		XCTAssertEqual(inst!.substance!.coding![0].display!, "Cashew nuts")
		XCTAssertEqual(inst!.substance!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.type!, "immune")
	}
	
	func testAllergyIntolerance2() {
		let inst = instantiateFrom("allergyintolerance-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a AllergyIntolerance instance")
	
		XCTAssertEqual(inst!.category!, "food")
		XCTAssertEqual(inst!.criticality!, "high")
		XCTAssertEqual(inst!.event![0].certainty!, "confirmed")
		XCTAssertEqual(inst!.event![0].description!, "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].code!, "39579001")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].display!, "Anaphylactic reaction")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![0].onset!, NSDate.dateFromISOString("2012-06-12")!)
		XCTAssertEqual(inst!.event![0].severity!, "severe")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].code!, "C3214954")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].display!, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].system!, NSURL(string: "http://www.nlm.nih.gov/research/umls/rxnorm")!)
		XCTAssertEqual(inst!.event![1].certainty!, "likely")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].code!, "64305001")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].display!, "Urticaria")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![1].onset!, NSDate.dateFromISOString("2004")!)
		XCTAssertEqual(inst!.event![1].severity!, "moderate")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://acme.com/ids/patients/risks")!)
		XCTAssertEqual(inst!.identifier![0].value!, "49476534")
		XCTAssertEqual(inst!.lastOccurence!, NSDate.dateFromISOString("2012-06")!)
		XCTAssertEqual(inst!.recordedDate!, NSDate.dateFromISOString("2014-10-09T14:58:00+11:00")!)
		XCTAssertEqual(inst!.recorder!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substance!.coding![0].code!, "227493005")
		XCTAssertEqual(inst!.substance!.coding![0].display!, "Cashew nuts")
		XCTAssertEqual(inst!.substance!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.type!, "immune")
	}
	
	func testAllergyIntolerance3() {
		let inst = instantiateFrom("allergyintolerance-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a AllergyIntolerance instance")
	
		XCTAssertEqual(inst!.category!, "food")
		XCTAssertEqual(inst!.criticality!, "high")
		XCTAssertEqual(inst!.event![0].certainty!, "confirmed")
		XCTAssertEqual(inst!.event![0].description!, "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].code!, "39579001")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].display!, "Anaphylactic reaction")
		XCTAssertEqual(inst!.event![0].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![0].onset!, NSDate.dateFromISOString("2012-06-12")!)
		XCTAssertEqual(inst!.event![0].severity!, "severe")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].code!, "C3214954")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].display!, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst!.event![0].substance!.coding![0].system!, NSURL(string: "http://www.nlm.nih.gov/research/umls/rxnorm")!)
		XCTAssertEqual(inst!.event![1].certainty!, "likely")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].code!, "64305001")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].display!, "Urticaria")
		XCTAssertEqual(inst!.event![1].manifestation![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.event![1].onset!, NSDate.dateFromISOString("2004")!)
		XCTAssertEqual(inst!.event![1].severity!, "moderate")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://acme.com/ids/patients/risks")!)
		XCTAssertEqual(inst!.identifier![0].value!, "49476534")
		XCTAssertEqual(inst!.lastOccurence!, NSDate.dateFromISOString("2012-06")!)
		XCTAssertEqual(inst!.recordedDate!, NSDate.dateFromISOString("2014-10-09T14:58:00+11:00")!)
		XCTAssertEqual(inst!.recorder!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substance!.coding![0].code!, "227493005")
		XCTAssertEqual(inst!.substance!.coding![0].display!, "Cashew nuts")
		XCTAssertEqual(inst!.substance!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.type!, "immune")
	}
}
