//
//  FlagTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRFlag = Models.Flag
#else
import SwiftFHIR
typealias SwiftFHIRFlag = SwiftFHIR.Flag
#endif


class FlagTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRFlag {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRFlag {
		return try SwiftFHIRFlag(json: json)
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
	func runFlag1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRFlag {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example.json")
		
		XCTAssertEqual(inst.author?.display, "Nancy Nurse")
		XCTAssertEqual(inst.author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "safety")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Safety")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/flag-category")
		XCTAssertEqual(inst.category?[0].text, "Safety")
		XCTAssertEqual(inst.code?.coding?[0].code, "bigdog")
		XCTAssertEqual(inst.code?.coding?[0].display, "Big dog")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code?.text, "Patient has a big dog at his home. Always always wear a suit of armor or take other active counter-measures")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.period?.end?.description, "2016-12-01")
		XCTAssertEqual(inst.period?.start?.description, "2015-01-17")
		XCTAssertEqual(inst.status, FlagStatus(rawValue: "inactive")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Large Dog warning for Peter Patient</div>")
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
	func runFlag2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRFlag {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "flag-example-encounter.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "infection")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Infection Control Level")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://example.org/local")
		XCTAssertEqual(inst.code?.coding?[0].code, "l3")
		XCTAssertEqual(inst.code?.coding?[0].display, "Follow Level 3 Protocol")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/local/if1")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example-encounter")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, FlagStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Follow Infection Control Level 3 Protocol</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
