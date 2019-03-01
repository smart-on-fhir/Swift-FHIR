//
//  ExampleScenarioTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRExampleScenario = Models.ExampleScenario
#else
import SwiftFHIR
typealias SwiftFHIRExampleScenario = SwiftFHIR.ExampleScenario
#endif


class ExampleScenarioTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRExampleScenario {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRExampleScenario {
		return try SwiftFHIRExampleScenario(json: json)
	}
	
	func testExampleScenario1() {
		do {
			let instance = try runExampleScenario1()
			try runExampleScenario1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ExampleScenario successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runExampleScenario1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRExampleScenario {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "examplescenario-example.json")
		
		XCTAssertEqual(inst.actor?[0].actorId, "Nurse")
		XCTAssertEqual(inst.actor?[0].description_fhir, "The Nurse")
		XCTAssertEqual(inst.actor?[0].name, "Nurse")
		XCTAssertEqual(inst.actor?[0].type, ExampleScenarioActorType(rawValue: "person")!)
		XCTAssertEqual(inst.actor?[1].actorId, "MAP")
		XCTAssertEqual(inst.actor?[1].description_fhir, "The entity that receives the Administration Requests to show the nurse to perform them")
		XCTAssertEqual(inst.actor?[1].name, "Nurse's Tablet")
		XCTAssertEqual(inst.actor?[1].type, ExampleScenarioActorType(rawValue: "entity")!)
		XCTAssertEqual(inst.actor?[2].actorId, "OP")
		XCTAssertEqual(inst.actor?[2].description_fhir, "The Medication Administration Order Placer")
		XCTAssertEqual(inst.actor?[2].name, "MAR / Scheduler")
		XCTAssertEqual(inst.actor?[2].type, ExampleScenarioActorType(rawValue: "entity")!)
		XCTAssertEqual(inst.actor?[3].actorId, "MAC")
		XCTAssertEqual(inst.actor?[3].description_fhir, "The entity that receives the Medication Administration reports")
		XCTAssertEqual(inst.actor?[3].name, "MAR / EHR")
		XCTAssertEqual(inst.actor?[3].type, ExampleScenarioActorType(rawValue: "entity")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.instance?[0].description_fhir, "The initial prescription which describes \"medication X, 3 times per day\" - the exact scheduling is not   in the initial prescription (it is left for the care teams to decide on the schedule).")
		XCTAssertEqual(inst.instance?[0].name, "Initial Prescription")
		XCTAssertEqual(inst.instance?[0].resourceId, "iherx001")
		XCTAssertEqual(inst.instance?[1].description_fhir, "The administration request for day 1, morning")
		XCTAssertEqual(inst.instance?[1].name, "Request for day 1, morning")
		XCTAssertEqual(inst.instance?[1].resourceId, "iherx001.001")
		XCTAssertEqual(inst.instance?[2].description_fhir, "The administration request for day 1, lunch")
		XCTAssertEqual(inst.instance?[2].name, "Request for day 1, lunch")
		XCTAssertEqual(inst.instance?[2].resourceId, "iherx001.002")
		XCTAssertEqual(inst.instance?[3].description_fhir, "The administration request for day 1, evening")
		XCTAssertEqual(inst.instance?[3].name, "Request for day 1, evening")
		XCTAssertEqual(inst.instance?[3].resourceId, "iherx001.003")
		XCTAssertEqual(inst.instance?[4].description_fhir, "The administration request for day 2, morning")
		XCTAssertEqual(inst.instance?[4].name, "Request for day 2, morning")
		XCTAssertEqual(inst.instance?[4].resourceId, "iherx001.004")
		XCTAssertEqual(inst.instance?[5].description_fhir, "The administration request for day 2, lunch")
		XCTAssertEqual(inst.instance?[5].name, "Request for day 2, lunch")
		XCTAssertEqual(inst.instance?[5].resourceId, "iherx001.005")
		XCTAssertEqual(inst.instance?[6].description_fhir, "The administration request for day 2, evening")
		XCTAssertEqual(inst.instance?[6].name, "Request for day 2, evening")
		XCTAssertEqual(inst.instance?[6].resourceId, "iherx001.006")
		XCTAssertEqual(inst.instance?[7].description_fhir, "Administration report for day 1, morning: Taken")
		XCTAssertEqual(inst.instance?[7].name, "Morning meds - taken")
		XCTAssertEqual(inst.instance?[7].resourceId, "iheadm001a")
		XCTAssertEqual(inst.instance?[8].description_fhir, "Administration report for day 1, morning: NOT Taken")
		XCTAssertEqual(inst.instance?[8].name, "Morning meds - not taken")
		XCTAssertEqual(inst.instance?[8].resourceId, "iheadm001b")
		XCTAssertEqual(inst.instance?[9].containedInstance?[0].resourceId, "iherx001.001")
		XCTAssertEqual(inst.instance?[9].containedInstance?[1].resourceId, "iherx001.002")
		XCTAssertEqual(inst.instance?[9].containedInstance?[2].resourceId, "iherx001.003")
		XCTAssertEqual(inst.instance?[9].containedInstance?[3].resourceId, "iherx001.004")
		XCTAssertEqual(inst.instance?[9].containedInstance?[4].resourceId, "iherx001.005")
		XCTAssertEqual(inst.instance?[9].containedInstance?[5].resourceId, "iherx001.006")
		XCTAssertEqual(inst.instance?[9].description_fhir, "All the medication Requests for Day 1")
		XCTAssertEqual(inst.instance?[9].name, "Bundle of Medication Requests")
		XCTAssertEqual(inst.instance?[9].resourceId, "iherx001bundle")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.process?[0].postConditions, "Medication administration Reports are submitted, EHR is updated.")
		XCTAssertEqual(inst.process?[0].preConditions, "Medication administration requests are in the EHR / MAR, scheduled for each individual intake.")
		XCTAssertEqual(inst.process?[0].step?[0].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[0].operation?.name, "1. Get today's schedule")
		XCTAssertEqual(inst.process?[0].step?[0].operation?.number, "1")
		XCTAssertEqual(inst.process?[0].step?[0].operation?.receiver, "MAP")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].description_fhir, "Query for medication administration orders,\n- For today's shifts\n- For today's patients")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.initiator, "MAP")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.name, "2.Query for medication administration orders,\n- For today's shifts\n- For today's patients")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.number, "2")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.receiver, "OP")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.request?.resourceId, "iherxqry")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].step?[0].operation?.response?.resourceId, "iherx001bundle")
		XCTAssertEqual(inst.process?[0].step?[1].process?[0].title, "P1. Query Administration Requests")
		XCTAssertEqual(inst.process?[0].step?[2].pause, true)
		XCTAssertEqual(inst.process?[0].step?[3].operation?.initiator, "MAP")
		XCTAssertEqual(inst.process?[0].step?[3].operation?.name, "Notify (alert)")
		XCTAssertEqual(inst.process?[0].step?[3].operation?.number, "4")
		XCTAssertEqual(inst.process?[0].step?[3].operation?.receiver, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[4].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[4].operation?.name, "Read orders")
		XCTAssertEqual(inst.process?[0].step?[4].operation?.number, "5")
		XCTAssertEqual(inst.process?[0].step?[4].operation?.receiver, "MAP")
		XCTAssertEqual(inst.process?[0].step?[5].pause, true)
		XCTAssertEqual(inst.process?[0].step?[6].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[6].operation?.name, "Ask if patient took meds")
		XCTAssertEqual(inst.process?[0].step?[6].operation?.number, "5")
		XCTAssertEqual(inst.process?[0].step?[6].operation?.receiver, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].description_fhir, "Invoke if patient took medications")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].step?[0].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].step?[0].operation?.initiatorActive, true)
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].step?[0].operation?.name, "Register Meds taken")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].step?[0].operation?.number, "1a")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].step?[0].operation?.receiver, "MAP")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].step?[0].process?[0].title, "Register Meds taken")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[0].title, "Patient took drugs")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].description_fhir, "No, patient did not take drugs")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].step?[0].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].step?[0].operation?.initiatorActive, true)
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].step?[0].operation?.name, "Register Meds NOT taken")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].step?[0].operation?.number, "1b")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].step?[0].operation?.receiver, "MAP")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].step?[0].process?[0].title, "Register Meds NOT taken")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[1].title, "No drugs")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[2].description_fhir, "Unknown whether patient took medications or not")
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[2].step?[0].pause, true)
		XCTAssertEqual(inst.process?[0].step?[7].alternative?[2].title, "Not clear")
		XCTAssertEqual(inst.process?[0].step?[8].pause, true)
		XCTAssertEqual(inst.process?[0].step?[9].operation?.initiator, "Nurse")
		XCTAssertEqual(inst.process?[0].step?[9].operation?.name, "Administer drug")
		XCTAssertEqual(inst.process?[0].step?[9].operation?.number, "6")
		XCTAssertEqual(inst.process?[0].step?[9].operation?.receiver, "Nurse")
		XCTAssertEqual(inst.process?[0].title, "Mobile Medication Administration")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
