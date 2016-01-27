//
//  ProcessResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcessResponseTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> ProcessResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ProcessResponse {
		let instance = ProcessResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessResponse1() {
		let instance = try? runProcessResponse1()
		XCTAssertNotNil(instance, "Must instantiate ProcessResponse")
		if let instance = instance {
			try! runProcessResponse1(instance.asJSON())
		}
	}
	
	func runProcessResponse1(json: FHIRJSON? = nil) throws -> ProcessResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst.id!, "SR2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!.code!, "complete")
		XCTAssertEqual(inst.outcome!.system!.absoluteString, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ProcessResponse</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
