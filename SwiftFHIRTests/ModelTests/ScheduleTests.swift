//
//  ScheduleTests.swift
//  ScheduleTests
//
//  Generated from FHIR 0.4.0.4879 on 2015-03-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ScheduleTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Schedule {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Schedule {
		let instance = Schedule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSchedule1() {
		let instance = testSchedule1_impl()
		testSchedule1_impl(json: instance.asJSON())
	}
	
	func testSchedule1_impl(json: FHIRJSON? = nil) -> Schedule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "schedule-example.json")
		
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
