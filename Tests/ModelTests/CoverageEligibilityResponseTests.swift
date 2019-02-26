//
//  CoverageEligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCoverageEligibilityResponse = Models.CoverageEligibilityResponse
#else
import SwiftFHIR
typealias SwiftFHIRCoverageEligibilityResponse = SwiftFHIR.CoverageEligibilityResponse
#endif


class CoverageEligibilityResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCoverageEligibilityResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCoverageEligibilityResponse {
		return try SwiftFHIRCoverageEligibilityResponse(json: json)
	}
	
	func testCoverageEligibilityResponse1() {
		do {
			let instance = try runCoverageEligibilityResponse1()
			try runCoverageEligibilityResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].inforce, true)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.purpose?[0], EligibilityResponsePurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/coverageeligibilityrequest/225476332402")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCoverageEligibilityResponse2() {
		do {
			let instance = try runCoverageEligibilityResponse2()
			try runCoverageEligibilityResponse2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityresponse-example-error.json")
		
		XCTAssertEqual(inst.created?.description, "2014-09-16")
		XCTAssertEqual(inst.disposition, "Eligibiliy request could not be processed, please address errors before submitting.")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].code, "a001")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adjudication-error")
		XCTAssertEqual(inst.form?.coding?[0].code, "ELRSP/2017/01")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://national.org/form")
		XCTAssertEqual(inst.id, "E2503")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "8812343")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "error")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.purpose?[0], EligibilityResponsePurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse/225476332406")
		XCTAssertEqual(inst.requestor?.identifier?.system?.absoluteString, "http://national.org/clinic")
		XCTAssertEqual(inst.requestor?.identifier?.value, "OR1234")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCoverageEligibilityResponse3() {
		do {
			let instance = try runCoverageEligibilityResponse3()
			try runCoverageEligibilityResponse3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityResponse3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityresponse-example-benefits-2.json")
		
		XCTAssertEqual(inst.contained?[0].id, "coverage-1")
		XCTAssertEqual(inst.created?.description, "2014-09-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.form?.coding?[0].code, "ELRSP/2017/01")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://national.org/form")
		XCTAssertEqual(inst.id, "E2502")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "8812342")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "#coverage-1")
		XCTAssertEqual(inst.insurance?[0].inforce, true)
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].allowedMoney?.currency, "USD")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].allowedMoney?.value, "500000")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].usedMoney?.currency, "USD")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].usedMoney?.value, "3748.0")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].allowedMoney?.currency, "USD")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].allowedMoney?.value, "100")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].type?.coding?[0].code, "copay-maximum")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[2].allowedUnsignedInt, 20)
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[2].type?.coding?[0].code, "copay-percent")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].code, "30")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].display, "Health Benefit Plan Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[0].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[0].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[0].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[0].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[0].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[0].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].allowedMoney?.currency, "USD")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].allowedMoney?.value, "15000")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].code, "69")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].display, "Maternity")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[1].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[1].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[1].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[1].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[1].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[1].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].allowedMoney?.currency, "USD")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].allowedMoney?.value, "2000")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].code, "F3")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].display, "Dental Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[2].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[2].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[2].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[2].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[2].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[2].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].code, "F6")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].display, "Vision Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[3].description_fhir, "Vision products and services such as exams, glasses and contact lenses.")
		XCTAssertEqual(inst.insurance?[0].item?[3].excluded, true)
		XCTAssertEqual(inst.insurance?[0].item?[3].name, "Vision")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.purpose?[0], EligibilityResponsePurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.purpose?[1], EligibilityResponsePurpose(rawValue: "benefits")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/coverageeligibilityrequest/225476332405")
		XCTAssertEqual(inst.requestor?.identifier?.system?.absoluteString, "http://national.org/clinic")
		XCTAssertEqual(inst.requestor?.identifier?.value, "OR1234")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCoverageEligibilityResponse4() {
		do {
			let instance = try runCoverageEligibilityResponse4()
			try runCoverageEligibilityResponse4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CoverageEligibilityResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverageEligibilityResponse4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverageEligibilityResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverageeligibilityresponse-example-benefits.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Policy is currently in-force.")
		XCTAssertEqual(inst.id, "E2501")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse")
		XCTAssertEqual(inst.identifier?[0].value, "881234")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].inforce, true)
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].allowedMoney?.value, "500000")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].allowedMoney?.value, "100")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[1].type?.coding?[0].code, "copay-maximum")
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[2].allowedUnsignedInt, 20)
		XCTAssertEqual(inst.insurance?[0].item?[0].benefit?[2].type?.coding?[0].code, "copay-percent")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].code, "30")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].display, "Health Benefit Plan Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[0].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[0].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[0].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[0].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[0].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[0].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[0].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].allowedMoney?.value, "15000")
		XCTAssertEqual(inst.insurance?[0].item?[1].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].code, "69")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].display, "Maternity")
		XCTAssertEqual(inst.insurance?[0].item?[1].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[1].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[1].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[1].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[1].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[1].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[1].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].allowedMoney?.value, "2000")
		XCTAssertEqual(inst.insurance?[0].item?[2].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].code, "F3")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].display, "Dental Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[2].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[2].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[2].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[2].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[2].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[2].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[2].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[3].benefit?[0].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[3].benefit?[0].allowedMoney?.value, "400")
		XCTAssertEqual(inst.insurance?[0].item?[3].benefit?[0].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].code, "F6")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].display, "Vision Coverage")
		XCTAssertEqual(inst.insurance?[0].item?[3].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[3].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[3].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[3].term?.coding?[0].code, "annual")
		XCTAssertEqual(inst.insurance?[0].item?[3].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[3].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[3].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurance?[0].item?[4].benefit?[0].allowedString, "shared")
		XCTAssertEqual(inst.insurance?[0].item?[4].benefit?[0].type?.coding?[0].code, "room")
		XCTAssertEqual(inst.insurance?[0].item?[4].benefit?[1].allowedMoney?.currency, "SAR")
		XCTAssertEqual(inst.insurance?[0].item?[4].benefit?[1].allowedMoney?.value, "600")
		XCTAssertEqual(inst.insurance?[0].item?[4].benefit?[1].type?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.insurance?[0].item?[4].category?.coding?[0].code, "49")
		XCTAssertEqual(inst.insurance?[0].item?[4].category?.coding?[0].display, "Hospital Room and Board")
		XCTAssertEqual(inst.insurance?[0].item?[4].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-benefitcategory")
		XCTAssertEqual(inst.insurance?[0].item?[4].network?.coding?[0].code, "in")
		XCTAssertEqual(inst.insurance?[0].item?[4].network?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-network")
		XCTAssertEqual(inst.insurance?[0].item?[4].term?.coding?[0].code, "day")
		XCTAssertEqual(inst.insurance?[0].item?[4].term?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-term")
		XCTAssertEqual(inst.insurance?[0].item?[4].unit?.coding?[0].code, "individual")
		XCTAssertEqual(inst.insurance?[0].item?[4].unit?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/benefit-unit")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.purpose?[0], EligibilityResponsePurpose(rawValue: "validation")!)
		XCTAssertEqual(inst.purpose?[1], EligibilityResponsePurpose(rawValue: "benefits")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/coverageeligibilityresponse/225476332402")
		XCTAssertEqual(inst.servicedDate?.description, "2014-09-17")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the CoverageEligibilityResponse.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
