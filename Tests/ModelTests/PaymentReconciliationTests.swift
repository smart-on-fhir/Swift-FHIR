//
//  PaymentReconciliationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
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
		XCTAssertEqual(inst.detail?[0].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[0].amount?.value, "1000.0")
		XCTAssertEqual(inst.detail?[0].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[0].payee?.reference, "Organization/1")
		XCTAssertEqual(inst.detail?[0].request?.identifier?.system?.absoluteString, "http://happyvalleyclinic.com/claim")
		XCTAssertEqual(inst.detail?[0].request?.identifier?.value, "AB12345")
		XCTAssertEqual(inst.detail?[0].response?.identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/claimresponse")
		XCTAssertEqual(inst.detail?[0].response?.identifier?.value, "CR20140815-AB12345")
		XCTAssertEqual(inst.detail?[0].submitter?.reference, "Organization/1")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payment-type")
		XCTAssertEqual(inst.detail?[1].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[1].amount?.value, "4000.0")
		XCTAssertEqual(inst.detail?[1].date?.description, "2014-08-12")
		XCTAssertEqual(inst.detail?[1].request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payment-type")
		XCTAssertEqual(inst.detail?[2].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[2].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[2].amount?.value, "-1500.0")
		XCTAssertEqual(inst.detail?[2].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].code, "advance")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/payment-type")
		XCTAssertEqual(inst.disposition, "2014 August mid-month settlement.")
		XCTAssertEqual(inst.form?.coding?[0].code, "PAYREC/2016/01B")
		XCTAssertEqual(inst.form?.coding?[0].system?.absoluteString, "http://ncforms.org/formid")
		XCTAssertEqual(inst.id, "ER2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier?[0].value, "781234")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.period?.end?.description, "2014-08-31")
		XCTAssertEqual(inst.period?.start?.description, "2014-08-16")
		XCTAssertEqual(inst.processNote?[0].text, "Due to the year end holiday the cutoff for submissions for December will be the 28th.")
		XCTAssertEqual(inst.processNote?[0].type?.coding?[0].code, "display")
		XCTAssertEqual(inst.processNote?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/note-type")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.requestProvider?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the PaymentReconciliation</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, "3500.0")
		
		return inst
	}
}
