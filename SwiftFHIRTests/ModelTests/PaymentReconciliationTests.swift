//
//  PaymentReconciliationTests.swift
//  PaymentReconciliationTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class PaymentReconciliationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> PaymentReconciliation? {
		let json = readJSONFile(filename)
		let instance = PaymentReconciliation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPaymentReconciliation1() {
		let inst = instantiateFrom("paymentreconciliation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentReconciliation instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![0].amount!.value!, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst!.detail![0].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332402")
		XCTAssertEqual(inst!.detail![0].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![0].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![1].amount!.value!, NSDecimalNumber(string: "4000.0"))
		XCTAssertEqual(inst!.detail![1].date!, NSDate.dateFromISOString("2014-08-12")!)
		XCTAssertEqual(inst!.detail![1].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst!.detail![1].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![1].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![2].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![2].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![2].amount!.value!, NSDecimalNumber(string: "-1500.0"))
		XCTAssertEqual(inst!.detail![2].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![2].type!.code!, "advance")
		XCTAssertEqual(inst!.detail![2].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.disposition!, "2014 August mid-month settlement.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.total!.code!, "USD")
		XCTAssertEqual(inst!.total!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.total!.value!, NSDecimalNumber(string: "3500.0"))
	}
	
	func testPaymentReconciliation2() {
		let inst = instantiateFrom("paymentreconciliation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentReconciliation instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![0].amount!.value!, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst!.detail![0].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332402")
		XCTAssertEqual(inst!.detail![0].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![0].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![1].amount!.value!, NSDecimalNumber(string: "4000.0"))
		XCTAssertEqual(inst!.detail![1].date!, NSDate.dateFromISOString("2014-08-12")!)
		XCTAssertEqual(inst!.detail![1].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst!.detail![1].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![1].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![2].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![2].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![2].amount!.value!, NSDecimalNumber(string: "-1500.0"))
		XCTAssertEqual(inst!.detail![2].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![2].type!.code!, "advance")
		XCTAssertEqual(inst!.detail![2].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.disposition!, "2014 August mid-month settlement.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.total!.code!, "USD")
		XCTAssertEqual(inst!.total!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.total!.value!, NSDecimalNumber(string: "3500.0"))
	}
	
	func testPaymentReconciliation3() {
		let inst = instantiateFrom("paymentreconciliation-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a PaymentReconciliation instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![0].amount!.value!, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst!.detail![0].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![0].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332402")
		XCTAssertEqual(inst!.detail![0].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![0].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![1].amount!.value!, NSDecimalNumber(string: "4000.0"))
		XCTAssertEqual(inst!.detail![1].date!, NSDate.dateFromISOString("2014-08-12")!)
		XCTAssertEqual(inst!.detail![1].request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst!.detail![1].type!.code!, "payment")
		XCTAssertEqual(inst!.detail![1].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.detail![2].amount!.code!, "USD")
		XCTAssertEqual(inst!.detail![2].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.detail![2].amount!.value!, NSDecimalNumber(string: "-1500.0"))
		XCTAssertEqual(inst!.detail![2].date!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.detail![2].type!.code!, "advance")
		XCTAssertEqual(inst!.detail![2].type!.system!, NSURL(string: "http://www.hl7.org/fhir/paymenttype")!)
		XCTAssertEqual(inst!.disposition!, "2014 August mid-month settlement.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/enrollmentresponse")!)
		XCTAssertEqual(inst!.identifier![0].value!, "781234")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.total!.code!, "USD")
		XCTAssertEqual(inst!.total!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.total!.value!, NSDecimalNumber(string: "3500.0"))
	}
}
