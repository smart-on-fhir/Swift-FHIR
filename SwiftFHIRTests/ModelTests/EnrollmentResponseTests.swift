//
//  EnrollmentResponseTests.swift
//  EnrollmentResponseTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EnrollmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> EnrollmentResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> EnrollmentResponse {
		let instance = EnrollmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEnrollmentResponse1() {
		let instance = testEnrollmentResponse1_impl()
		testEnrollmentResponse1_impl(json: instance.asJSON())
	}
	
	func testEnrollmentResponse1_impl(json: JSONDictionary? = nil) -> EnrollmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentresponse-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst.id!, "ER2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier![0].value!, "781234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
	
	func testEnrollmentResponse2() {
		let instance = testEnrollmentResponse2_impl()
		testEnrollmentResponse2_impl(json: instance.asJSON())
	}
	
	func testEnrollmentResponse2_impl(json: JSONDictionary? = nil) -> EnrollmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentresponse-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst.id!, "ER2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier![0].value!, "781234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
	
	func testEnrollmentResponse3() {
		let instance = testEnrollmentResponse3_impl()
		testEnrollmentResponse3_impl(json: instance.asJSON())
	}
	
	func testEnrollmentResponse3_impl(json: JSONDictionary? = nil) -> EnrollmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "enrollmentresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Dependant added to policy.")
		XCTAssertEqual(inst.id!, "ER2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier![0].value!, "781234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		
		return inst
	}
}
