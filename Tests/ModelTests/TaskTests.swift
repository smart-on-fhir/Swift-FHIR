//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class TaskTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Task {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Task {
		return try SwiftFHIR.Task(json: json)
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
	
	@discardableResult
	func runTask1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Task {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example.json")
		
		XCTAssertEqual(inst.code?.text, "Refill Request")
		XCTAssertEqual(inst.created?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.focus?.reference, "MedicationRequest/medrx001")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/f001")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.owner?.reference, "Practitioner/MyDoc")
		XCTAssertEqual(inst.requester?.reference, "Patient/Keith")
		XCTAssertEqual(inst.stage?.coding?[0].code, "actionable")
		XCTAssertEqual(inst.stage?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/task-stage")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
