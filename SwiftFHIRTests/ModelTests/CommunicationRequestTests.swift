//
//  CommunicationRequestTests.swift
//  CommunicationRequestTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CommunicationRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CommunicationRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> CommunicationRequest {
		let instance = CommunicationRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunicationRequest1() {
		let instance = testCommunicationRequest1_impl()
		testCommunicationRequest1_impl(json: instance.asJSON())
	}
	
	func testCommunicationRequest1_impl(json: JSONDictionary? = nil) -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "communicationrequest-example.canonical.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testCommunicationRequest2() {
		let instance = testCommunicationRequest2_impl()
		testCommunicationRequest2_impl(json: instance.asJSON())
	}
	
	func testCommunicationRequest2_impl(json: JSONDictionary? = nil) -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "communicationrequest-example.canonical.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testCommunicationRequest3() {
		let instance = testCommunicationRequest3_impl()
		testCommunicationRequest3_impl(json: instance.asJSON())
	}
	
	func testCommunicationRequest3_impl(json: JSONDictionary? = nil) -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
}
