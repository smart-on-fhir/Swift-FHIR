//
//  ConditionTests.swift
//  ConditionTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ConditionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Condition? {
		let json = readJSONFile(filename)
		let instance = Condition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCondition1() {
		let inst = instantiateFrom("cond-uslab-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "39065001")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Increased lead level")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.text!, "Increased lead level")
		XCTAssertEqual(inst!.notes!, "Elevated lead levels on screening")
		XCTAssertEqual(inst!.status!, "provisional")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
	}
	
	func testCondition2() {
		let inst = instantiateFrom("cond-uslab-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "39065001")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Increased lead level")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.text!, "Increased lead level")
		XCTAssertEqual(inst!.notes!, "Elevated lead levels on screening")
		XCTAssertEqual(inst!.status!, "provisional")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
	}
	
	func testCondition3() {
		let inst = instantiateFrom("cond-uslab-example1.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "39065001")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Increased lead level")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.text!, "Increased lead level")
		XCTAssertEqual(inst!.notes!, "Elevated lead levels on screening")
		XCTAssertEqual(inst!.status!, "provisional")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
	}
	
	func testCondition4() {
		let inst = instantiateFrom("cond-uslab-example2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "R78.71")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Abnormal lead level in blood")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://www.cms.gov/Medicare/Coding/ICD10/index.html")!)
		XCTAssertEqual(inst!.status!, "provisional")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
	}
	
	func testCondition5() {
		let inst = instantiateFrom("cond-uslab-example2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "R78.71")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Abnormal lead level in blood")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://www.cms.gov/Medicare/Coding/ICD10/index.html")!)
		XCTAssertEqual(inst!.status!, "provisional")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
	}
	
	func testCondition6() {
		let inst = instantiateFrom("condition-example-f001-heart.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2011-10-05")!)
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "40768004")
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].detail!, "heart structure")
		XCTAssertEqual(inst!.onsetDateTime!, NSDate.dateFromISOString("2011-08-05")!)
		XCTAssertEqual(inst!.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testCondition7() {
		let inst = instantiateFrom("condition-example-f001-heart.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2011-10-05")!)
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "40768004")
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].detail!, "heart structure")
		XCTAssertEqual(inst!.onsetDateTime!, NSDate.dateFromISOString("2011-08-05")!)
		XCTAssertEqual(inst!.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testCondition8() {
		let inst = instantiateFrom("condition-example-f002-lung.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "254637007")
		XCTAssertEqual(inst!.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-06-03")!)
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "169069000")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "51185008")
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].detail!, "lung")
		XCTAssertEqual(inst!.onsetDateTime!, NSDate.dateFromISOString("2011-05-05")!)
		XCTAssertEqual(inst!.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.stage!.summary!.coding![0].code!, "258219007")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testCondition9() {
		let inst = instantiateFrom("condition-example-f002-lung.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "254637007")
		XCTAssertEqual(inst!.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-06-03")!)
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "169069000")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "51185008")
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].detail!, "lung")
		XCTAssertEqual(inst!.onsetDateTime!, NSDate.dateFromISOString("2011-05-05")!)
		XCTAssertEqual(inst!.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.stage!.summary!.coding![0].code!, "258219007")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testCondition10() {
		let inst = instantiateFrom("condition-example-f003-abscess.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.code!.coding![0].code!, "18099001")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-02-20")!)
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "169068008")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "CT of neck")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "280193007")
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Entire retropharyngeal area")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.onsetDateTime!, NSDate.dateFromISOString("2012-02-27")!)
		XCTAssertEqual(inst!.severity!.coding![0].code!, "371923003")
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Mild to moderate")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.status!, "confirmed")
		XCTAssertEqual(inst!.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
}
