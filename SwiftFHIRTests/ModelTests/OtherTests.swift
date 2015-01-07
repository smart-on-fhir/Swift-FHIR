//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

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
		let inst = instantiateFrom("other-example-narrative.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testOther2() {
		let inst = instantiateFrom("other-example-narrative.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testOther3() {
		let inst = instantiateFrom("other-example-narrative.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testOther4() {
		let inst = instantiateFrom("other-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/other-resource-type")!)
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testOther5() {
		let inst = instantiateFrom("other-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/other-resource-type")!)
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testOther6() {
		let inst = instantiateFrom("other-example2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://example.org/do-not-use/fhir-codes#resourceTypes")!)
	}
	
	func testOther7() {
		let inst = instantiateFrom("other-example2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://example.org/do-not-use/fhir-codes#resourceTypes")!)
	}
}
