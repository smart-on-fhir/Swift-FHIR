//
//  ResourceTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 27/01/16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


/**
Test resource containment.
*/
class ResourceTests: XCTestCase {
	
	func testContaining() {
		let order = Order(json: ["id": "order", "date": "2016-01-27"])
		let patient = Patient(json: ["id": "subject"])
		do {
			order.subject = try order.containResource(patient)
		}
		catch let error {
			XCTAssertTrue(false, "Should not raise exception \(error) when containing perfectly fine patient into order")
		}
	}
	
	func testContainingNoId() {
		let order = Order(json: ["id": "order", "date": "2016-01-27"])
		let patient = Patient(json: ["active": true])
		do {
			order.subject = try order.containResource(patient)
			XCTAssertTrue(false, "Should have raised exception when attempting to contain resource without id")
		}
		catch {
		}
	}
	
	func testContainingItself() {
		let order = Order(json: ["id": "order"])
		do {
			order.subject = try order.containResource(order)
			XCTAssertTrue(false, "Should have raised exception when attempting to contain itself")
		}
		catch {
		}
	}
}
