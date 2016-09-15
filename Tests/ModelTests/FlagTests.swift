//
//  FlagTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FlagTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Flag {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Flag {
		let instance = SwiftFHIR.Flag(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFlag1() {
		do {
			let instance = try runFlag1()
			try runFlag1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Flag successfully, but threw")
		}
	}
	
	@discardableResult
	func runFlag1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example-encounter.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "infection")
		XCTAssertEqual(inst.category?.coding?[0].display, "Infection Control Level")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code?.coding?[0].code, "l3")
		XCTAssertEqual(inst.code?.coding?[0].display, "Follow Level 3 Protocol")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/local/if1")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example-encounter")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>Follow Infection Control Level 3 Protocol</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testFlag2() {
		do {
			let instance = try runFlag2()
			try runFlag2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Flag successfully, but threw")
		}
	}
	
	@discardableResult
	func runFlag2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Flag {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example.json")
		
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
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>Large Dog warning for Peter Patient</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
