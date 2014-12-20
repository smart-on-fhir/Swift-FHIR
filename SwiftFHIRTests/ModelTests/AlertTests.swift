//
//  AlertTests.swift
//  AlertTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class AlertTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Alert? {
		let json = readJSONFile(filename)
		let instance = Alert(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAlert1() {
		let inst = instantiateFrom("alert-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Alert instance")
	
		XCTAssertEqual(inst!.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "local")!)
		XCTAssertEqual(inst!.category!.text!, "admin")
		XCTAssertEqual(inst!.note!, "patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testAlert2() {
		let inst = instantiateFrom("alert-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Alert instance")
	
		XCTAssertEqual(inst!.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "local")!)
		XCTAssertEqual(inst!.category!.text!, "admin")
		XCTAssertEqual(inst!.note!, "patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testAlert3() {
		let inst = instantiateFrom("alert-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Alert instance")
	
		XCTAssertEqual(inst!.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst!.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst!.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "local")!)
		XCTAssertEqual(inst!.category!.text!, "admin")
		XCTAssertEqual(inst!.note!, "patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
