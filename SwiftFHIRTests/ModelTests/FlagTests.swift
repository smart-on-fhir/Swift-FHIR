//
//  FlagTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FlagTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Flag {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Flag {
		let instance = Flag(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFlag1() {
		let instance = try? runFlag1()
		XCTAssertNotNil(instance, "Must instantiate Flag")
		if let instance = instance {
			try! runFlag1(instance.asJSON())
		}
	}
	
	func runFlag1(json: FHIRJSON? = nil) throws -> Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example-encounter.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "infection")
		XCTAssertEqual(inst.category!.coding![0].display!, "Infection Control Level")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code!.coding![0].code!, "l3")
		XCTAssertEqual(inst.code!.coding![0].display!, "Follow Level 3 Protocol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://example.org/local/if1")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/example")
		XCTAssertEqual(inst.id!, "example-encounter")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>Follow Infection Control Level 3 Protocol</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFlag2() {
		let instance = try? runFlag2()
		XCTAssertNotNil(instance, "Must instantiate Flag")
		if let instance = instance {
			try! runFlag2(instance.asJSON())
		}
	}
	
	func runFlag2(json: FHIRJSON? = nil) throws -> Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example.json")
		
		XCTAssertEqual(inst.author!.display!, "Nancy Nurse")
		XCTAssertEqual(inst.author!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.category!.coding![0].code!, "admin")
		XCTAssertEqual(inst.category!.coding![0].display!, "Admin")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.category!.text!, "admin")
		XCTAssertEqual(inst.code!.coding![0].code!, "bigdog")
		XCTAssertEqual(inst.code!.coding![0].display!, "Big dog")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code!.text!, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
