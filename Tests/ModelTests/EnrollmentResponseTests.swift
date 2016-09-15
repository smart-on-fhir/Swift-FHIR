//
//  EnrollmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EnrollmentResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EnrollmentResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.EnrollmentResponse {
		let instance = SwiftFHIR.EnrollmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentResponse1() {
		do {
			let instance = try runEnrollmentResponse1()
			try runEnrollmentResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EnrollmentResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runEnrollmentResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EnrollmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Dependant added to policy.")
		XCTAssertEqual(inst.id, "ER2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier?[0].value, "781234")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the EnrollmentResponse</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
