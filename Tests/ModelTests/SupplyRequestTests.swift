//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyRequestTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> SupplyRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> SupplyRequest {
		let instance = SupplyRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupplyRequest1() {
		do {
			let instance = try runSupplyRequest1()
			try runSupplyRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test SupplyRequest successfully, but threw")
		}
	}
	
	func runSupplyRequest1(json: FHIRJSON? = nil) throws -> SupplyRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text!.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
