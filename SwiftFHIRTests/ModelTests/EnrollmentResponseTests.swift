//
//  EnrollmentResponseTests.swift
//  EnrollmentResponseTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class EnrollmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> EnrollmentResponse? {
		let json = readJSONFile(filename)
		let instance = EnrollmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentResponse1() {
		let inst = instantiateFrom("enrollmentresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testEnrollmentResponse2() {
		let inst = instantiateFrom("enrollmentresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testEnrollmentResponse3() {
		let inst = instantiateFrom("enrollmentresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a EnrollmentResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
}
