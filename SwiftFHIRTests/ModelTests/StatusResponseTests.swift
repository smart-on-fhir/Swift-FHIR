//
//  StatusResponseTests.swift
//  StatusResponseTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class StatusResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> StatusResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> StatusResponse {
		let instance = StatusResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStatusResponse1() {
		let instance = testStatusResponse1_impl()
		testStatusResponse1_impl(json: instance.asJSON())
	}
	
	func testStatusResponse1_impl(json: JSONDictionary? = nil) -> StatusResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "statusresponse-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id!, "SR2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/statusresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!.code!, "complete")
		XCTAssertEqual(inst.outcome!.system!.absoluteString!, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testStatusResponse2() {
		let instance = testStatusResponse2_impl()
		testStatusResponse2_impl(json: instance.asJSON())
	}
	
	func testStatusResponse2_impl(json: JSONDictionary? = nil) -> StatusResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "statusresponse-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id!, "SR2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/statusresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!.code!, "complete")
		XCTAssertEqual(inst.outcome!.system!.absoluteString!, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testStatusResponse3() {
		let instance = testStatusResponse3_impl()
		testStatusResponse3_impl(json: instance.asJSON())
	}
	
	func testStatusResponse3_impl(json: JSONDictionary? = nil) -> StatusResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "statusresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id!, "SR2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/statusresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!.code!, "complete")
		XCTAssertEqual(inst.outcome!.system!.absoluteString!, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
