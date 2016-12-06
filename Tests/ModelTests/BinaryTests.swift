//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BinaryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Binary {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Binary {
		return try SwiftFHIR.Binary(json: json)
	}
	
	func testBinary1() {
		do {
			let instance = try runBinary1()
			try runBinary1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Binary successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBinary1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Binary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType, "application/pdf")
		XCTAssertEqual(inst.id, "example")
		
		return inst
	}
}
