//
//  OrderResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrderResponseTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> OrderResponse {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> OrderResponse {
		let instance = OrderResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrderResponse1() {
		let instance = try? runOrderResponse1()
		XCTAssertNotNil(instance, "Must instantiate OrderResponse")
		try! runOrderResponse1(instance!.asJSON())
	}
	
	func runOrderResponse1(json: FHIRJSON? = nil) throws -> OrderResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "orderresponse-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-12-28T13:10:56+11:00")
		XCTAssertEqual(inst.fulfillment![0].reference!, "DiagnosticReport/101")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.orderStatus!, "completed")
		XCTAssertEqual(inst.request!.reference!, "Order/example")
		XCTAssertEqual(inst.text!.div!, "<div>Lab Report completed at 13:10 28-Dec 2012</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.who!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		
		return inst
	}
}
