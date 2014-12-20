//
//  BinaryTests.swift
//  BinaryTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class BinaryTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Binary? {
		let json = readJSONFile(filename)
		let instance = Binary(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBinary1() {
		let inst = instantiateFrom("binary-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Binary instance")
	
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst!.contentType!, "application/pdf")
	}
	
	func testBinary2() {
		let inst = instantiateFrom("binary-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Binary instance")
	
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst!.contentType!, "application/pdf")
	}
	
	func testBinary3() {
		let inst = instantiateFrom("binary-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Binary instance")
	
		// Don't know how to create unit test for "content!", which is a Base64Binary
		XCTAssertEqual(inst!.contentType!, "application/pdf")
	}
}
