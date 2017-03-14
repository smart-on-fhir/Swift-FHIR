//
//  ServiceDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11599 on 2017-03-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRServiceDefinition = Models.ServiceDefinition
#else
import SwiftFHIR
typealias SwiftFHIRServiceDefinition = SwiftFHIR.ServiceDefinition
#endif


class ServiceDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRServiceDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRServiceDefinition {
		return try SwiftFHIRServiceDefinition(json: json)
	}
	
	func testServiceDefinition1() {
		do {
			let instance = try runServiceDefinition1()
			try runServiceDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ServiceDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runServiceDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRServiceDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "servicedefinition-example.json")
		
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Guideline appropriate ordering is used to assess appropriateness of an order given a patient, a proposed order, and a set of clinical indications.")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "guildeline-appropriate-ordering")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Guideline Appropriate Ordering Module")
		XCTAssertEqual(inst.topic?[0].text, "Guideline Appropriate Ordering")
		XCTAssertEqual(inst.topic?[1].text, "Appropriate Use Criteria")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
}
