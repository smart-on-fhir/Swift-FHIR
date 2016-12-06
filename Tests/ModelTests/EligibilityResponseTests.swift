//
//  EligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EligibilityResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.EligibilityResponse {
		return try SwiftFHIR.EligibilityResponse(json: json)
	}
	
	func testEligibilityResponse1() {
		do {
			let instance = try runEligibilityResponse1()
			try runEligibilityResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runEligibilityResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example-benefits.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertTrue(inst.inforce ?? false)
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].code, "medical")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "500000"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].benefitMoney?.value, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].type?.coding?[0].code, "copay-maximum")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[2].benefitUnsignedInt, UInt(20))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[2].type?.coding?[0].code, "copay-percent")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].network?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].subCategory?.coding?[0].code, "30")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].subCategory?.coding?[0].display, "Health Benefit Plan Coverage")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].term?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].unit?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].category?.coding?[0].code, "medical")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "15000"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].network?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].subCategory?.coding?[0].code, "69")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].subCategory?.coding?[0].display, "Maternity")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].term?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].unit?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].category?.coding?[0].code, "oral")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "2000"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].network?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].subCategory?.coding?[0].code, "F3")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].subCategory?.coding?[0].display, "Dental Coverage")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].term?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].unit?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].category?.coding?[0].code, "vision")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "400"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].network?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].code, "F6")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].display, "Vision Coverage")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].term?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].unit?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].category?.coding?[0].code, "vision")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[0].benefitString, "shared")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[0].type?.coding?[0].code, "room")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].benefitMoney?.value, NSDecimalNumber(string: "600"))
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].network?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].subCategory?.coding?[0].code, "49")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].subCategory?.coding?[0].display, "Hospital Room and Board")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].term?.coding?[0].code, "day")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].term?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].unit?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEligibilityResponse2() {
		do {
			let instance = try runEligibilityResponse2()
			try runEligibilityResponse2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runEligibilityResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertTrue(inst.inforce ?? false)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
