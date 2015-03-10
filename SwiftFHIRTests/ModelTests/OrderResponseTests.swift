//
//  OrderResponseTests.swift
//  OrderResponseTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OrderResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> OrderResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> OrderResponse {
		let instance = OrderResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrderResponse1() {
		let instance = testOrderResponse1_impl()
		testOrderResponse1_impl(json: instance.asJSON())
	}
	
	func testOrderResponse1_impl(json: JSONDictionary? = nil) -> OrderResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "orderresponse-example.canonical.json")
		
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
	
	func testOrderResponse2() {
		let instance = testOrderResponse2_impl()
		testOrderResponse2_impl(json: instance.asJSON())
	}
	
	func testOrderResponse2_impl(json: JSONDictionary? = nil) -> OrderResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "orderresponse-example.canonical.json")
		
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
	
	func testOrderResponse3() {
		let instance = testOrderResponse3_impl()
		testOrderResponse3_impl(json: instance.asJSON())
	}
	
	func testOrderResponse3_impl(json: JSONDictionary? = nil) -> OrderResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "orderresponse-example.json")
		
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
