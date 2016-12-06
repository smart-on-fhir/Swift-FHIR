//
//  MessageDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MessageDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.MessageDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.MessageDefinition {
		return try SwiftFHIR.MessageDefinition(json: json)
	}
	
	func testMessageDefinition1() {
		do {
			let instance = try runMessageDefinition1()
			try runMessageDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MessageDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMessageDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.MessageDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "messagedefinition-example.json")
		
		XCTAssertEqual(inst.category, MessageSignificanceCategory(rawValue: "Notification")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org")
		XCTAssertEqual(inst.date?.description, "2016-11-09")
		XCTAssertEqual(inst.event?.code, "patient-link")
		XCTAssertEqual(inst.event?.system?.absoluteString, "http://hl7.org/fhir/message-events")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.focus?[0].code, "Patient")
		XCTAssertEqual(inst.focus?[0].max, "2")
		XCTAssertEqual(inst.focus?[0].min, UInt(2))
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "A24")
		XCTAssertEqual(inst.publisher, "Health Level Seven, Int'l")
		XCTAssertEqual(inst.purpose, "Notifies recipient systems that two patients have been 'linked' - meaning they represent the same individual")
		XCTAssertFalse(inst.responseRequired ?? true)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Link patients notification")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/MessageDefinition/example")
		
		return inst
	}
}
