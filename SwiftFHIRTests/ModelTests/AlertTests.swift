//
//  AlertTests.swift
//  AlertTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class AlertTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Alert {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Alert {
		let instance = Alert(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAlert1() {
		let instance = testAlert1_impl()
		testAlert1_impl(json: instance.asJSON())
	}
	
	func testAlert1_impl(json: JSONDictionary? = nil) -> Alert {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "alert-example.json")
		
		XCTAssertEqual(inst.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.category!.text!, "admin")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.note!.coding![0].code!, "bigdog")
		XCTAssertEqual(inst.note!.coding![0].display!, "Big dog")
		XCTAssertEqual(inst.note!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.note!.text!, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testAlert2() {
		let instance = testAlert2_impl()
		testAlert2_impl(json: instance.asJSON())
	}
	
	func testAlert2_impl(json: JSONDictionary? = nil) -> Alert {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "alert-qicore-example.json")
		
		XCTAssertEqual(inst.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.category!.text!, "admin")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.note!.coding![0].code!, "bigdog")
		XCTAssertEqual(inst.note!.coding![0].display!, "Big dog")
		XCTAssertEqual(inst.note!.coding![0].system!.absoluteString!, "local")
		XCTAssertEqual(inst.note!.text!, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
