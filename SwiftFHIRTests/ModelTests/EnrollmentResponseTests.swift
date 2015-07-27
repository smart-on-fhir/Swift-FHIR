//
//  EnrollmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EnrollmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> EnrollmentResponse {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> EnrollmentResponse {
		let instance = EnrollmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentResponse1() throws {
		let instance = try testEnrollmentResponse1_impl()
		try testEnrollmentResponse1_impl(instance.asJSON())
	}
	
	func testEnrollmentResponse1_impl(json: FHIRJSON? = nil) throws -> EnrollmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst.id!, "ER2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier![0].value!, "781234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EnrollmentResponse</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
