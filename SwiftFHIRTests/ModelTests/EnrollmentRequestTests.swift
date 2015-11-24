//
//  EnrollmentRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EnrollmentRequestTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> EnrollmentRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> EnrollmentRequest {
		let instance = EnrollmentRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentRequest1() {
		let instance = try? runEnrollmentRequest1()
		XCTAssertNotNil(instance, "Must instantiate EnrollmentRequest")
		if let instance = instance {
			try! runEnrollmentRequest1(instance.asJSON())
		}
	}
	
	func runEnrollmentRequest1(json: FHIRJSON? = nil) throws -> EnrollmentRequest {
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
