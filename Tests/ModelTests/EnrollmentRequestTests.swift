//
//  EnrollmentRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREnrollmentRequest = Models.EnrollmentRequest
#else
import SwiftFHIR
typealias SwiftFHIREnrollmentRequest = SwiftFHIR.EnrollmentRequest
#endif


class EnrollmentRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREnrollmentRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREnrollmentRequest {
		return try SwiftFHIREnrollmentRequest(json: json)
	}
	
	func testEnrollmentRequest1() {
		do {
			let instance = try runEnrollmentRequest1()
			try runEnrollmentRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EnrollmentRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEnrollmentRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREnrollmentRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentrequest-example.json")
		
		XCTAssertEqual(inst.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "22345")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/enrollmentrequest")
		XCTAssertEqual(inst.identifier?[0].value, "EN22345")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EnrollmentRequest.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
