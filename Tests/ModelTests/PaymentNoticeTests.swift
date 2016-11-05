//
//  PaymentNoticeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10127 on 2016-11-04.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PaymentNoticeTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PaymentNotice {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.PaymentNotice {
		return try SwiftFHIR.PaymentNotice(json: json)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "paymentnotice-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "77654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier?[0].value, "776543")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.paymentStatus?.code, "paid")
		XCTAssertEqual(inst.paymentStatus?.system?.absoluteString, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request?.reference, "http://benefitsinc.com/fhir/claim/12345")
		XCTAssertEqual(inst.status, PaymentNoticeStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the PaymentNotice</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
