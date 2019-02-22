//
//  CoverageEligibilityRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCoverageEligibilityRequest = Models.CoverageEligibilityRequest
#else
import SwiftFHIR
typealias SwiftFHIRCoverageEligibilityRequest = SwiftFHIR.CoverageEligibilityRequest
#endif


class CoverageEligibilityRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCoverageEligibilityRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCoverageEligibilityRequest {
		return try SwiftFHIRCoverageEligibilityRequest(json: json)
	}
	
	func testCoverageEligibilityRequest1() {
		do {
			let instance = try runCoverageEligibilityRequest1()
			try runCoverageEligibilityRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityrequest-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "52345")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/coverageelegibilityrequest")
		XCTAssertEqual(inst.identifier?[0].value, "52345")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.provider?.reference, "Organization/1")
		XCTAssertEqual(inst.purpose?[0], EligibilityRequestPurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCoverageEligibilityRequest2() {
		do {
			let instance = try runCoverageEligibilityRequest2()
			try runCoverageEligibilityRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityrequest-example-2.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.enterer?.identifier?.system?.absoluteString, "http://happyvalleyclinic.com/staff")
		XCTAssertEqual(inst.enterer?.identifier?.value, "14")
		XCTAssertEqual(inst.facility?.identifier?.system?.absoluteString, "http://statecliniclicensor.com/clinicid")
		XCTAssertEqual(inst.facility?.identifier?.value, "G35B9")
		XCTAssertEqual(inst.id, "52346")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/coverageelegibilityrequest")
		XCTAssertEqual(inst.identifier?[0].value, "52346")
		XCTAssertEqual(inst.insurance?[0].businessArrangement, "NB8742")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].category?.coding?[0].code, "69")
		XCTAssertEqual(inst.item?[0].category?.coding?[0].display, "Maternity")
		XCTAssertEqual(inst.item?[0].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.provider?.reference, "Organization/1")
		XCTAssertEqual(inst.purpose?[0], EligibilityRequestPurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.purpose?[1], EligibilityRequestPurpose(rawValue: "benefits")!)
		XCTAssertEqual(inst.servicedDate?.description, "2014-09-17")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
