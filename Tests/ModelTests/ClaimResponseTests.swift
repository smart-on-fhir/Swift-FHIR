//
//  ClaimResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRClaimResponse = Models.ClaimResponse
#else
import SwiftFHIR
typealias SwiftFHIRClaimResponse = SwiftFHIR.ClaimResponse
#endif


class ClaimResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRClaimResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRClaimResponse {
		return try SwiftFHIRClaimResponse(json: json)
	}
	
	func testClaimResponse1() {
		do {
			let instance = try runClaimResponse1()
			try runClaimResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "R3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/remittance")
		XCTAssertEqual(inst.identifier?[0].value, "R3500")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.org/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "555123")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "135.57")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.value, "10.0")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[2].value, "80.0")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.value, "100.47")
		XCTAssertEqual(inst.item?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].sequenceLinkId, 1)
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.payeeType?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payeeType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payeetype")
		XCTAssertEqual(inst.payment?.amount?.code, "USD")
		XCTAssertEqual(inst.payment?.amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.payment?.amount?.value, "100.47")
		XCTAssertEqual(inst.payment?.date?.description, "2014-08-31")
		XCTAssertEqual(inst.payment?.identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/paymentidentifier")
		XCTAssertEqual(inst.payment?.identifier?.value, "201408-2-1569478")
		XCTAssertEqual(inst.payment?.type?.coding?[0].code, "complete")
		XCTAssertEqual(inst.payment?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ValueSet/ex-paymenttype")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ClaimResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.totalBenefit?.code, "USD")
		XCTAssertEqual(inst.totalBenefit?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalBenefit?.value, "100.47")
		XCTAssertEqual(inst.totalCost?.code, "USD")
		XCTAssertEqual(inst.totalCost?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalCost?.value, "135.57")
		
		return inst
	}
}
