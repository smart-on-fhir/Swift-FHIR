//
//  ExplanationOfBenefitTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
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
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurer?.reference, "Organization/3")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "120.0")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[1].value, "0.8")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[2].amount?.value, "96.0")
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].careTeamSequence?[0], 1)
		XCTAssertEqual(inst.item?[0].encounter?[0].reference, "Encounter/example")
		XCTAssertEqual(inst.item?[0].net?.currency, "USD")
		XCTAssertEqual(inst.item?[0].net?.value, "135.57")
		XCTAssertEqual(inst.item?[0].productOrService?.coding?[0].code, "1205")
		XCTAssertEqual(inst.item?[0].productOrService?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-USCLS")
		XCTAssertEqual(inst.item?[0].sequence, 1)
		XCTAssertEqual(inst.item?[0].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.item?[0].udi?[0].reference, "Device/example")
		XCTAssertEqual(inst.item?[0].unitPrice?.currency, "USD")
		XCTAssertEqual(inst.item?[0].unitPrice?.value, "135.57")
		XCTAssertEqual(inst.item?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].adjudication?[0].amount?.value, "180.0")
		XCTAssertEqual(inst.item?[1].adjudication?[0].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[1].careTeamSequence?[0], 1)
		XCTAssertEqual(inst.item?[1].detail?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].adjudication?[0].amount?.value, "180.0")
		XCTAssertEqual(inst.item?[1].detail?[0].adjudication?[0].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[1].detail?[0].net?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].net?.value, "200.0")
		XCTAssertEqual(inst.item?[1].detail?[0].productOrService?.coding?[0].code, "group")
		XCTAssertEqual(inst.item?[1].detail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[0].amount?.value, "200.0")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[1].value, "0.9")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[2].amount?.value, "180.0")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].net?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].net?.value, "200.0")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].productOrService?.coding?[0].code, "1205")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].productOrService?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-USCLS")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].sequence, 1)
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].udi?[0].reference, "Device/example")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].unitPrice?.currency, "USD")
		XCTAssertEqual(inst.item?[1].detail?[0].subDetail?[0].unitPrice?.value, "200.0")
		XCTAssertEqual(inst.item?[1].detail?[0].udi?[0].reference, "Device/example")
		XCTAssertEqual(inst.item?[1].net?.currency, "USD")
		XCTAssertEqual(inst.item?[1].net?.value, "200.0")
		XCTAssertEqual(inst.item?[1].productOrService?.coding?[0].code, "group")
		XCTAssertEqual(inst.item?[1].sequence, 2)
		XCTAssertEqual(inst.item?[1].servicedDate?.description, "2014-08-16")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.payee?.party?.reference, "Organization/2")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payee?.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payeetype")
		XCTAssertEqual(inst.provider?.reference, "Practitioner/1")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "135.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "96.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
	
	func testExplanationOfBenefit2() {
		do {
			let instance = try runExplanationOfBenefit2()
			try runExplanationOfBenefit2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ExplanationOfBenefit successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runExplanationOfBenefit2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRExplanationOfBenefit {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "explanationofbenefit-example-2.json")
		
		XCTAssertEqual(inst.accident?.date?.description, "2014-02-14")
		XCTAssertEqual(inst.accident?.locationReference?.reference, "Location/ph")
		XCTAssertEqual(inst.accident?.type?.coding?[0].code, "SPT")
		XCTAssertEqual(inst.accident?.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.billablePeriod?.end?.description, "2014-03-01")
		XCTAssertEqual(inst.billablePeriod?.start?.description, "2014-02-01")
		XCTAssertEqual(inst.claim?.reference, "Claim/100150")
		XCTAssertEqual(inst.claimResponse?.reference, "ClaimResponse/R3500")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Could not process.")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/1")
		XCTAssertEqual(inst.facility?.reference, "Location/1")
		XCTAssertEqual(inst.formCode?.coding?[0].code, "2")
		XCTAssertEqual(inst.formCode?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/forms-codes")
		XCTAssertEqual(inst.id, "EB3501")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/explanationofbenefit")
		XCTAssertEqual(inst.identifier?[0].value, "error-1")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.originalPrescription?.reference, "MedicationRequest/medrx0301")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "error")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.precedence, 2)
		XCTAssertEqual(inst.prescription?.reference, "MedicationRequest/medrx002")
		XCTAssertEqual(inst.procedure?[0].date?.description, "2014-02-14")
		XCTAssertEqual(inst.procedure?[0].procedureCodeableConcept?.coding?[0].code, "123001")
		XCTAssertEqual(inst.procedure?[0].procedureCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/ex-icd-10-procedures")
		XCTAssertEqual(inst.procedure?[0].sequence, 1)
		XCTAssertEqual(inst.procedure?[0].udi?[0].reference, "Device/example")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 1)
		XCTAssertEqual(inst.processNote?[0].text, "Invalid claim")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "display")!)
		XCTAssertEqual(inst.provider?.reference, "Organization/2")
		XCTAssertEqual(inst.related?[0].reference?.system?.absoluteString, "http://www.BenefitsInc.com/case-number")
		XCTAssertEqual(inst.related?[0].reference?.value, "23-56Tu-XX-47-20150M14")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subType?.coding?[0].code, "emergency")
		XCTAssertEqual(inst.subType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-claimsubtype")
		XCTAssertEqual(inst.supportingInfo?[0].category?.coding?[0].code, "employmentimpacted")
		XCTAssertEqual(inst.supportingInfo?[0].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claiminformationcategory")
		XCTAssertEqual(inst.supportingInfo?[0].sequence, 1)
		XCTAssertEqual(inst.supportingInfo?[0].timingPeriod?.end?.description, "2014-02-28")
		XCTAssertEqual(inst.supportingInfo?[0].timingPeriod?.start?.description, "2014-02-14")
		XCTAssertEqual(inst.supportingInfo?[1].category?.coding?[0].code, "hospitalized")
		XCTAssertEqual(inst.supportingInfo?[1].category?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claiminformationcategory")
		XCTAssertEqual(inst.supportingInfo?[1].sequence, 2)
		XCTAssertEqual(inst.supportingInfo?[1].timingPeriod?.end?.description, "2014-02-16")
		XCTAssertEqual(inst.supportingInfo?[1].timingPeriod?.start?.description, "2014-02-14")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "2478.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "0.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
}
