//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BinaryTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Binary {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Binary {
		let instance = Binary(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBinary1() {
		let instance = try? runBinary1()
		XCTAssertNotNil(instance, "Must instantiate Binary")
		try! runBinary1(instance!.asJSON())
	}
	
	func runBinary1(json: FHIRJSON? = nil) throws -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType!, "application/pdf")
		XCTAssertEqual(inst.id!, "example")
		
		return inst
	}
}
