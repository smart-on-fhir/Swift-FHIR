//
//  SupplyDeliveryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SupplyDeliveryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.SupplyDelivery {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.SupplyDelivery {
		let instance = SwiftFHIR.SupplyDelivery(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupplyDelivery1() {
		do {
			let instance = try runSupplyDelivery1()
			try runSupplyDelivery1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test SupplyDelivery successfully, but threw")
		}
	}
	
	@discardableResult
	func runSupplyDelivery1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SupplyDelivery {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "supplydelivery-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
