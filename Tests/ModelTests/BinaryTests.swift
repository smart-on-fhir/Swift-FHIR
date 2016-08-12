//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BinaryTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Binary {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Binary {
		let instance = Binary(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBinary1() {
		do {
			let instance = try runBinary1()
			try runBinary1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Binary successfully, but threw")
		}
	}
	
	func runBinary1(json: FHIRJSON? = nil) throws -> Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType, "application/pdf")
		XCTAssertEqual(inst.id, "example")
		
		return inst
	}
}
