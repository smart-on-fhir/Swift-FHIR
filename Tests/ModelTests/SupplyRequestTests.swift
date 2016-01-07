//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyRequestTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> SupplyRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> SupplyRequest {
		let instance = SupplyRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupplyRequest1() {
		let instance = try? runSupplyRequest1()
		XCTAssertNotNil(instance, "Must instantiate SupplyRequest")
		if let instance = instance {
			try! runSupplyRequest1(instance.asJSON())
		}
	}
	
	func runSupplyRequest1(json: FHIRJSON? = nil) throws -> SupplyRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
