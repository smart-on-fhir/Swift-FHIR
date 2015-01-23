//
//  GroupTests.swift
//  GroupTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class GroupTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Group {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Group {
		let instance = Group(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGroup1() {
		let instance = testGroup1_impl()
		testGroup1_impl(json: instance.asJSON())
	}
	
	func testGroup1_impl(json: JSONDictionary? = nil) -> Group {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "group-example.canonical.json")
		
		XCTAssertTrue(inst.actual!)
		XCTAssertEqual(inst.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst.characteristic![0].exclude!)
		XCTAssertEqual(inst.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst.characteristic![1].exclude!)
		XCTAssertEqual(inst.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst.code!.text!, "Horse")
		XCTAssertEqual(inst.name!, "John's herd")
		XCTAssertEqual(inst.quantity!, 25)
		XCTAssertEqual(inst.type!, "animal")
		
		return inst
	}
	
	func testGroup2() {
		let instance = testGroup2_impl()
		testGroup2_impl(json: instance.asJSON())
	}
	
	func testGroup2_impl(json: JSONDictionary? = nil) -> Group {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "group-example.canonical.json")
		
		XCTAssertTrue(inst.actual!)
		XCTAssertEqual(inst.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst.characteristic![0].exclude!)
		XCTAssertEqual(inst.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst.characteristic![1].exclude!)
		XCTAssertEqual(inst.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst.code!.text!, "Horse")
		XCTAssertEqual(inst.name!, "John's herd")
		XCTAssertEqual(inst.quantity!, 25)
		XCTAssertEqual(inst.type!, "animal")
		
		return inst
	}
	
	func testGroup3() {
		let instance = testGroup3_impl()
		testGroup3_impl(json: instance.asJSON())
	}
	
	func testGroup3_impl(json: JSONDictionary? = nil) -> Group {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "group-example.json")
		
		XCTAssertTrue(inst.actual!)
		XCTAssertEqual(inst.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst.characteristic![0].exclude!)
		XCTAssertEqual(inst.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst.characteristic![1].exclude!)
		XCTAssertEqual(inst.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst.code!.text!, "Horse")
		XCTAssertEqual(inst.name!, "John's herd")
		XCTAssertEqual(inst.quantity!, 25)
		XCTAssertEqual(inst.type!, "animal")
		
		return inst
	}
}
