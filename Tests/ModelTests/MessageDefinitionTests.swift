//
//  MessageDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMessageDefinition = Models.MessageDefinition
#else
import SwiftFHIR
typealias SwiftFHIRMessageDefinition = SwiftFHIR.MessageDefinition
#endif


class MessageDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMessageDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMessageDefinition {
		return try SwiftFHIRMessageDefinition(json: json)
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
	func runMessageDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMessageDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "messagedefinition-example.json")
		
		XCTAssertEqual(inst.category, MessageSignificanceCategory(rawValue: "notification")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org")
		XCTAssertEqual(inst.date?.description, "2016-11-09")
		XCTAssertEqual(inst.eventCoding?.code, "admin-notify")
		XCTAssertEqual(inst.eventCoding?.system?.absoluteString, "http://example.org/fhir/message-events")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "EXAMPLE")
		XCTAssertEqual(inst.publisher, "Health Level Seven, Int'l")
		XCTAssertEqual(inst.purpose, "Defines a base example for other MessageDefinition instances.")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Message definition base example</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Message definition base example")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/MessageDefinition/example")
		
		return inst
	}
}
