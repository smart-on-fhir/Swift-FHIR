//
//  ScheduleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ScheduleTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Schedule {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Schedule {
		let instance = Schedule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSchedule1() throws {
		let instance = try runSchedule1()
		try runSchedule1(instance.asJSON())
	}
	
	func runSchedule1(json: FHIRJSON? = nil) throws -> Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-example.json")
		
		XCTAssertEqual(inst.actor!.display!, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor!.reference!, "Location/1")
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.planningHorizon!.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon!.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type![0].coding![0].code!, "45")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Physiotherapy")
		
		return inst
	}
}
