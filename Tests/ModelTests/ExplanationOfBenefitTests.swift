//
//  ExplanationOfBenefitTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRExplanationOfBenefit = Models.ExplanationOfBenefit
#else
import SwiftFHIR
typealias SwiftFHIRExplanationOfBenefit = SwiftFHIR.ExplanationOfBenefit
#endif


class ExplanationOfBenefitTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRExplanationOfBenefit {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRExplanationOfBenefit {
		return try SwiftFHIRExplanationOfBenefit(json: json)
	}
	
	func testExplanationOfBenefit1() {
		do {
			let instance = try runExplanationOfBenefit1()
			try runExplanationOfBenefit1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ExplanationOfBenefit successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runExplanationOfBenefit1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRExplanationOfBenefit {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "explanationofbenefit-example.json")
		
		XCTAssertEqual(inst.careTeam?[0].provider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.careTeam?[0].sequence, 1)
		XCTAssertEqual(inst.claim?.reference, "Claim/100150")
		XCTAssertEqual(inst.claimResponse?.reference, "ClaimResponse/R3500")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/1")
		XCTAssertEqual(inst.facility?.reference, "Location/1")
		XCTAssertEqual(inst.id, "EB3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/explanationofbenefit")
		XCTAssertEqual(inst.identifier?[0].value, "987654321")
		XCTAssertEqual(inst.insurance?.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "120.0")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[1].value, "0.8")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.value, "96.0")
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].careTeamLinkId?[0], 1)
		XCTAssertEqual(inst.item?[0].encounter?[0].reference, "Encounter/example")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].service?.coding?[0].code, "1200")
		XCTAssertEqual(inst.item?[0].service?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/service-uscls")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.payee?.party?.reference, "Organization/2")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payee?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payeetype")
		XCTAssertEqual(inst.provider?.reference, "Practitioner/1")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.totalBenefit?.code, "USD")
		XCTAssertEqual(inst.totalBenefit?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalBenefit?.value, "96.0")
		XCTAssertEqual(inst.totalCost?.code, "USD")
		XCTAssertEqual(inst.totalCost?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalCost?.value, "135.57")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimtype")
		
		return inst
	}
}
