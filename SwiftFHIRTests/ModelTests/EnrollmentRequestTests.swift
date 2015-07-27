//
//  EnrollmentRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EnrollmentRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> EnrollmentRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> EnrollmentRequest {
		let instance = EnrollmentRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentRequest1() throws {
		let instance = try testEnrollmentRequest1_impl()
		try testEnrollmentRequest1_impl(instance.asJSON())
	}
	
	func testEnrollmentRequest1_impl(json: FHIRJSON? = nil) throws -> EnrollmentRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentrequest-example.json")
		
		XCTAssertEqual(inst.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "22345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.relationship!.code!, "spouse")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EnrollmentRequest.</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
