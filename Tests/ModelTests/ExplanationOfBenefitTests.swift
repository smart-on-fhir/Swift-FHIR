//
//  ExplanationOfBenefitTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ExplanationOfBenefitTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ExplanationOfBenefit {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ExplanationOfBenefit {
		return try SwiftFHIR.ExplanationOfBenefit(json: json)
	}
	
	func testExplanationOfBenefit1() {
		do {
			let instance = try runExplanationOfBenefit1()
			try runExplanationOfBenefit1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ExplanationOfBenefit successfully, but threw")
		}
	}
	
	@discardableResult
	func runExplanationOfBenefit1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ExplanationOfBenefit {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "explanationofbenefit-example.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, UInt(1))
		XCTAssertEqual(inst.claim?.reference, "Claim/100150")
		XCTAssertEqual(inst.claimResponse?.reference, "ClaimResponse/R3500")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "EB3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/explanationofbenefit")
		XCTAssertEqual(inst.identifier?[0].value, "987654321")
		XCTAssertEqual(inst.insurance?.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, NSDecimalNumber(string: "120.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[1].value, NSDecimalNumber(string: "0.8"))
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.value, NSDecimalNumber(string: "96.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], UInt(1))
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/service-uscls")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.totalBenefit?.code, "USD")
		XCTAssertEqual(inst.totalBenefit?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalBenefit?.value, NSDecimalNumber(string: "96.0"))
		XCTAssertEqual(inst.totalCost?.code, "USD")
		XCTAssertEqual(inst.totalCost?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalCost?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		
		return inst
	}
}
