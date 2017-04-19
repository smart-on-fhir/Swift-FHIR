//
//  GoalTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "goal-example-stop-smoking.json")
		
		XCTAssertEqual(inst.description_fhir?.text, "Stop smoking")
		XCTAssertEqual(inst.id, "stop-smoking")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].code, "8517006")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].display, "Ex-smoker (finding)")
		XCTAssertEqual(inst.outcomeCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.outcomeCode?[0].text, "Former smoker")
		XCTAssertEqual(inst.startDate?.description, "2015-04-05")
		XCTAssertEqual(inst.status, GoalStatus(rawValue: "achieved")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testGoal2() {
		do {
			let instance = try runGoal2()
			try runGoal2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Goal successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGoal2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGoal {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "goal-example.json")
		
		XCTAssertEqual(inst.addresses?[0].display, "obesity condition")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "dietary")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/goal-category")
		XCTAssertEqual(inst.description_fhir?.text, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.expressedBy?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.expressedBy?.reference, "Patient/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.outcomeReference?[0].display, "Body Weight Measured")
		XCTAssertEqual(inst.outcomeReference?[0].reference, "Observation/example")
		XCTAssertEqual(inst.priority?.coding?[0].code, "high-priority")
		XCTAssertEqual(inst.priority?.coding?[0].display, "High Priority")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/goal-priority")
		XCTAssertEqual(inst.priority?.text, "high")
		XCTAssertEqual(inst.startDate?.description, "2015-04-05")
		XCTAssertEqual(inst.status, GoalStatus(rawValue: "on-hold")!)
		XCTAssertEqual(inst.statusDate?.description, "2016-02-14")
		XCTAssertEqual(inst.statusReason, "Patient wants to defer weight loss until after honeymoon.")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.target?.detailRange?.high?.code, "[lb_av]")
		XCTAssertEqual(inst.target?.detailRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.target?.detailRange?.high?.unit, "lbs")
		XCTAssertEqual(inst.target?.detailRange?.high?.value, "180")
		XCTAssertEqual(inst.target?.detailRange?.low?.code, "[lb_av]")
		XCTAssertEqual(inst.target?.detailRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.target?.detailRange?.low?.unit, "lbs")
		XCTAssertEqual(inst.target?.detailRange?.low?.value, "160")
		XCTAssertEqual(inst.target?.dueDate?.description, "2016-04-05")
		XCTAssertEqual(inst.target?.measure?.coding?[0].code, "3141-9")
		XCTAssertEqual(inst.target?.measure?.coding?[0].display, "Weight Measured")
		XCTAssertEqual(inst.target?.measure?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
}
