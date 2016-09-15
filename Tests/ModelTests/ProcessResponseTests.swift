//
//  ProcessResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcessResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ProcessResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ProcessResponse {
		let instance = SwiftFHIR.ProcessResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessResponse1() {
		do {
			let instance = try runProcessResponse1()
			try runProcessResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id, "SR2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.organizationReference?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.code, "complete")
		XCTAssertEqual(inst.outcome?.system?.absoluteString, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.requestReference?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ProcessResponse</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
