//
//  FlagTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FlagTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Flag {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Flag {
		let instance = Flag(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFlag1() {
		let instance = testFlag1_impl()
		testFlag1_impl(json: instance.asJSON())
	}
	
	func testFlag1_impl(json: FHIRJSON? = nil) -> Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "flag-example.json")
		
		XCTAssertEqual(inst.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.category!.text!, "admin")
		XCTAssertEqual(inst.code!.coding![0].code!, "bigdog")
		XCTAssertEqual(inst.code!.coding![0].display!, "Big dog")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.code!.text!, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.div!, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFlag2() {
		let instance = testFlag2_impl()
		testFlag2_impl(json: instance.asJSON())
	}
	
	func testFlag2_impl(json: FHIRJSON? = nil) -> Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "flag-qicore-example.json")
		
		XCTAssertEqual(inst.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.category!.text!, "admin")
		XCTAssertEqual(inst.code!.coding![0].code!, "bigdog")
		XCTAssertEqual(inst.code!.coding![0].display!, "Big dog")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/local")
		XCTAssertEqual(inst.code!.text!, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.end!.description, "2015-02-28")
		XCTAssertEqual(inst.period!.start!.description, "2015-01-09")
		XCTAssertEqual(inst.status!, "inactive")
		XCTAssertEqual(inst.text!.div!, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
