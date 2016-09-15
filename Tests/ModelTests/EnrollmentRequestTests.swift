//
//  EnrollmentRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EnrollmentRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EnrollmentRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.EnrollmentRequest {
		let instance = SwiftFHIR.EnrollmentRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentRequest1() {
		do {
			let instance = try runEnrollmentRequest1()
			try runEnrollmentRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EnrollmentRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runEnrollmentRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EnrollmentRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentrequest-example.json")
		
		XCTAssertEqual(inst.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "22345")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier?[0].value, "EN22345")
		XCTAssertEqual(inst.organizationReference?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subjectReference?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EnrollmentRequest.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
