//
//  ReferenceTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/30/15.
//  Copyright © 2015 SMART Health IT. All rights reserved.
//

import XCTest
import SwiftFHIR


/**
Test reference resolving.
*/
class ReferenceTests: XCTestCase {
	
	func testContainedReference() {
		if let path = NSBundle(forClass: self.dynamicType).pathForResource("ReferenceContained1", ofType: "json", inDirectory: "TestResources") {
			let order1 = try! MedicationOrder.instantiateFromPath(path)
			XCTAssertEqual("order-ref-contained", order1.id)
			XCTAssertEqual("Red Pill",  order1.medicationReference?.resolved(Medication)?.code?.text ?? "missing")
			XCTAssertEqual("Red Pill",  order1.medicationReference?.resolved(Medication)?.code?.text ?? "missing")		// second time, reading from `_resolved`
			XCTAssertEqual("Morpheus Co.", order1.medicationReference?.resolved(Medication)?.manufacturer?.resolved(Organization)?.name)
		}
		else {
			XCTAssertTrue(false, "Test resource not bundled")
		}
		
		if let path = NSBundle(forClass: self.dynamicType).pathForResource("ReferenceContained2", ofType: "json", inDirectory: "TestResources") {
			let order1 = try! MedicationOrder.instantiateFromPath(path)
			XCTAssertEqual("order-ref-contained-wrong", order1.id)
			XCTAssertNotNil(order1.medicationReference)
			XCTAssertNil(order1.medicationReference?.resolved(Medication), "Must not resolve contained resource with wrong type")
			XCTAssertNil(order1.medicationReference?.resolved(Medication), "Must still not resolve contained resource with wrong type")		// second time, reading from `_resolved`
			XCTAssertEqual("Morpheus Co.", order1.medicationReference?.resolved(Organization)?.name)
		}
		else {
			XCTAssertTrue(false, "Test resource not bundled")
		}
	}
	
	func testRelativeReference() {
		
	}
	
	func testAbsoluteReference() {
		
	}
}
