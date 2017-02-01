//
//  EligibilityRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREligibilityRequest = Models.EligibilityRequest
#else
import SwiftFHIR
typealias SwiftFHIREligibilityRequest = SwiftFHIR.EligibilityRequest
#endif


class EligibilityRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREligibilityRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREligibilityRequest {
		return try SwiftFHIREligibilityRequest(json: json)
	}
	
	func testEligibilityRequest1() {
		do {
			let instance = try runEligibilityRequest1()
			try runEligibilityRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityrequest-example-2.json")
		
		XCTAssertEqual(inst.benefitCategory?.coding?[0].code, "medical")
		XCTAssertEqual(inst.benefitCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitSubCategory?.coding?[0].code, "69")
		XCTAssertEqual(inst.benefitSubCategory?.coding?[0].display, "Maternity")
		XCTAssertEqual(inst.benefitSubCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.businessArrangement, "NB8742")
		XCTAssertEqual(inst.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.enterer?.identifier?.system?.absoluteString, "http://happyvalleyclinic.com/staff")
		XCTAssertEqual(inst.enterer?.identifier?.value, "14")
		XCTAssertEqual(inst.facility?.identifier?.system?.absoluteString, "http://statecliniclicensor.com/clinicid")
		XCTAssertEqual(inst.facility?.identifier?.value, "G35B9")
		XCTAssertEqual(inst.id, "52346")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier?[0].value, "52346")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.provider?.identifier?.system?.absoluteString, "http://happyvalleyclinic.com/staff")
		XCTAssertEqual(inst.provider?.identifier?.value, "18")
		XCTAssertEqual(inst.servicedDate?.description, "2014-09-17")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEligibilityRequest2() {
		do {
			let instance = try runEligibilityRequest2()
			try runEligibilityRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityrequest-example.json")
		
		XCTAssertEqual(inst.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "52345")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/elegibilityrequest")
		XCTAssertEqual(inst.identifier?[0].value, "52345")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.priority?.coding?[0].code, "normal")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
