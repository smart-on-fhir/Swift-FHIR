//
//  BinaryTests.swift
//  BinaryTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class BinaryTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Binary {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Binary {
		let instance = Binary(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBinary1() {
		let instance = testBinary1_impl()
		testBinary1_impl(json: instance.asJSON())
	}
	
	func testBinary1_impl(json: JSONDictionary? = nil) -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "binary-example.canonical.json")
		
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst.contentType!, "application/pdf")
		
		return inst
	}
	
	func testBinary2() {
		let instance = testBinary2_impl()
		testBinary2_impl(json: instance.asJSON())
	}
	
	func testBinary2_impl(json: JSONDictionary? = nil) -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "binary-example.canonical.json")
		
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst.contentType!, "application/pdf")
		
		return inst
	}
	
	func testBinary3() {
		let instance = testBinary3_impl()
		testBinary3_impl(json: instance.asJSON())
	}
	
	func testBinary3_impl(json: JSONDictionary? = nil) -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "binary-example.json")
		
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst.contentType!, "application/pdf")
		
		return inst
	}
}
