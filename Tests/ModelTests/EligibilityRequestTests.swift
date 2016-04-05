//
//  EligibilityRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityRequestTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> EligibilityRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> EligibilityRequest {
		let instance = EligibilityRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityRequest1() {
		do {
			let instance = try runEligibilityRequest1()
			try runEligibilityRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EligibilityRequest successfully, but threw")
		}
	}
	
	func runEligibilityRequest1(json: FHIRJSON? = nil) throws -> EligibilityRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityrequest-example.json")
		
		XCTAssertEqual(inst.coverageReference!.reference!, "Coverage/9876B1")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "52345")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.organizationReference!.reference!, "Organization/1")
		XCTAssertEqual(inst.patientReference!.reference!, "Patient/pat1")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.targetReference!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
