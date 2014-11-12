//
//  OrderResponseTests.swift
//  OrderResponseTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
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
		let inst = instantiateFrom("orderresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a OrderResponse instance")
		
		XCTAssertEqual(inst!.code!, "complete")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-12-28T13:10:56+11:00")!)	
		XCTAssertEqual(inst!.fulfillment![0].reference!, "DiagnosticReport/101")	
		XCTAssertEqual(inst!.request!.reference!, "Order/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>Lab Report completed at 13:10 28-Dec 2012</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.who!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
	}
}
