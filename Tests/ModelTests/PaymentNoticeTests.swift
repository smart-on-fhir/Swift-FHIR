//
//  PaymentNoticeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPaymentNotice = Models.PaymentNotice
#else
import SwiftFHIR
typealias SwiftFHIRPaymentNotice = SwiftFHIR.PaymentNotice
#endif


class PaymentNoticeTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPaymentNotice {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPaymentNotice {
		return try SwiftFHIRPaymentNotice(json: json)
	}
	
	func testPaymentNotice1() {
		do {
			let instance = try runPaymentNotice1()
			try runPaymentNotice1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PaymentNotice successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPaymentNotice1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPaymentNotice {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "paymentnotice-example.json")
		
		XCTAssertEqual(inst.amount?.currency, "USD")
		XCTAssertEqual(inst.amount?.value, "12500.0")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "77654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier?[0].value, "776543")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.payee?.reference, "Organization/1")
		XCTAssertEqual(inst.payment?.reference, "PaymentReconciliation/ER2500")
		XCTAssertEqual(inst.paymentDate?.description, "2014-08-15")
		XCTAssertEqual(inst.paymentStatus?.coding?[0].code, "paid")
		XCTAssertEqual(inst.paymentStatus?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/paymentstatus")
		XCTAssertEqual(inst.provider?.reference, "Organization/1")
		XCTAssertEqual(inst.recipient?.identifier?.system?.absoluteString, "http://regulators.gov")
		XCTAssertEqual(inst.recipient?.identifier?.value, "AB123")
		XCTAssertEqual(inst.request?.reference, "http://benefitsinc.com/fhir/claim/12345")
		XCTAssertEqual(inst.response?.reference, "http://benefitsinc.com/fhir/claimresponse/CR12345")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the PaymentNotice</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
