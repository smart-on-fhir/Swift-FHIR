//
//  GoalTests.swift
//  GoalTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class GoalTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Goal {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Goal {
		let instance = Goal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGoal1() {
		let instance = testGoal1_impl()
		testGoal1_impl(json: instance.asJSON())
	}
	
	func testGoal1_impl(json: JSONDictionary? = nil) -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "goal-example.canonical.json")
		
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in progress")
		
		return inst
	}
	
	func testGoal2() {
		let instance = testGoal2_impl()
		testGoal2_impl(json: instance.asJSON())
	}
	
	func testGoal2_impl(json: JSONDictionary? = nil) -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "goal-example.canonical.json")
		
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in progress")
		
		return inst
	}
	
	func testGoal3() {
		let instance = testGoal3_impl()
		testGoal3_impl(json: instance.asJSON())
	}
	
	func testGoal3_impl(json: JSONDictionary? = nil) -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "goal-example.json")
		
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in progress")
		
		return inst
	}
}
