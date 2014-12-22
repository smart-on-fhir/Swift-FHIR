//
//  ClaimResponseTests.swift
//  ClaimResponseTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ClaimResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ClaimResponse? {
		let json = readJSONFile(filename)
		let instance = ClaimResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testClaimResponse1() {
		let inst = instantiateFrom("claimresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClaimResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/remittance")!)
		XCTAssertEqual(inst!.identifier![0].value!, "R3500")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.value!, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst!.item![0].adjudication![0].code!.code!, "eligible")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.value!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst!.item![0].adjudication![1].code!.code!, "copay")
		XCTAssertEqual(inst!.item![0].adjudication![2].code!.code!, "eligpercent")
		XCTAssertEqual(inst!.item![0].adjudication![2].value!, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.item![0].adjudication![3].code!.code!, "benefit")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.payeeType!.code!, "provider")
		XCTAssertEqual(inst!.payeeType!.system!, NSURL(string: "http://hl7.org/fhir/payeetype")!)
		XCTAssertEqual(inst!.paymentAmount!.code!, "USD")
		XCTAssertEqual(inst!.paymentAmount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.paymentAmount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.paymentDate!, NSDate.dateFromISOString("2014-08-31")!)
		XCTAssertEqual(inst!.paymentRef!.system!, NSURL(string: "http://www.BenefitsInc.com/fhir/paymentRef")!)
		XCTAssertEqual(inst!.paymentRef!.value!, "201408-2-1569478")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.totalBenefit!.code!, "USD")
		XCTAssertEqual(inst!.totalBenefit!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalBenefit!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.totalCost!.code!, "USD")
		XCTAssertEqual(inst!.totalCost!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalCost!.value!, NSDecimalNumber(string: "135.57"))
	}
	
	func testClaimResponse2() {
		let inst = instantiateFrom("claimresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClaimResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/remittance")!)
		XCTAssertEqual(inst!.identifier![0].value!, "R3500")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.value!, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst!.item![0].adjudication![0].code!.code!, "eligible")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.value!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst!.item![0].adjudication![1].code!.code!, "copay")
		XCTAssertEqual(inst!.item![0].adjudication![2].code!.code!, "eligpercent")
		XCTAssertEqual(inst!.item![0].adjudication![2].value!, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.item![0].adjudication![3].code!.code!, "benefit")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.payeeType!.code!, "provider")
		XCTAssertEqual(inst!.payeeType!.system!, NSURL(string: "http://hl7.org/fhir/payeetype")!)
		XCTAssertEqual(inst!.paymentAmount!.code!, "USD")
		XCTAssertEqual(inst!.paymentAmount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.paymentAmount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.paymentDate!, NSDate.dateFromISOString("2014-08-31")!)
		XCTAssertEqual(inst!.paymentRef!.system!, NSURL(string: "http://www.BenefitsInc.com/fhir/paymentRef")!)
		XCTAssertEqual(inst!.paymentRef!.value!, "201408-2-1569478")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.totalBenefit!.code!, "USD")
		XCTAssertEqual(inst!.totalBenefit!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalBenefit!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.totalCost!.code!, "USD")
		XCTAssertEqual(inst!.totalCost!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalCost!.value!, NSDecimalNumber(string: "135.57"))
	}
	
	func testClaimResponse3() {
		let inst = instantiateFrom("claimresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClaimResponse instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.disposition!, "Claim settled as per contract.")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.BenefitsInc.com/fhir/remittance")!)
		XCTAssertEqual(inst!.identifier![0].value!, "R3500")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![0].amount!.value!, NSDecimalNumber(string: "135.57"))
		XCTAssertEqual(inst!.item![0].adjudication![0].code!.code!, "eligible")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![1].amount!.value!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst!.item![0].adjudication![1].code!.code!, "copay")
		XCTAssertEqual(inst!.item![0].adjudication![2].code!.code!, "eligpercent")
		XCTAssertEqual(inst!.item![0].adjudication![2].value!, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.code!, "USD")
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].adjudication![3].amount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.item![0].adjudication![3].code!.code!, "benefit")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst!.outcome!, "complete")
		XCTAssertEqual(inst!.payeeType!.code!, "provider")
		XCTAssertEqual(inst!.payeeType!.system!, NSURL(string: "http://hl7.org/fhir/payeetype")!)
		XCTAssertEqual(inst!.paymentAmount!.code!, "USD")
		XCTAssertEqual(inst!.paymentAmount!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.paymentAmount!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.paymentDate!, NSDate.dateFromISOString("2014-08-31")!)
		XCTAssertEqual(inst!.paymentRef!.system!, NSURL(string: "http://www.BenefitsInc.com/fhir/paymentRef")!)
		XCTAssertEqual(inst!.paymentRef!.value!, "201408-2-1569478")
		XCTAssertEqual(inst!.request!.reference!, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst!.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.totalBenefit!.code!, "USD")
		XCTAssertEqual(inst!.totalBenefit!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalBenefit!.value!, NSDecimalNumber(string: "100.47"))
		XCTAssertEqual(inst!.totalCost!.code!, "USD")
		XCTAssertEqual(inst!.totalCost!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.totalCost!.value!, NSDecimalNumber(string: "135.57"))
	}
}
