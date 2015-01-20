//
//  StatusRequestTests.swift
//  StatusRequestTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class StatusRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> StatusRequest? {
		let json = readJSONFile(filename)
		let instance = StatusRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStatusRequest1() {
		let inst = instantiateFrom("statusrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/statusrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
	
	func testStatusRequest2() {
		let inst = instantiateFrom("statusrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/statusrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
	
	func testStatusRequest3() {
		let inst = instantiateFrom("statusrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/statusrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "1776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst!.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
	}
}
