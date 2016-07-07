//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-07-07.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class TaskTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Task {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Task {
		let instance = SwiftFHIR.Task(json: json)
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
	
	@discardableResult
	func runTask1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Task {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example.json")
		
		XCTAssertEqual(inst.created?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.creator?.reference, "Patient/Keith")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.owner?.reference, "Practitioner/MyDoc")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.subject?.reference, "Medication/123")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.text, "Refill Request")
		
		return inst
	}
}
