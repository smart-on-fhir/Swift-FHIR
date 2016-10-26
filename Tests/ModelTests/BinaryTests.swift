//
//  BinaryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BinaryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Binary {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Binary {
		let instance = SwiftFHIR.Binary(json: json)
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
	
	@discardableResult
	func runBinary1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Binary {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "binary-example.json")
		
		XCTAssertEqual(inst.contentType, "application/pdf")
		XCTAssertEqual(inst.id, "example")
		
		return inst
	}
}
