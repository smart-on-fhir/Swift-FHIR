//
//  CommunicationRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CommunicationRequestTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> CommunicationRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> CommunicationRequest {
		let instance = CommunicationRequest(json: json)
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
	
	func runCommunicationRequest1(json: FHIRJSON? = nil) throws -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
