//
//  SupplyDeliveryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyDeliveryTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> SupplyDelivery {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> SupplyDelivery {
		let instance = SupplyDelivery(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupplyDelivery1() {
		let instance = try? runSupplyDelivery1()
		XCTAssertNotNil(instance, "Must instantiate SupplyDelivery")
		try! runSupplyDelivery1(instance!.asJSON())
	}
	
	func runSupplyDelivery1(json: FHIRJSON? = nil) throws -> SupplyDelivery {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "supplydelivery-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
