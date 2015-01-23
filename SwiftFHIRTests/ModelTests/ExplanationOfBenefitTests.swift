//
//  ExplanationOfBenefitTests.swift
//  ExplanationOfBenefitTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ExplanationOfBenefitTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ExplanationOfBenefit {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ExplanationOfBenefit {
		let instance = ExplanationOfBenefit(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testExplanationOfBenefit1() {
		let instance = testExplanationOfBenefit1_impl()
		testExplanationOfBenefit1_impl(json: instance.asJSON())
	}
	
	func testExplanationOfBenefit1_impl(json: JSONDictionary? = nil) -> ExplanationOfBenefit {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "explanationofbenefit-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/eob")
		XCTAssertEqual(inst.identifier![0].value!, "987654321")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
	
	func testExplanationOfBenefit2() {
		let instance = testExplanationOfBenefit2_impl()
		testExplanationOfBenefit2_impl(json: instance.asJSON())
	}
	
	func testExplanationOfBenefit2_impl(json: JSONDictionary? = nil) -> ExplanationOfBenefit {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "explanationofbenefit-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/eob")
		XCTAssertEqual(inst.identifier![0].value!, "987654321")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
	
	func testExplanationOfBenefit3() {
		let instance = testExplanationOfBenefit3_impl()
		testExplanationOfBenefit3_impl(json: instance.asJSON())
	}
	
	func testExplanationOfBenefit3_impl(json: JSONDictionary? = nil) -> ExplanationOfBenefit {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "explanationofbenefit-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/eob")
		XCTAssertEqual(inst.identifier![0].value!, "987654321")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
}
