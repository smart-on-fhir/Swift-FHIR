//
//  EligibilityResponseTests.swift
//  EligibilityResponseTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class EligibilityResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> EligibilityResponse? {
		let json = readJSONFile(filename)
		let instance = EligibilityResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityResponse1() {
		let inst = instantiateFrom("eligibilityresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Policy is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eligibilityresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testEligibilityResponse2() {
		let inst = instantiateFrom("eligibilityresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Policy is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eligibilityresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testEligibilityResponse3() {
		let inst = instantiateFrom("eligibilityresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a EligibilityResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Policy is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eligibilityresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
}
