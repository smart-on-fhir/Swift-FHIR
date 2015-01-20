//
//  ScheduleTests.swift
//  ScheduleTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ScheduleTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Schedule? {
		let json = readJSONFile(filename)
		let instance = Schedule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSchedule1() {
		let inst = instantiateFrom("schedule-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Schedule instance")
		
		XCTAssertEqual(inst!.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst!.actor!.reference!, "Location/1")
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst!.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst!.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Physiotherapy")
	}
	
	func testSchedule2() {
		let inst = instantiateFrom("schedule-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Schedule instance")
		
		XCTAssertEqual(inst!.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst!.actor!.reference!, "Location/1")
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst!.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst!.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Physiotherapy")
	}
	
	func testSchedule3() {
		let inst = instantiateFrom("schedule-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Schedule instance")
		
		XCTAssertEqual(inst!.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst!.actor!.reference!, "Location/1")
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst!.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst!.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Physiotherapy")
	}
}
