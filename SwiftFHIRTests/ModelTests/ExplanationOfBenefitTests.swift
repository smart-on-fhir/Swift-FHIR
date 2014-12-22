//
//  ExplanationOfBenefitTests.swift
//  ExplanationOfBenefitTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ExplanationOfBenefitTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ExplanationOfBenefit? {
		let json = readJSONFile(filename)
		let instance = ExplanationOfBenefit(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testExplanationOfBenefit1() {
		let inst = instantiateFrom("explanationofbenefit-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExplanationOfBenefit instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eob")!)
		XCTAssertEqual(inst!.identifier![0].value!, "987654321")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testExplanationOfBenefit2() {
		let inst = instantiateFrom("explanationofbenefit-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExplanationOfBenefit instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eob")!)
		XCTAssertEqual(inst!.identifier![0].value!, "987654321")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testExplanationOfBenefit3() {
		let inst = instantiateFrom("explanationofbenefit-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ExplanationOfBenefit instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/eob")!)
		XCTAssertEqual(inst!.identifier![0].value!, "987654321")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
}
