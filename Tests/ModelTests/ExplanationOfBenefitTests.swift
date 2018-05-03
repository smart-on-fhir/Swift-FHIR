//
//  ExplanationOfBenefitTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
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
		XCTAssertEqual(inst.item?[0].careTeamSequence?[0], 1)
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
		XCTAssertEqual(inst.outcome, "complete")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.payee?.party?.reference, "Organization/2")
		XCTAssertEqual(inst.payee?.resource?.code, "organization")
		XCTAssertEqual(inst.payee?.resource?.system?.absoluteString, "http://hl7.org/fhir/resource-type-link")
		XCTAssertEqual(inst.payee?.type?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payee?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payeetype")
		XCTAssertEqual(inst.provider?.reference, "Practitioner/1")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ExplanationOfBenefit</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.code, "USD")
		XCTAssertEqual(inst.total?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?[0].amount?.value, "135.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.code, "USD")
		XCTAssertEqual(inst.total?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?[1].amount?.value, "96.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
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
		XCTAssertEqual(inst.accident?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.billablePeriod?.end?.description, "2014-03-01")
		XCTAssertEqual(inst.billablePeriod?.start?.description, "2014-02-01")
		XCTAssertEqual(inst.claim?.reference, "Claim/100150")
		XCTAssertEqual(inst.claimResponse?.reference, "ClaimResponse/R3500")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Could not process.")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/1")
		XCTAssertEqual(inst.facility?.reference, "Location/1")
		XCTAssertEqual(inst.form?.coding?[0].code, "2")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/forms-codes")
		XCTAssertEqual(inst.id, "EB3501")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/explanationofbenefit")
		XCTAssertEqual(inst.identifier?[0].value, "error-1")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].code, "employmentimpacted")
		XCTAssertEqual(inst.information?[0].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claiminformationcategory")
		XCTAssertEqual(inst.information?[0].sequence, 1)
		XCTAssertEqual(inst.information?[0].timingPeriod?.end?.description, "2014-02-28")
		XCTAssertEqual(inst.information?[0].timingPeriod?.start?.description, "2014-02-14")
		XCTAssertEqual(inst.information?[1].category?.coding?[0].code, "hospitalized")
		XCTAssertEqual(inst.information?[1].category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ValueSet/claiminformationcategory")
		XCTAssertEqual(inst.information?[1].sequence, 2)
		XCTAssertEqual(inst.information?[1].timingPeriod?.end?.description, "2014-02-16")
		XCTAssertEqual(inst.information?[1].timingPeriod?.start?.description, "2014-02-14")
		XCTAssertEqual(inst.insurance?.coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.originalPrescription?.reference, "MedicationRequest/medrx0301")
		XCTAssertEqual(inst.outcome, "error")
		XCTAssertEqual(inst.patient?.reference, "Patient/pat1")
		XCTAssertEqual(inst.precedence, 2)
		XCTAssertEqual(inst.prescription?.reference, "MedicationRequest/medrx002")
		XCTAssertEqual(inst.procedure?[0].date?.description, "2014-02-14")
		XCTAssertEqual(inst.procedure?[0].procedureCodeableConcept?.coding?[0].code, "123001")
		XCTAssertEqual(inst.procedure?[0].procedureCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/ex-icd-10-procedures")
		XCTAssertEqual(inst.procedure?[0].sequence, 1)
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 1)
		XCTAssertEqual(inst.processNote?[0].text, "Invalid claim")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "display")!)
		XCTAssertEqual(inst.provider?.reference, "Organization/2")
		XCTAssertEqual(inst.related?[0].reference?.system?.absoluteString, "http://www.BenefitsInc.com/case-number")
		XCTAssertEqual(inst.related?[0].reference?.value, "23-56Tu-XX-47-20150M14")
		XCTAssertEqual(inst.status, ExplanationOfBenefitStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "emergency")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-claimsubtype")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.code, "USD")
		XCTAssertEqual(inst.total?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?[0].amount?.value, "2478.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.code, "USD")
		XCTAssertEqual(inst.total?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?[1].amount?.value, "0.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "complete")!)
		
		return inst
	}
}
