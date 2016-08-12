//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class TaskTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Task {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Task {
		let instance = Task(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testTask1() {
		do {
			let instance = try runTask1()
			try runTask1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw")
		}
	}
	
	func runTask1(json: FHIRJSON? = nil) throws -> Task {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example.json")
		
		XCTAssertEqual(inst.code!.text, "Refill Request")
		XCTAssertEqual(inst.created?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.focus!.reference, "MedicationOrder/medrx001")
		XCTAssertEqual(inst.for_fhir!.reference, "Patient/f001")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.owner!.reference, "Practitioner/MyDoc")
		XCTAssertEqual(inst.requester!.reference, "Patient/Keith")
		XCTAssertEqual(inst.stage!.coding![0].code, "actionable")
		XCTAssertEqual(inst.stage!.coding![0].system?.absoluteString, "http://hl7.org/fhir/task-stage")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
