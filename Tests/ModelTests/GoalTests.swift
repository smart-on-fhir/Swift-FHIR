//
//  GoalTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRGoal = Models.Goal
#else
import SwiftFHIR
typealias SwiftFHIRGoal = SwiftFHIR.Goal
#endif


class GoalTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRGoal {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRGoal {
		return try SwiftFHIRGoal(json: json)
	}
	
	func testGoal1() {
		do {
			let instance = try runGoal1()
			try runGoal1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Goal successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGoal1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGoal {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "goal-example.json")
		
		XCTAssertEqual(inst.addresses?[0].display, "obesity")
		XCTAssertEqual(inst.addresses?[0].reference, "Condition/12345")
		XCTAssertEqual(inst.description_fhir?.text, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "measure")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "3141-9")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "Weight Measured")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].url?.absoluteString, "detail")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.high?.code, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.high?.unit, "lbs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.high?.value, "180")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.low?.code, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.low?.unit, "lbs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].valueRange?.low?.value, "160")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/goal-target")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, GoalStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
}
