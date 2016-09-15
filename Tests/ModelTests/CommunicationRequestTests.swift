//
//  CommunicationRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CommunicationRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.CommunicationRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.CommunicationRequest {
		let instance = SwiftFHIR.CommunicationRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunicationRequest1() {
		do {
			let instance = try runCommunicationRequest1()
			try runCommunicationRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test CommunicationRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runCommunicationRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
