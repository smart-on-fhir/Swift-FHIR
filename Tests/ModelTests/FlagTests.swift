//
//  FlagTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FlagTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Flag {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Flag {
		return try SwiftFHIR.Flag(json: json)
	}
	
	func testFlag1() {
		do {
			let instance = try runFlag1()
			try runFlag1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Flag successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runFlag1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Flag {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example-encounter.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "infection")
		XCTAssertEqual(inst.category?.coding?[0].display, "Infection Control Level")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code?.coding?[0].code, "l3")
		XCTAssertEqual(inst.code?.coding?[0].display, "Follow Level 3 Protocol")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/local/if1")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example-encounter")
		XCTAssertEqual(inst.status, FlagStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Follow Infection Control Level 3 Protocol</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testFlag2() {
		do {
			let instance = try runFlag2()
			try runFlag2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Flag successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runFlag2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Flag {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example.json")
		
		XCTAssertEqual(inst.author?.display, "Nancy Nurse")
		XCTAssertEqual(inst.author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.category?.coding?[0].code, "admin")
		XCTAssertEqual(inst.category?.coding?[0].display, "Admin")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.category?.text, "admin")
		XCTAssertEqual(inst.code?.coding?[0].code, "bigdog")
		XCTAssertEqual(inst.code?.coding?[0].display, "Big dog")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code?.text, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, FlagStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
