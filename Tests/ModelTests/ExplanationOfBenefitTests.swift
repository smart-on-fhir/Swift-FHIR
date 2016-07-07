//
//  ExplanationOfBenefitTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-07-07.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ExplanationOfBenefitTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ExplanationOfBenefit {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ExplanationOfBenefit {
		let instance = SwiftFHIR.ExplanationOfBenefit(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "explanationofbenefit-example.json")
		
		XCTAssertEqual(inst.claimReference?.reference, "Claim/100150")
		XCTAssertEqual(inst.coverage?.coverageReference?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "EB3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/explanationofbenefit")
		XCTAssertEqual(inst.identifier?[0].value, "987654321")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, NSDecimalNumber(string: "120.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[1].value, NSDecimalNumber(string: "0.8"))
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.code, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.value, NSDecimalNumber(string: "96.0"))
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.code, "benefit")
		XCTAssertEqual(inst.item?[0].net?.code, "USD")
		XCTAssertEqual(inst.item?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].net?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.item?[0].providerReference?.reference, "Practitioner/example")
		XCTAssertEqual(inst.item?[0].sequence, UInt(1))
		XCTAssertEqual(inst.item?[0].service?.code, "1200")
		XCTAssertEqual(inst.item?[0].service?.system?.absoluteString, "http://hl7.org/fhir/service-uscls")
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].type?.code, "service")
		XCTAssertEqual(inst.item?[0].unitPrice?.code, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst.organizationReference?.reference, "Organization/2")
		XCTAssertEqual(inst.patientReference?.reference, "Patient/pat1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.totalBenefit?.code, "USD")
		XCTAssertEqual(inst.totalBenefit?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalBenefit?.value, NSDecimalNumber(string: "96.0"))
		XCTAssertEqual(inst.totalCost?.code, "USD")
		XCTAssertEqual(inst.totalCost?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.totalCost?.value, NSDecimalNumber(string: "135.57"))
		
		return inst
	}
}
