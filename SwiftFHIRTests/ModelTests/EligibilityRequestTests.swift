//
//  EligibilityRequestTests.swift
//  EligibilityRequestTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EligibilityRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> EligibilityRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> EligibilityRequest {
		let instance = EligibilityRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityRequest1() {
		let instance = testEligibilityRequest1_impl()
		testEligibilityRequest1_impl(json: instance.asJSON())
	}
	
	func testEligibilityRequest1_impl(json: JSONDictionary? = nil) -> EligibilityRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "eligibilityrequest-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "52345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testEligibilityRequest2() {
		let instance = testEligibilityRequest2_impl()
		testEligibilityRequest2_impl(json: instance.asJSON())
	}
	
	func testEligibilityRequest2_impl(json: JSONDictionary? = nil) -> EligibilityRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "eligibilityrequest-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "52345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testEligibilityRequest3() {
		let instance = testEligibilityRequest3_impl()
		testEligibilityRequest3_impl(json: instance.asJSON())
	}
	
	func testEligibilityRequest3_impl(json: JSONDictionary? = nil) -> EligibilityRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "eligibilityrequest-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "52345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
