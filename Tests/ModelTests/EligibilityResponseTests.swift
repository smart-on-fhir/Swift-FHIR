//
//  EligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREligibilityResponse = Models.EligibilityResponse
#else
import SwiftFHIR
typealias SwiftFHIREligibilityResponse = SwiftFHIR.EligibilityResponse
#endif


class EligibilityResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREligibilityResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREligibilityResponse {
		return try SwiftFHIREligibilityResponse(json: json)
	}
	
	func testEligibilityResponse1() {
		do {
			let instance = try runEligibilityResponse1()
			try runEligibilityResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example-benefits-2.json")
		
		XCTAssertEqual(inst.contained?[0].id, "patient-1")
		XCTAssertEqual(inst.contained?[1].id, "coverage-1")
		XCTAssertEqual(inst.created?.description, "2014-09-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.form?.coding?[0].code, "ELRSP/2017/01")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://national.org/form")
		XCTAssertEqual(inst.id, "E2502")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "8812342")
		XCTAssertEqual(inst.inforce, true)
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].code, "medical")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.code, "USD")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.value, "500000")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].usedMoney?.code, "USD")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].usedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].usedMoney?.value, "3748.0")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.code, "USD")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.value, "100")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].type?.coding?[0].code, "copay-maximum")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[2].allowedUnsignedInt, 20)
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.code, "USD")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.value, "15000")
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.code, "USD")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.value, "2000")
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].description_fhir, "Vision products and services such as exams, glasses and contatc lenses.")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].excluded, true)
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].name, "Vision")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].code, "F6")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].display, "Vision Coverage")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].subCategory?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-subcategory")
		XCTAssertEqual(inst.insurance?[0].contract?.reference, "http://www.BenefitsInc.com/fhir/contract/NBU22547")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "#coverage-1")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332405")
		XCTAssertEqual(inst.requestOrganization?.identifier?.system?.absoluteString, "http://national.org/clinic")
		XCTAssertEqual(inst.requestOrganization?.identifier?.value, "OR1234")
		XCTAssertEqual(inst.requestProvider?.identifier?.system?.absoluteString, "http://national.org/provider")
		XCTAssertEqual(inst.requestProvider?.identifier?.value, "PR9876")
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
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example-benefits.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2501")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.inforce, true)
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].code, "medical")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/benefit-category")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].allowedMoney?.value, "500000")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].allowedMoney?.value, "100")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[1].type?.coding?[0].code, "copay-maximum")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[0].financial?[2].allowedUnsignedInt, 20)
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[1].financial?[0].allowedMoney?.value, "15000")
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[2].financial?[0].allowedMoney?.value, "2000")
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[3].financial?[0].allowedMoney?.value, "400")
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
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[0].allowedString, "shared")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[0].type?.coding?[0].code, "room")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].allowedMoney?.code, "SAR")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].allowedMoney?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.insurance?[0].benefitBalance?[4].financial?[1].allowedMoney?.value, "600")
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
	
	func testEligibilityResponse3() {
		do {
			let instance = try runEligibilityResponse3()
			try runEligibilityResponse3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityResponse3(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example-error.json")
		
		XCTAssertEqual(inst.created?.description, "2014-09-16")
		XCTAssertEqual(inst.disposition, "Eligibiliy request could not be processed, please address errors before submitting.")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].code, "a001")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/adjudication-error")
		XCTAssertEqual(inst.form?.coding?[0].code, "ELRSP/2017/01")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://national.org/form")
		XCTAssertEqual(inst.id, "E2503")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "8812343")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "error")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332406")
		XCTAssertEqual(inst.requestOrganization?.identifier?.system?.absoluteString, "http://national.org/clinic")
		XCTAssertEqual(inst.requestOrganization?.identifier?.value, "OR1234")
		XCTAssertEqual(inst.requestProvider?.identifier?.system?.absoluteString, "http://national.org/provider")
		XCTAssertEqual(inst.requestProvider?.identifier?.value, "PR9876")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEligibilityResponse4() {
		do {
			let instance = try runEligibilityResponse4()
			try runEligibilityResponse4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEligibilityResponse4(_ json: FHIRJSON? = nil) throws -> SwiftFHIREligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "eligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.inforce, true)
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
