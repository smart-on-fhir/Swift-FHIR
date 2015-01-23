//
//  EnrollmentRequestTests.swift
//  EnrollmentRequestTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EnrollmentRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> EnrollmentRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> EnrollmentRequest {
		let instance = EnrollmentRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentRequest1() {
		let instance = testEnrollmentRequest1_impl()
		testEnrollmentRequest1_impl(json: instance.asJSON())
	}
	
	func testEnrollmentRequest1_impl(json: JSONDictionary? = nil) -> EnrollmentRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentrequest-example.canonical.json")
		
		XCTAssertEqual(inst.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.relationship!.code!, "spouse")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		
		return inst
	}
	
	func testEnrollmentRequest2() {
		let instance = testEnrollmentRequest2_impl()
		testEnrollmentRequest2_impl(json: instance.asJSON())
	}
	
	func testEnrollmentRequest2_impl(json: JSONDictionary? = nil) -> EnrollmentRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentrequest-example.canonical.json")
		
		XCTAssertEqual(inst.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.relationship!.code!, "spouse")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		
		return inst
	}
	
	func testEnrollmentRequest3() {
		let instance = testEnrollmentRequest3_impl()
		testEnrollmentRequest3_impl(json: instance.asJSON())
	}
	
	func testEnrollmentRequest3_impl(json: JSONDictionary? = nil) -> EnrollmentRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentrequest-example.json")
		
		XCTAssertEqual(inst.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.relationship!.code!, "spouse")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		
		return inst
	}
}
