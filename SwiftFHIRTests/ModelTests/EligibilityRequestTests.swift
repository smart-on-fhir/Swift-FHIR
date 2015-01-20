//
//  EligibilityRequestTests.swift
//  EligibilityRequestTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EligibilityRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> EligibilityRequest? {
		let json = readJSONFile(filename)
		let instance = EligibilityRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityRequest1() {
		let inst = instantiateFrom("eligibilityrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
	}
	
	func testEligibilityRequest2() {
		let inst = instantiateFrom("eligibilityrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
	}
	
	func testEligibilityRequest3() {
		let inst = instantiateFrom("eligibilityrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "52345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
	}
}
