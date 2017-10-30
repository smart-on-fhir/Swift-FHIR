//
//  MessageHeaderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRMessageHeader = SwiftFHIR.MessageHeader


class MessageHeaderTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMessageHeader {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMessageHeader {
		return try SwiftFHIRMessageHeader(json: json)
	}
	
	func testMessageHeader1() {
		do {
			let instance = try runMessageHeader1()
			try runMessageHeader1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MessageHeader successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMessageHeader1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMessageHeader {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "messageheader-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.destination?[0].endpoint?.absoluteString, "llp:10.11.12.14:5432")
		XCTAssertEqual(inst.destination?[0].name, "Acme Message Gateway")
		XCTAssertEqual(inst.destination?[0].target?.reference, "Device/example")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.event?.code, "admin-notify")
		XCTAssertEqual(inst.event?.system?.absoluteString, "http://hl7.org/fhir/message-events")
		XCTAssertEqual(inst.focus?[0].reference, "Patient/example")
		XCTAssertEqual(inst.id, "1cbdfb97-5859-48a4-8301-d54eab818d68")
		XCTAssertEqual(inst.reason?.coding?[0].code, "admit")
		XCTAssertEqual(inst.reason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/message-reasons-encounter")
		XCTAssertEqual(inst.response?.code, ResponseType(rawValue: "ok")!)
		XCTAssertEqual(inst.response?.identifier, "5015fe84-8e76-4526-89d8-44b322e8d4fb")
		XCTAssertEqual(inst.sender?.reference, "Organization/1")
		XCTAssertEqual(inst.source?.contact?.system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.source?.contact?.value, "+1 (555) 123 4567")
		XCTAssertEqual(inst.source?.endpoint?.absoluteString, "llp:10.11.12.13:5432")
		XCTAssertEqual(inst.source?.name, "Acme Central Patient Registry")
		XCTAssertEqual(inst.source?.software, "FooBar Patient Manager")
		XCTAssertEqual(inst.source?.version, "3.1.45.AABB")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.timestamp?.description, "2012-01-04T09:10:14Z")
		
		return inst
	}
}
