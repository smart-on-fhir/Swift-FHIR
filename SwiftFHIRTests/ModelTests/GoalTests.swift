//
//  GoalTests.swift
//  GoalTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class GoalTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Goal? {
		let json = readJSONFile(filename)
		let instance = Goal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGoal1() {
		let inst = instantiateFrom("goal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
	
	func testGoal2() {
		let inst = instantiateFrom("goal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
	
	func testGoal3() {
		let inst = instantiateFrom("goal-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
}
