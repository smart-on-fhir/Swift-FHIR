//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRTask = Models.Task
#else
import SwiftFHIR
typealias SwiftFHIRTask = SwiftFHIR.Task
#endif


class TaskTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRTask {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRTask {
		return try SwiftFHIRTask(json: json)
	}
	
	func testTask1() {
		do {
			let instance = try runTask1()
			try runTask1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.code?.text, "Refill Request")
		XCTAssertEqual(inst.focus?.reference, "MedicationRequest/medrx002")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/f001")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.owner?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.reference, "Patient/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
