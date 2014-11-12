//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class OtherTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Other? {
		let json = readJSONFile(filename)
		let instance = Other(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOther1() {
		let inst = instantiateFrom("other-example-narrative.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
		
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")	
		XCTAssertEqual(inst!.text!.status!, "additional")
	}
	
	func testOther2() {
		let inst = instantiateFrom("other-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/other-resource-type")!)	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p><b>Patient:</b>Roel</p>\n      <p><b>Requestor:</b>Dokter Bronsig</p>\n      <p><b>Type:</b>Consultation</p>\n      <p><b>Target Date:</b>April 1 - April 31</p>\n      <p>COMPLETED</p>\n      <b>The patient had fever peaks over the last couple of days. He is worried about these peaks.</b>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testOther3() {
		let inst = instantiateFrom("other-example2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://example.org/do-not-use/fhir-codes#resourceTypes")!)	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p><b>Class1</b></p>\n      <ul>\n        <li>Attribute1: 1..*</li>\n        <li>Attribute2: 0..1</li>\n      </ul>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
