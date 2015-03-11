//
//  BinaryTests.swift
//  BinaryTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType!, "application/pdf")
		XCTAssertEqual(inst.id!, "example")
		
		return inst
	}
}
