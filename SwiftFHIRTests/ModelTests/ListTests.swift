//
//  ListTests.swift
//  ListTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class ListTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> List? {
		let json = readJSONFile(filename)
		let instance = List(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testList1() {
		let inst = instantiateFrom("list-example-empty.json")
		XCTAssertNotNil(inst, "Must have instantiated a List instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "182836005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.text!, "Medication Review")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-11-26T07:30:23+11:00")!)	
		XCTAssertEqual(inst!.emptyReason!.coding![0].code!, "nil known")	
		XCTAssertEqual(inst!.emptyReason!.coding![0].display!, "Nil Known")
		XCTAssertEqual(inst!.emptyReason!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/special-values"))	
		XCTAssertEqual(inst!.emptyReason!.text!, "The patient is not on any medications")	
		XCTAssertEqual(inst!.mode!, "snapshot")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>The patient is not on any medications</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testList2() {
		let inst = instantiateFrom("list-example-medlist.json")
		XCTAssertNotNil(inst, "Must have instantiated a List instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "182836005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.text!, "Medication Review")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-11-20T23:10:23+11:00")!)	
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].code!, "02")	
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].display!, "Prescribed")
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].system!, NSURL(string: "http://nehta.gov.au/codes/medications/changetype"))
		XCTAssertTrue(inst!.entry![1].deleted!)	
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].code!, "02")	
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].display!, "Cancelled")
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].system!, NSURL(string: "http://nehta.gov.au/codes/medications/changetype"))	
		XCTAssertEqual(inst!.mode!, "changes")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>The patient is not on any medications</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
