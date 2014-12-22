//
//  ReversalTests.swift
//  ReversalTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ReversalTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Reversal? {
		let json = readJSONFile(filename)
		let instance = Reversal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReversal1() {
		let inst = instantiateFrom("reversal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Reversal instance")
	
		XCTAssertEqual(inst!.coverage!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage!.focal!)
		XCTAssertEqual(inst!.coverage!.relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage!.sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "76543")
		XCTAssertFalse(inst!.nullify!)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
	
	func testReversal2() {
		let inst = instantiateFrom("reversal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Reversal instance")
	
		XCTAssertEqual(inst!.coverage!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage!.focal!)
		XCTAssertEqual(inst!.coverage!.relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage!.sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "76543")
		XCTAssertFalse(inst!.nullify!)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
	
	func testReversal3() {
		let inst = instantiateFrom("reversal-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Reversal instance")
	
		XCTAssertEqual(inst!.coverage!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage!.focal!)
		XCTAssertEqual(inst!.coverage!.relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage!.sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happyvalley.com/reversal")!)
		XCTAssertEqual(inst!.identifier![0].value!, "76543")
		XCTAssertFalse(inst!.nullify!)
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
	}
}
