//
//  ImmunizationTests.swift
//  ImmunizationTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
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
		let inst = instantiateFrom("immunization-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Immunization instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-01-10")!)
		XCTAssertEqual(inst!.expirationDate!, NSDate.dateFromISOString("2015-02-15")!)	
		XCTAssertEqual(inst!.lotNumber!, "AAJN11K")	
		XCTAssertEqual(inst!.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst!.refusedIndicator!)
		XCTAssertFalse(inst!.reported!)	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>Authored by Joginder Madra</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.vaccineType!.coding![0].code!, "396427003")
	}
}
