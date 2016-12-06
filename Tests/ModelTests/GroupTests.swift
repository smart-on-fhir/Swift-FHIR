//
//  GroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class GroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Group {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Group {
		return try SwiftFHIR.Group(json: json)
	}
	
	func testGroup1() {
		do {
			let instance = try runGroup1()
			try runGroup1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw")
		}
	}
	
	@discardableResult
	func runGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Group {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example-member.json")
		
		XCTAssertTrue(inst.actual ?? false)
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.member?[0].entity?.reference, "Patient/pat1")
		XCTAssertEqual(inst.member?[0].period?.start?.description, "2014-10-08")
		XCTAssertEqual(inst.member?[1].entity?.reference, "Patient/pat2")
		XCTAssertTrue(inst.member?[1].inactive ?? false)
		XCTAssertEqual(inst.member?[1].period?.start?.description, "2015-04-02")
		XCTAssertEqual(inst.member?[2].entity?.reference, "Patient/pat3")
		XCTAssertEqual(inst.member?[2].period?.start?.description, "2015-08-06")
		XCTAssertEqual(inst.member?[3].entity?.reference, "Patient/pat4")
		XCTAssertEqual(inst.member?[3].period?.start?.description, "2015-08-06")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "person")!)
		
		return inst
	}
	
	func testGroup2() {
		do {
			let instance = try runGroup2()
			try runGroup2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw")
		}
	}
	
	@discardableResult
	func runGroup2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Group {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example.json")
		
		XCTAssertTrue(inst.actual ?? false)
		XCTAssertEqual(inst.characteristic?[0].code?.text, "gender")
		XCTAssertFalse(inst.characteristic?[0].exclude ?? true)
		XCTAssertEqual(inst.characteristic?[0].valueCodeableConcept?.text, "mixed")
		XCTAssertEqual(inst.characteristic?[1].code?.text, "owner")
		XCTAssertFalse(inst.characteristic?[1].exclude ?? true)
		XCTAssertEqual(inst.characteristic?[1].valueCodeableConcept?.text, "John Smith")
		XCTAssertEqual(inst.code?.text, "Horse")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.name, "John's herd")
		XCTAssertEqual(inst.quantity, UInt(25))
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "animal")!)
		
		return inst
	}
}
