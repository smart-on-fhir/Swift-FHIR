//
//  EligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EligibilityResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.EligibilityResponse {
		let instance = SwiftFHIR.EligibilityResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example-benefits.json")
		
		XCTAssertEqual(inst.benefitBalance?[0].category?.code, "medical")
		XCTAssertEqual(inst.benefitBalance?[0].category?.system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "500000"))
		XCTAssertEqual(inst.benefitBalance?[0].financial?[0].type?.code, "benefit")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[1].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[1].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[1].benefitMoney?.value, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.benefitBalance?[0].financial?[1].type?.code, "copay-maximum")
		XCTAssertEqual(inst.benefitBalance?[0].financial?[2].benefitUnsignedInt, UInt(20))
		XCTAssertEqual(inst.benefitBalance?[0].financial?[2].type?.code, "copay-percent")
		XCTAssertEqual(inst.benefitBalance?[0].network?.code, "in")
		XCTAssertEqual(inst.benefitBalance?[0].network?.system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.benefitBalance?[0].subCategory?.code, "30")
		XCTAssertEqual(inst.benefitBalance?[0].subCategory?.display, "Health Benefit Plan Coverage")
		XCTAssertEqual(inst.benefitBalance?[0].subCategory?.system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.benefitBalance?[0].term?.code, "annual")
		XCTAssertEqual(inst.benefitBalance?[0].term?.system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.benefitBalance?[0].unit?.code, "individual")
		XCTAssertEqual(inst.benefitBalance?[0].unit?.system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.benefitBalance?[1].category?.code, "medical")
		XCTAssertEqual(inst.benefitBalance?[1].category?.system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitBalance?[1].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[1].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[1].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "15000"))
		XCTAssertEqual(inst.benefitBalance?[1].financial?[0].type?.code, "benefit")
		XCTAssertEqual(inst.benefitBalance?[1].network?.code, "in")
		XCTAssertEqual(inst.benefitBalance?[1].network?.system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.benefitBalance?[1].subCategory?.code, "69")
		XCTAssertEqual(inst.benefitBalance?[1].subCategory?.display, "Maternity")
		XCTAssertEqual(inst.benefitBalance?[1].subCategory?.system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.benefitBalance?[1].term?.code, "annual")
		XCTAssertEqual(inst.benefitBalance?[1].term?.system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.benefitBalance?[1].unit?.code, "individual")
		XCTAssertEqual(inst.benefitBalance?[1].unit?.system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.benefitBalance?[2].category?.code, "oral")
		XCTAssertEqual(inst.benefitBalance?[2].category?.system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitBalance?[2].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[2].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[2].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "2000"))
		XCTAssertEqual(inst.benefitBalance?[2].financial?[0].type?.code, "benefit")
		XCTAssertEqual(inst.benefitBalance?[2].network?.code, "in")
		XCTAssertEqual(inst.benefitBalance?[2].network?.system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.benefitBalance?[2].subCategory?.code, "F3")
		XCTAssertEqual(inst.benefitBalance?[2].subCategory?.display, "Dental Coverage")
		XCTAssertEqual(inst.benefitBalance?[2].subCategory?.system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.benefitBalance?[2].term?.code, "annual")
		XCTAssertEqual(inst.benefitBalance?[2].term?.system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.benefitBalance?[2].unit?.code, "individual")
		XCTAssertEqual(inst.benefitBalance?[2].unit?.system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.benefitBalance?[3].category?.code, "vision")
		XCTAssertEqual(inst.benefitBalance?[3].category?.system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitBalance?[3].financial?[0].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[3].financial?[0].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[3].financial?[0].benefitMoney?.value, NSDecimalNumber(string: "400"))
		XCTAssertEqual(inst.benefitBalance?[3].financial?[0].type?.code, "benefit")
		XCTAssertEqual(inst.benefitBalance?[3].network?.code, "in")
		XCTAssertEqual(inst.benefitBalance?[3].network?.system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.benefitBalance?[3].subCategory?.code, "F6")
		XCTAssertEqual(inst.benefitBalance?[3].subCategory?.display, "Vision Coverage")
		XCTAssertEqual(inst.benefitBalance?[3].subCategory?.system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.benefitBalance?[3].term?.code, "annual")
		XCTAssertEqual(inst.benefitBalance?[3].term?.system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.benefitBalance?[3].unit?.code, "individual")
		XCTAssertEqual(inst.benefitBalance?[3].unit?.system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.benefitBalance?[4].category?.code, "vision")
		XCTAssertEqual(inst.benefitBalance?[4].category?.system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.benefitBalance?[4].financial?[0].benefitString, "shared")
		XCTAssertEqual(inst.benefitBalance?[4].financial?[0].type?.code, "room")
		XCTAssertEqual(inst.benefitBalance?[4].financial?[1].benefitMoney?.code, "SAR")
		XCTAssertEqual(inst.benefitBalance?[4].financial?[1].benefitMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.benefitBalance?[4].financial?[1].benefitMoney?.value, NSDecimalNumber(string: "600"))
		XCTAssertEqual(inst.benefitBalance?[4].financial?[1].type?.code, "benefit")
		XCTAssertEqual(inst.benefitBalance?[4].network?.code, "in")
		XCTAssertEqual(inst.benefitBalance?[4].network?.system?.absoluteString, "http://hl7.org/fhir/benefit-network")
		XCTAssertEqual(inst.benefitBalance?[4].subCategory?.code, "49")
		XCTAssertEqual(inst.benefitBalance?[4].subCategory?.display, "Hospital Room and Board")
		XCTAssertEqual(inst.benefitBalance?[4].subCategory?.system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.benefitBalance?[4].term?.code, "day")
		XCTAssertEqual(inst.benefitBalance?[4].term?.system?.absoluteString, "http://hl7.org/fhir/benefit-term")
		XCTAssertEqual(inst.benefitBalance?[4].unit?.code, "individual")
		XCTAssertEqual(inst.benefitBalance?[4].unit?.system?.absoluteString, "http://hl7.org/fhir/benefit-unit")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertTrue(inst.inforce ?? false)
		XCTAssertEqual(inst.organizationReference?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.requestReference?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertTrue(inst.inforce ?? false)
		XCTAssertEqual(inst.organizationReference?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.requestReference?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
