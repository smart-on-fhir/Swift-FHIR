//
//  FamilyHistoryTests.swift
//  FamilyHistoryTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class FamilyHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> FamilyHistory? {
		let json = readJSONFile(filename)
		let instance = FamilyHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyHistory1() {
		let inst = instantiateFrom("familyhistory-example-mother.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
	
		XCTAssertEqual(inst!.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "190372001")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.text!, "Diabetes Mellitus")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "brother")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
	}
	
	func testFamilyHistory2() {
		let inst = instantiateFrom("familyhistory-example-mother.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
	
		XCTAssertEqual(inst!.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "190372001")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.text!, "Diabetes Mellitus")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "brother")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
	}
	
	func testFamilyHistory3() {
		let inst = instantiateFrom("familyhistory-example-mother.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
	
		XCTAssertEqual(inst!.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "190372001")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![1].condition![0].type!.text!, "Diabetes Mellitus")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "brother")
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
	}
	
	func testFamilyHistory4() {
		let inst = instantiateFrom("familyhistory-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2011-03-18")!)
		XCTAssertEqual(inst!.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.relation![0].condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
	}
	
	func testFamilyHistory5() {
		let inst = instantiateFrom("familyhistory-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2011-03-18")!)
		XCTAssertEqual(inst!.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.relation![0].condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst!.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship")!)
	}
}
