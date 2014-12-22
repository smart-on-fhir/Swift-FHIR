//
//  EnrollmentRequestTests.swift
//  EnrollmentRequestTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class EnrollmentRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> EnrollmentRequest? {
		let json = readJSONFile(filename)
		let instance = EnrollmentRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentRequest1() {
		let inst = instantiateFrom("enrollmentrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentRequest instance")
	
		XCTAssertEqual(inst!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/enrollmentrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.relationship!.code!, "spouse")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testEnrollmentRequest2() {
		let inst = instantiateFrom("enrollmentrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentRequest instance")
	
		XCTAssertEqual(inst!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/enrollmentrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.relationship!.code!, "spouse")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testEnrollmentRequest3() {
		let inst = instantiateFrom("enrollmentrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentRequest instance")
	
		XCTAssertEqual(inst!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/enrollmentrequest")!)
		XCTAssertEqual(inst!.identifier![0].value!, "EN22345")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.relationship!.code!, "spouse")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
}
