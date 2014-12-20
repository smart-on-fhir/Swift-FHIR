//
//  ReadjudicateTests.swift
//  ReadjudicateTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ReadjudicateTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Readjudicate? {
		let json = readJSONFile(filename)
		let instance = Readjudicate(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReadjudicate1() {
		let inst = instantiateFrom("readjudicate-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Readjudicate instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "44543")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.reference!, "ABC12345G")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
	
	func testReadjudicate2() {
		let inst = instantiateFrom("readjudicate-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Readjudicate instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "44543")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.reference!, "ABC12345G")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
	
	func testReadjudicate3() {
		let inst = instantiateFrom("readjudicate-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Readjudicate instance")
	
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "44543")
		XCTAssertEqual(inst!.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.reference!, "ABC12345G")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
}
