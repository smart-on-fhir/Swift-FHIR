//
//  OrderResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrderResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.OrderResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.OrderResponse {
		let instance = SwiftFHIR.OrderResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrderResponse1() {
		do {
			let instance = try runOrderResponse1()
			try runOrderResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OrderResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrderResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.OrderResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "orderresponse-example.json")
		
		XCTAssertEqual(inst.date?.description, "2012-12-28T13:10:56+11:00")
		XCTAssertEqual(inst.fulfillment?[0].reference, "DiagnosticReport/101")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.orderStatus, "completed")
		XCTAssertEqual(inst.request?.reference, "Order/example")
		XCTAssertEqual(inst.text?.div, "<div>Lab Report completed at 13:10 28-Dec 2012</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.who?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		
		return inst
	}
}
