//
//  ListTests.swift
//  ListTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
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
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.code!.text!, "Medication Review")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-11-26T07:30:23+11:00")!)	
		XCTAssertEqual(inst!.emptyReason!.coding![0].code!, "nil known")	
		XCTAssertEqual(inst!.emptyReason!.coding![0].display!, "Nil Known")
		XCTAssertEqual(inst!.emptyReason!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/special-values")!)	
		XCTAssertEqual(inst!.emptyReason!.text!, "The patient is not on any medications")	
		XCTAssertEqual(inst!.mode!, "snapshot")	
		XCTAssertEqual(inst!.source!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>The patient is not on any medications</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testList2() {
		let inst = instantiateFrom("list-example-medlist.json")
		XCTAssertNotNil(inst, "Must have instantiated a List instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "182836005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.code!.text!, "Medication Review")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-11-20T23:10:23+11:00")!)	
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].code!, "02")	
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].display!, "Prescribed")
		XCTAssertEqual(inst!.entry![0].flag![0].coding![0].system!, NSURL(string: "http://nehta.gov.au/codes/medications/changetype")!)	
		XCTAssertEqual(inst!.entry![0].item!.display!, "hydroxocobalamin")
		XCTAssertTrue(inst!.entry![1].deleted!)	
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].code!, "02")	
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].display!, "Cancelled")
		XCTAssertEqual(inst!.entry![1].flag![0].coding![0].system!, NSURL(string: "http://nehta.gov.au/codes/medications/changetype")!)	
		XCTAssertEqual(inst!.entry![1].item!.display!, "Morphine Sulfate")	
		XCTAssertEqual(inst!.mode!, "changes")	
		XCTAssertEqual(inst!.source!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>The patient is not on any medications</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testList3() {
		let inst = instantiateFrom("list-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a List instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-11-25T22:17:00+11:00")!)
		XCTAssertTrue(inst!.entry![0].deleted!)	
		XCTAssertEqual(inst!.entry![0].flag![0].text!, "Deleted due to error")	
		XCTAssertEqual(inst!.entry![0].item!.reference!, "Condition/example")	
		XCTAssertEqual(inst!.entry![1].flag![0].text!, "Added")	
		XCTAssertEqual(inst!.entry![1].item!.reference!, "Condition/example2")	
		XCTAssertEqual(inst!.mode!, "changes")
		XCTAssertFalse(inst!.ordered!)	
		XCTAssertEqual(inst!.source!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <table>\n        <thead>\n          <tr>\n            <th>Condition</th>\n            <th>Severity</th>\n            <th>Date</th>\n            <th>Location</th>\n            <th>Status</th>\n          </tr>\n        </thead>\n        <tbody>\n          <tr>\n            <td>Burnt Ear</td>\n            <td>Severe</td>\n            <td>24-May 2012</td>\n            <td>Left Ear</td>\n            <td>deleted</td>\n          </tr>\n          <tr>\n            <td>Asthma</td>\n            <td>Mild</td>\n            <td>21-Nov 2012</td>\n            <td>--</td>\n            <td>added</td>\n          </tr>\n        </tbody>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
