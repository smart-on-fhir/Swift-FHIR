//
//  ScheduleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ScheduleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Schedule {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Schedule {
		return try SwiftFHIR.Schedule(json: json)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-example.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.actor?.display, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor?.reference, "Location/1")
		XCTAssertEqual(inst.comment, "The slots attached to this schedule should be specialized to cover immunizations within the clinic")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/scheduleid")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "45")
		XCTAssertEqual(inst.planningHorizon?.end?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon?.start?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "57")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "Immunization")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "408480009")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Clinical immunology")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
