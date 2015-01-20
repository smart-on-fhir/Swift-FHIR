//
//  PaymentNoticeTests.swift
//  PaymentNoticeTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PaymentNoticeTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> PaymentNotice? {
		let json = readJSONFile(filename)
		let instance = PaymentNotice(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentNotice1() {
		let inst = instantiateFrom("paymentnotice-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentNotice instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst!.identifier![0].value!, "776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst!.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst!.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
	}
	
	func testPaymentNotice2() {
		let inst = instantiateFrom("paymentnotice-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentNotice instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst!.identifier![0].value!, "776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst!.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst!.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
	}
	
	func testPaymentNotice3() {
		let inst = instantiateFrom("paymentnotice-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentNotice instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst!.identifier![0].value!, "776543")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst!.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst!.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
	}
}
