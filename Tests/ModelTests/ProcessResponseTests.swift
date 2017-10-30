//
//  ProcessResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRProcessResponse = SwiftFHIR.ProcessResponse

class ProcessResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProcessResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProcessResponse {
		return try SwiftFHIRProcessResponse(json: json)
	}
	
	func testProcessResponse1() {
		do {
			let instance = try runProcessResponse1()
			try runProcessResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processresponse-example-error.json")
		
		XCTAssertEqual(inst.created?.description, "2014-07-14")
		XCTAssertEqual(inst.disposition, "Referred to claim not found on system.")
		XCTAssertEqual(inst.error?[0].coding?[0].code, "a001")
		XCTAssertEqual(inst.error?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/adjudication-error")
		XCTAssertEqual(inst.form?.coding?[0].code, "PRRESP/2016/01")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://ncforms.org/formid")
		XCTAssertEqual(inst.id, "SR2349")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier?[0].value, "ER987634")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "error")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.processNote?[0].text, "Please check the submitted payor identification and local claim number.")
		XCTAssertEqual(inst.processNote?[0].type?.coding?[0].code, "print")
		XCTAssertEqual(inst.processNote?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/note-type")
		XCTAssertEqual(inst.request?.reference, "http://happyvalley.com/fhir/claim/12204")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.requestProvider?.identifier?.system?.absoluteString, "http://npid.org/providerid")
		XCTAssertEqual(inst.requestProvider?.identifier?.value, "AZ43258")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ProcessResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessResponse2() {
		do {
			let instance = try runProcessResponse2()
			try runProcessResponse2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processresponse-example-pended.json")
		
		XCTAssertEqual(inst.communicationRequest?[0].reference, "#comreq-1")
		XCTAssertEqual(inst.contained?[0].id, "comreq-1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Additional information required.")
		XCTAssertEqual(inst.id, "SR2499")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881222")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "pended")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request?.reference, "http://happyvalley.com/fhir/claim/12345")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A ProcessResponse indicating pended status with a request for additional information.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessResponse3() {
		do {
			let instance = try runProcessResponse3()
			try runProcessResponse3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessResponse3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Adjudication processing completed, ClaimResponse and EOB ready for retrieval.")
		XCTAssertEqual(inst.id, "SR2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/processresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/processoutcomecodes")
		XCTAssertEqual(inst.request?.reference, "http://happyvalley.com/fhir/claim/12345")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ProcessResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
