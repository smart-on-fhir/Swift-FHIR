//
//  PaymentNoticeTests.swift
//  PaymentNoticeTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PaymentNoticeTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> PaymentNotice {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> PaymentNotice {
		let instance = PaymentNotice(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentNotice1() {
		let instance = testPaymentNotice1_impl()
		testPaymentNotice1_impl(json: instance.asJSON())
	}
	
	func testPaymentNotice1_impl(json: JSONDictionary? = nil) -> PaymentNotice {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "paymentnotice-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier![0].value!, "776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
	
	func testPaymentNotice2() {
		let instance = testPaymentNotice2_impl()
		testPaymentNotice2_impl(json: instance.asJSON())
	}
	
	func testPaymentNotice2_impl(json: JSONDictionary? = nil) -> PaymentNotice {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "paymentnotice-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier![0].value!, "776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
	
	func testPaymentNotice3() {
		let instance = testPaymentNotice3_impl()
		testPaymentNotice3_impl(json: instance.asJSON())
	}
	
	func testPaymentNotice3_impl(json: JSONDictionary? = nil) -> PaymentNotice {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "paymentnotice-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://benefitsinc.com/paymentnotice")
		XCTAssertEqual(inst.identifier![0].value!, "776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.paymentStatus!.code!, "paid")
		XCTAssertEqual(inst.paymentStatus!.system!.absoluteString!, "http://hl7.org/fhir/paymentstatus")
		XCTAssertEqual(inst.request!.reference!, "http://benefitsinc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
}
