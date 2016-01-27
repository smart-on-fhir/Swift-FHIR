//
//  ReferenceTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 11/30/15.
//  2016, SMART Health IT.
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
			XCTAssertNotNil(order1.medicationReference)
			XCTAssertEqual("Red Pill", order1.medicationReference?.resolved(Medication)?.code?.text ?? "missing")
			XCTAssertEqual("Red Pill", order1.medicationReference?.resolved(Medication)?.code?.text ?? "missing")		// second time, reading from `_resolved`
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
		if let path = NSBundle(forClass: self.dynamicType).pathForResource("ReferenceRelative", ofType: "json", inDirectory: "TestResources") {
			let order1 = try! MedicationOrder.instantiateFromPath(path)
			XCTAssertEqual("order-ref-relative", order1.id)
			XCTAssertEqual("Medication/med-1234", order1.medicationReference?.reference)
			XCTAssertNil(order1.medicationReference?.resolved(Medication), "Cannot already be resolved")
			
			let readyExpectation = expectationWithDescription("reference")
			order1.medicationReference?.resolve(Medication.self) { medication in
				XCTAssertNil(medication, "Resolving must be impossible without server instance")
				readyExpectation.fulfill()
			}
			waitForExpectationsWithTimeout(1) { error in
				XCTAssertNil(error, "Should return immediately")
			}
		}
		else {
			XCTAssertTrue(false, "Test resource not bundled")
		}
	}
	
	func testAbsoluteReference() {
		if let path = NSBundle(forClass: self.dynamicType).pathForResource("ReferenceAbsolute", ofType: "json", inDirectory: "TestResources") {
			let order1 = try! MedicationOrder.instantiateFromPath(path)
			XCTAssertEqual("order-ref-absolute", order1.id)
			XCTAssertEqual("https://fhir-open-api-dstu2.smarthealthit.org/Medication/1", order1.medicationReference?.reference)
			XCTAssertNil(order1.medicationReference?.resolved(Medication), "Cannot already be resolved")
			
			let readyExpectation = expectationWithDescription("reference")
			order1.medicationReference?.resolve(Medication.self) { medication in
				XCTAssertNil(medication, "Unfortunately, don't currently have Medication/1 on the SMART server")
				readyExpectation.fulfill()
			}
			waitForExpectationsWithTimeout(5) { error in
				XCTAssertNil(error, "Error resolving reference")
			}
		}
		else {
			XCTAssertTrue(false, "Test resource not bundled")
		}
	}
}

