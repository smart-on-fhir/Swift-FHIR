//
//  StatusRequestTests.swift
//  StatusRequestTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class StatusRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> StatusRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> StatusRequest {
		let instance = StatusRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStatusRequest1() {
		let instance = testStatusRequest1_impl()
		testStatusRequest1_impl(json: instance.asJSON())
	}
	
	func testStatusRequest1_impl(json: JSONDictionary? = nil) -> StatusRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "statusrequest-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/statusrequest")
		XCTAssertEqual(inst.identifier![0].value!, "1776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the StatusRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
