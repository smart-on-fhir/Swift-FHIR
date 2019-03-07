//
//  EventDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREventDefinition = Models.EventDefinition
#else
import SwiftFHIR
typealias SwiftFHIREventDefinition = SwiftFHIR.EventDefinition
#endif


class EventDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREventDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREventDefinition {
		return try SwiftFHIREventDefinition(json: json)
	}
	
	func testEventDefinition1() {
		do {
			let instance = try runEventDefinition1()
			try runEventDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EventDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEventDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREventDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eventdefinition-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.purpose, "Monitor all admissions to Emergency")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.trigger?[0].condition?.description_fhir, "Encounter Location = emergency (active/completed encounters, current or previous)")
		XCTAssertEqual(inst.trigger?[0].condition?.expression, "(this | %previous).location.where(location = 'Location/emergency' and status in {'active', 'completed'}).exists()")
		XCTAssertEqual(inst.trigger?[0].condition?.language, "text/fhirpath")
		XCTAssertEqual(inst.trigger?[0].data?[0].type, "Encounter")
		XCTAssertEqual(inst.trigger?[0].name, "monitor-emergency-admissions")
		XCTAssertEqual(inst.trigger?[0].type, TriggerType(rawValue: "named-event")!)
		
		return inst
	}
}
