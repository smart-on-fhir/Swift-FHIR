//
//  PaymentReconciliationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPaymentReconciliation = Models.PaymentReconciliation
#else
import SwiftFHIR
typealias SwiftFHIRPaymentReconciliation = SwiftFHIR.PaymentReconciliation
#endif


class PaymentReconciliationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPaymentReconciliation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPaymentReconciliation {
		return try SwiftFHIRPaymentReconciliation(json: json)
	}
	
	func testPaymentReconciliation1() {
		do {
			let instance = try runPaymentReconciliation1()
			try runPaymentReconciliation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PaymentReconciliation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPaymentReconciliation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPaymentReconciliation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "paymentreconciliation-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.detail?[0].amount?.value, "3500.0")
		XCTAssertEqual(inst.detail?[0].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[0].identifier?.system?.absoluteString, "http://www.BenefitsInc.com/payment/2018/detail")
		XCTAssertEqual(inst.detail?[0].identifier?.value, "10-12345-001")
		XCTAssertEqual(inst.detail?[0].payee?.reference, "Organization/1")
		XCTAssertEqual(inst.detail?[0].request?.identifier?.system?.absoluteString, "http://happyvalleyclinic.com/claim")
		XCTAssertEqual(inst.detail?[0].request?.identifier?.value, "AB12345")
		XCTAssertEqual(inst.detail?[0].response?.identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/claimresponse")
		XCTAssertEqual(inst.detail?[0].response?.identifier?.value, "CR20140815-AB12345")
		XCTAssertEqual(inst.detail?[0].submitter?.reference, "Organization/1")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payment-type")
		XCTAssertEqual(inst.detail?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.detail?[1].amount?.value, "4000.0")
		XCTAssertEqual(inst.detail?[1].date?.description, "2014-08-12")
		XCTAssertEqual(inst.detail?[1].identifier?.system?.absoluteString, "http://www.BenefitsInc.com/payment/2018/detail")
		XCTAssertEqual(inst.detail?[1].identifier?.value, "10-12345-002")
		XCTAssertEqual(inst.detail?[1].request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payment-type")
		XCTAssertEqual(inst.detail?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.detail?[2].amount?.value, "-1500.0")
		XCTAssertEqual(inst.detail?[2].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[2].identifier?.system?.absoluteString, "http://www.BenefitsInc.com/payment/2018/detail")
		XCTAssertEqual(inst.detail?[2].identifier?.value, "10-12345-003")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].code, "advance")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payment-type")
		XCTAssertEqual(inst.disposition, "2014 August mid-month settlement.")
		XCTAssertEqual(inst.formCode?.coding?[0].code, "PAYREC/2016/01B")
		XCTAssertEqual(inst.formCode?.coding?[0].system?.absoluteString, "http://ncforms.org/formid")
		XCTAssertEqual(inst.id, "ER2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier?[0].value, "781234")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.paymentAmount?.currency, "USD")
		XCTAssertEqual(inst.paymentAmount?.value, "7000.0")
		XCTAssertEqual(inst.paymentDate?.description, "2014-08-01")
		XCTAssertEqual(inst.paymentIdentifier?.system?.absoluteString, "http://www.BenefitsInc.com/payment/2018")
		XCTAssertEqual(inst.paymentIdentifier?.value, "10-12345")
		XCTAssertEqual(inst.paymentIssuer?.reference, "Organization/2")
		XCTAssertEqual(inst.period?.end?.description, "2014-08-31")
		XCTAssertEqual(inst.period?.start?.description, "2014-08-16")
		XCTAssertEqual(inst.processNote?[0].text, "Due to the year end holiday the cutoff for submissions for December will be the 28th.")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "display")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestor?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the PaymentReconciliation</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
