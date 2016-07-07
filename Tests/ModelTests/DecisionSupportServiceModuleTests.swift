//
//  DecisionSupportServiceModuleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-07-07.
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
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.moduleMetadata?.description_fhir, "Guideline appropriate ordering is used to assess appropriateness of an order given a patient, a proposed order, and a set of clinical indications.")
		XCTAssertEqual(inst.moduleMetadata?.identifier?[0].use, "official")
		XCTAssertEqual(inst.moduleMetadata?.identifier?[0].value, "guildeline-appropriate-ordering")
		XCTAssertEqual(inst.moduleMetadata?.publicationDate?.description, "2015-07-22")
		XCTAssertEqual(inst.moduleMetadata?.status, "draft")
		XCTAssertEqual(inst.moduleMetadata?.title, "Guideline Appropriate Ordering Module")
		XCTAssertEqual(inst.moduleMetadata?.topic?[0].text, "Guideline Appropriate Ordering")
		XCTAssertEqual(inst.moduleMetadata?.topic?[1].text, "Appropriate Use Criteria")
		XCTAssertEqual(inst.moduleMetadata?.type, "module")
		XCTAssertEqual(inst.moduleMetadata?.version, "1.0.0")
		XCTAssertEqual(inst.parameter?[0].name, "patient")
		XCTAssertEqual(inst.parameter?[0].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-patient")
		XCTAssertEqual(inst.parameter?[0].type, "Patient")
		XCTAssertEqual(inst.parameter?[0].use, "in")
		XCTAssertEqual(inst.parameter?[1].name, "order")
		XCTAssertEqual(inst.parameter?[1].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-order")
		XCTAssertEqual(inst.parameter?[1].type, "Order")
		XCTAssertEqual(inst.parameter?[1].use, "in")
		XCTAssertEqual(inst.parameter?[2].name, "order")
		XCTAssertEqual(inst.parameter?[2].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-order")
		XCTAssertEqual(inst.parameter?[2].type, "Order")
		XCTAssertEqual(inst.parameter?[2].use, "out")
		XCTAssertEqual(inst.parameter?[3].name, "result")
		XCTAssertEqual(inst.parameter?[3].profile?.reference, "http://hl7.org/fhir/StructureDefinition/gao-result")
		XCTAssertEqual(inst.parameter?[3].type, "Basic")
		XCTAssertEqual(inst.parameter?[3].use, "out")
		XCTAssertEqual(inst.text?.div, "<div>Guideline Appropriate Ordering Module</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
