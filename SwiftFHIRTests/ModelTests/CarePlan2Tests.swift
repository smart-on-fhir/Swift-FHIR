//
//  CarePlan2Tests.swift
//  CarePlan2Tests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class CarePlan2Tests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> CarePlan2? {
		let json = readJSONFile(filename)
		let instance = CarePlan2(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCarePlan21() {
		let inst = instantiateFrom("careplan2-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a CarePlan2 instance")
	
		XCTAssertEqual(inst!.activity![0].reference!, "Procedure/12345")
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "#p1")
		XCTAssertEqual(inst!.goal![0].display!, "Target weight is 80 kg.")
		XCTAssertEqual(inst!.goal![0].reference!, "Goal/12345")
		XCTAssertEqual(inst!.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst!.participant![1].member!.display!, "Dorothy Dietitian")
		XCTAssertEqual(inst!.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst!.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2013-01-01")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testCarePlan22() {
		let inst = instantiateFrom("careplan2-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a CarePlan2 instance")
	
		XCTAssertEqual(inst!.activity![0].reference!, "Procedure/12345")
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "#p1")
		XCTAssertEqual(inst!.goal![0].display!, "Target weight is 80 kg.")
		XCTAssertEqual(inst!.goal![0].reference!, "Goal/12345")
		XCTAssertEqual(inst!.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst!.participant![1].member!.display!, "Dorothy Dietitian")
		XCTAssertEqual(inst!.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst!.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2013-01-01")!)
		XCTAssertEqual(inst!.status!, "active")
	}
	
	func testCarePlan23() {
		let inst = instantiateFrom("careplan2-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a CarePlan2 instance")
	
		XCTAssertEqual(inst!.activity![0].reference!, "Procedure/12345")
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "#p1")
		XCTAssertEqual(inst!.goal![0].display!, "Target weight is 80 kg.")
		XCTAssertEqual(inst!.goal![0].reference!, "Goal/12345")
		XCTAssertEqual(inst!.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst!.participant![1].member!.display!, "Dorothy Dietitian")
		XCTAssertEqual(inst!.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst!.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2013-01-01")!)
		XCTAssertEqual(inst!.status!, "active")
	}
}
