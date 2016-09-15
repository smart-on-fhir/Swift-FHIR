//
//  PaymentNoticeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PaymentNoticeTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PaymentNotice {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.PaymentNotice {
		let instance = SwiftFHIR.PaymentNotice(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentNotice1() {
		do {
			let instance = try runPaymentNotice1()
			try runPaymentNotice1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PaymentNotice successfully, but threw")
		}
	}
	
	@discardableResult
	func runPaymentNotice1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PaymentNotice {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "paymentnotice-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "77654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier?[0].value, "776543")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.paymentStatus?.code, "paid")
		XCTAssertEqual(inst.paymentStatus?.system?.absoluteString, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request?.reference, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the PaymentNotice</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
