//
//  EligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EligibilityResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.EligibilityResponse {
		let instance = SwiftFHIR.EligibilityResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityResponse1() {
		do {
			let instance = try runEligibilityResponse1()
			try runEligibilityResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runEligibilityResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EligibilityResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
