//
//  ClaimResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ClaimResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ClaimResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ClaimResponse {
		let instance = SwiftFHIR.ClaimResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testClaimResponse1() {
		do {
			let instance = try runClaimResponse1()
			try runClaimResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runClaimResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ClaimResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "R3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/remittance")
		XCTAssertEqual(inst.identifier?[0].value, "R3500")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].adjudication?[0].code?.code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.value, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[1].code?.code, "copay")
		XCTAssertEqual(inst.item?[0].adjudication?[2].code?.code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[2].value, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.value, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst.item?[0].adjudication?[3].code?.code, "benefit")
		XCTAssertEqual(inst.item?[0].sequenceLinkId, UInt(1))
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.payeeType?.code, "provider")
		XCTAssertEqual(inst.payeeType?.system?.absoluteString, "http://hl7.org/fhir/payeetype")
		XCTAssertEqual(inst.paymentAmount?.code, "USD")
		XCTAssertEqual(inst.paymentAmount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.paymentAmount?.value, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst.paymentDate?.description, "2014-08-31")
		XCTAssertEqual(inst.paymentRef?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/paymentRef")
		XCTAssertEqual(inst.paymentRef?.value, "201408-2-1569478")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the ClaimResponse</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.totalBenefit?.code, "USD")
		XCTAssertEqual(inst.totalBenefit?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalBenefit?.value, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst.totalCost?.code, "USD")
		XCTAssertEqual(inst.totalCost?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalCost?.value, NSDecimalNumber(string: "135.57"))
		
		return inst
	}
}
