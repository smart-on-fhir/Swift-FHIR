//
//  ScheduleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSchedule = Models.Schedule
#else
import SwiftFHIR
typealias SwiftFHIRSchedule = SwiftFHIR.Schedule
#endif


class ScheduleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSchedule {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSchedule {
		return try SwiftFHIRSchedule(json: json)
	}
	
	func testSchedule1() {
		do {
			let instance = try runSchedule1()
			try runSchedule1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Schedule successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSchedule1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSchedule {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.actor?[0].display, "Burgers UMC, South Wing, second floor")
		XCTAssertEqual(inst.actor?[0].reference, "Location/1")
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
	
	func testSchedule2() {
		do {
			let instance = try runSchedule2()
			try runSchedule2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Schedule successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSchedule2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSchedule {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-provider-location1-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.actor?[0].display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.actor?[0].reference, "Practitioner/1")
		XCTAssertEqual(inst.actor?[1].display, "USS Enterprise-D Sickbay")
		XCTAssertEqual(inst.actor?[1].reference, "Location/3")
		XCTAssertEqual(inst.comment, "The slots attached to this schedule are for genetic counselling in the USS Enterprise-D Sickbay.")
		XCTAssertEqual(inst.id, "exampleloc1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/scheduleid")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "46")
		XCTAssertEqual(inst.planningHorizon?.end?.description, "2017-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon?.start?.description, "2017-12-25T09:15:00Z")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "75")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "Genetic Counselling")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394580004")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Clinical genetics")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSchedule3() {
		do {
			let instance = try runSchedule3()
			try runSchedule3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Schedule successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSchedule3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSchedule {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "schedule-provider-location2-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.actor?[0].display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.actor?[0].reference, "Practitioner/1")
		XCTAssertEqual(inst.actor?[1].display, "Starfleet HQ Sickbay")
		XCTAssertEqual(inst.actor?[1].reference, "Location/2")
		XCTAssertEqual(inst.comment, "The slots attached to this schedule are for neurosurgery operations at Starfleet HQ only.")
		XCTAssertEqual(inst.id, "exampleloc2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/scheduleid")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "47")
		XCTAssertEqual(inst.planningHorizon?.end?.description, "2017-12-25T09:30:00Z")
		XCTAssertEqual(inst.planningHorizon?.start?.description, "2017-12-25T09:15:00Z")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "31")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "Specialist Surgical")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "221")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "Surgery - General")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394610002")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Surgery-Neurosurgery")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
