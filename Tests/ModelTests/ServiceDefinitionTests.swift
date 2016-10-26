//
//  ServiceDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ServiceDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ServiceDefinition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ServiceDefinition {
		let instance = SwiftFHIR.ServiceDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testServiceDefinition1() {
		do {
			let instance = try runServiceDefinition1()
			try runServiceDefinition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ServiceDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runServiceDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ServiceDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "servicedefinition-example.json")
		
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Guideline appropriate ordering is used to assess appropriateness of an order given a patient, a proposed order, and a set of clinical indications.")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "guildeline-appropriate-ordering")
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
