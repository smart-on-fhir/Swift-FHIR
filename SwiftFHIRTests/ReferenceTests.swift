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
			XCTAssertEqual("Morpheus Co.", order1.medicationReference?.resolved(Medication)?.manufacturer?.resolved(Organization)?.name)
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
