//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.SupplyRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.SupplyRequest {
		let instance = SwiftFHIR.SupplyRequest(json: json)
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
	
	@discardableResult
	func runSupplyRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SupplyRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
