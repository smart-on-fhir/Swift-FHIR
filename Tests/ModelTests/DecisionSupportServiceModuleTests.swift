//
//  DecisionSupportServiceModuleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DecisionSupportServiceModuleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DecisionSupportServiceModule {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DecisionSupportServiceModule {
		let instance = SwiftFHIR.DecisionSupportServiceModule(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDecisionSupportServiceModule1() {
		do {
			let instance = try runDecisionSupportServiceModule1()
			try runDecisionSupportServiceModule1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DecisionSupportServiceModule successfully, but threw")
		}
	}
	
	@discardableResult
	func runDecisionSupportServiceModule1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DecisionSupportServiceModule {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "decisionsupportservicemodule-example.json")
		
		XCTAssertEqual(inst.description_fhir, "Guideline appropriate ordering is used to assess appropriateness of an order given a patient, a proposed order, and a set of clinical indications.")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "guildeline-appropriate-ordering")
		XCTAssertEqual(inst.parameter?[0].name, "patient")
		XCTAssertEqual(inst.parameter?[0].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-patient")
		XCTAssertEqual(inst.parameter?[0].type, "Patient")
		XCTAssertEqual(inst.parameter?[0].use, "in")
		XCTAssertEqual(inst.parameter?[1].name, "order")
		XCTAssertEqual(inst.parameter?[1].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-task")
		XCTAssertEqual(inst.parameter?[1].type, "Task")
		XCTAssertEqual(inst.parameter?[1].use, "in")
		XCTAssertEqual(inst.parameter?[2].name, "order")
		XCTAssertEqual(inst.parameter?[2].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-task")
		XCTAssertEqual(inst.parameter?[2].type, "Task")
		XCTAssertEqual(inst.parameter?[2].use, "out")
		XCTAssertEqual(inst.parameter?[3].name, "result")
		XCTAssertEqual(inst.parameter?[3].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-result")
		XCTAssertEqual(inst.parameter?[3].type, "Basic")
		XCTAssertEqual(inst.parameter?[3].use, "out")
		XCTAssertEqual(inst.publicationDate?.description, "2015-07-22")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Guideline Appropriate Ordering Module</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Guideline Appropriate Ordering Module")
		XCTAssertEqual(inst.topic?[0].text, "Guideline Appropriate Ordering")
		XCTAssertEqual(inst.topic?[1].text, "Appropriate Use Criteria")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
}
