//
//  ImmunizationTests.swift
//  ImmunizationTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ImmunizationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Immunization? {
		let json = readJSONFile(filename)
		let instance = Immunization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunization1() {
		let inst = instantiateFrom("immunization-example-refused.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/ActReason")!)
		XCTAssertTrue(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
	
	func testImmunization2() {
		let inst = instantiateFrom("immunization-example-refused.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/ActReason")!)
		XCTAssertTrue(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
	
	func testImmunization3() {
		let inst = instantiateFrom("immunization-example-refused.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst!.explanation!.refusalReason![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/ActReason")!)
		XCTAssertTrue(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
	
	func testImmunization4() {
		let inst = instantiateFrom("immunization-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.expirationDate!, NSDate.dateFromISOString("2015-02-15")!)
		XCTAssertEqual(inst!.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst!.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
	
	func testImmunization5() {
		let inst = instantiateFrom("immunization-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.expirationDate!, NSDate.dateFromISOString("2015-02-15")!)
		XCTAssertEqual(inst!.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst!.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
}
