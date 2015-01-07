//
//  OrderResponseTests.swift
//  OrderResponseTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OrderResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> OrderResponse? {
		let json = readJSONFile(filename)
		let instance = OrderResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrderResponse1() {
		let inst = instantiateFrom("orderresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a OrderResponse instance")
	
		XCTAssertEqual(inst!.code!, "complete")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-12-28T13:10:56+11:00")!)
		XCTAssertEqual(inst!.fulfillment![0].reference!, "DiagnosticReport/101")
		XCTAssertEqual(inst!.request!.reference!, "Order/example")
		XCTAssertEqual(inst!.who!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
	}
	
	func testOrderResponse2() {
		let inst = instantiateFrom("orderresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a OrderResponse instance")
	
		XCTAssertEqual(inst!.code!, "complete")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-12-28T13:10:56+11:00")!)
		XCTAssertEqual(inst!.fulfillment![0].reference!, "DiagnosticReport/101")
		XCTAssertEqual(inst!.request!.reference!, "Order/example")
		XCTAssertEqual(inst!.who!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
	}
	
	func testOrderResponse3() {
		let inst = instantiateFrom("orderresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a OrderResponse instance")
	
		XCTAssertEqual(inst!.code!, "complete")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-12-28T13:10:56+11:00")!)
		XCTAssertEqual(inst!.fulfillment![0].reference!, "DiagnosticReport/101")
		XCTAssertEqual(inst!.request!.reference!, "Order/example")
		XCTAssertEqual(inst!.who!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
	}
}
