//
//  CommunicationRequestTests.swift
//  CommunicationRequestTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class CommunicationRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> CommunicationRequest? {
		let json = readJSONFile(filename)
		let instance = CommunicationRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunicationRequest1() {
		let inst = instantiateFrom("communicationrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a CommunicationRequest instance")
	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testCommunicationRequest2() {
		let inst = instantiateFrom("communicationrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a CommunicationRequest instance")
	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testCommunicationRequest3() {
		let inst = instantiateFrom("communicationrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a CommunicationRequest instance")
	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
