//
//  GroupTests.swift
//  GroupTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class GroupTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Group? {
		let json = readJSONFile(filename)
		let instance = Group(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGroup1() {
		let inst = instantiateFrom("group-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Group instance")
	
		XCTAssertTrue(inst!.actual!)
		XCTAssertEqual(inst!.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst!.characteristic![0].exclude!)
		XCTAssertEqual(inst!.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst!.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst!.characteristic![1].exclude!)
		XCTAssertEqual(inst!.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst!.code!.text!, "Horse")
		XCTAssertEqual(inst!.name!, "John's herd")
		XCTAssertEqual(inst!.quantity!, 25)
		XCTAssertEqual(inst!.type!, "animal")
	}
	
	func testGroup2() {
		let inst = instantiateFrom("group-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Group instance")
	
		XCTAssertTrue(inst!.actual!)
		XCTAssertEqual(inst!.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst!.characteristic![0].exclude!)
		XCTAssertEqual(inst!.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst!.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst!.characteristic![1].exclude!)
		XCTAssertEqual(inst!.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst!.code!.text!, "Horse")
		XCTAssertEqual(inst!.name!, "John's herd")
		XCTAssertEqual(inst!.quantity!, 25)
		XCTAssertEqual(inst!.type!, "animal")
	}
	
	func testGroup3() {
		let inst = instantiateFrom("group-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Group instance")
	
		XCTAssertTrue(inst!.actual!)
		XCTAssertEqual(inst!.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst!.characteristic![0].exclude!)
		XCTAssertEqual(inst!.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst!.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst!.characteristic![1].exclude!)
		XCTAssertEqual(inst!.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst!.code!.text!, "Horse")
		XCTAssertEqual(inst!.name!, "John's herd")
		XCTAssertEqual(inst!.quantity!, 25)
		XCTAssertEqual(inst!.type!, "animal")
	}
}
