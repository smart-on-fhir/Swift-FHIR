//
//  BasicTests.swift
//  BasicTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class BasicTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Basic? {
		let json = readJSONFile(filename)
		let instance = Basic(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBasic1() {
		let inst = instantiateFrom("basic-example-narrative.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testBasic2() {
		let inst = instantiateFrom("basic-example-narrative.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testBasic3() {
		let inst = instantiateFrom("basic-example-narrative.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
	
	func testBasic4() {
		let inst = instantiateFrom("basic-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/basic-resource-type")!)
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testBasic5() {
		let inst = instantiateFrom("basic-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/basic-resource-type")!)
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testBasic6() {
		let inst = instantiateFrom("basic-example2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://example.org/do-not-use/fhir-codes#resourceTypes")!)
	}
	
	func testBasic7() {
		let inst = instantiateFrom("basic-example2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Basic instance")
	
		XCTAssertEqual(inst!.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://example.org/do-not-use/fhir-codes#resourceTypes")!)
	}
}
