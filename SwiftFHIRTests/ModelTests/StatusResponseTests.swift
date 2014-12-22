//
//  StatusResponseTests.swift
//  StatusResponseTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class StatusResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> StatusResponse? {
		let json = readJSONFile(filename)
		let instance = StatusResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStatusResponse1() {
		let inst = instantiateFrom("statusresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/statusresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!.code!, "complete")
		XCTAssertEqual(inst!.outcome!.system!, NSURL(string: "http://www.hl7.org/fhir/processoutcomecodes")!)
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testStatusResponse2() {
		let inst = instantiateFrom("statusresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/statusresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!.code!, "complete")
		XCTAssertEqual(inst!.outcome!.system!, NSURL(string: "http://www.hl7.org/fhir/processoutcomecodes")!)
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
	
	func testStatusResponse3() {
		let inst = instantiateFrom("statusresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a StatusResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Specified coverage is currently in-force.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/statusresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "881234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!.code!, "complete")
		XCTAssertEqual(inst!.outcome!.system!, NSURL(string: "http://www.hl7.org/fhir/processoutcomecodes")!)
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
	}
}
