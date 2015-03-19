//
//  ProcessResponseTests.swift
//  ProcessResponseTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProcessResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ProcessResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ProcessResponse {
		let instance = ProcessResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessResponse1() {
		let instance = testProcessResponse1_impl()
		testProcessResponse1_impl(json: instance.asJSON())
	}
	
	func testProcessResponse1_impl(json: JSONDictionary? = nil) -> ProcessResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id!, "SR2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!.code!, "complete")
		XCTAssertEqual(inst.outcome!.system!.absoluteString!, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ProcessResponse</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
