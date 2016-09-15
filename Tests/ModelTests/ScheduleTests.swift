//
//  ScheduleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ScheduleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Schedule {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Schedule {
		let instance = SwiftFHIR.Schedule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSchedule1() {
		do {
			let instance = try runSchedule1()
			try runSchedule1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Schedule successfully, but threw")
		}
	}
	
	@discardableResult
	func runSchedule1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-example.json")
		
		XCTAssertEqual(inst.actor?.display, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor?.reference, "Location/1")
		XCTAssertEqual(inst.comment, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/scheduleid")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "45")
		XCTAssertEqual(inst.planningHorizon?.end?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon?.start?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?[0].coding?[0].code, "45")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Physiotherapy")
		
		return inst
	}
}
