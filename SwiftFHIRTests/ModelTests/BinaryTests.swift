//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BinaryTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Binary {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Binary {
		let instance = Binary(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBinary1() throws {
		let instance = try testBinary1_impl()
		try testBinary1_impl(instance.asJSON())
	}
	
	func testBinary1_impl(json: FHIRJSON? = nil) throws -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType!, "application/pdf")
		XCTAssertEqual(inst.id!, "example")
		
		return inst
	}
}
