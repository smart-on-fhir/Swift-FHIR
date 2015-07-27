//
//  EligibilityRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> EligibilityRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> EligibilityRequest {
		let instance = EligibilityRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityRequest1() throws {
		let instance = try testEligibilityRequest1_impl()
		try testEligibilityRequest1_impl(instance.asJSON())
	}
	
	func testEligibilityRequest1_impl(json: FHIRJSON? = nil) throws -> EligibilityRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityrequest-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "52345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
