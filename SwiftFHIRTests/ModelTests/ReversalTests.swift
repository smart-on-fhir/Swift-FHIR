//
//  ReversalTests.swift
//  ReversalTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ReversalTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Reversal {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Reversal {
		let instance = Reversal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReversal1() {
		let instance = testReversal1_impl()
		testReversal1_impl(json: instance.asJSON())
	}
	
	func testReversal1_impl(json: JSONDictionary? = nil) -> Reversal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "reversal-example.json")
		
		XCTAssertEqual(inst.coverage!.coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage!.focal!)
		XCTAssertEqual(inst.coverage!.relationship!.code!, "self")
		XCTAssertEqual(inst.coverage!.sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/reversal")
		XCTAssertEqual(inst.identifier![0].value!, "76543")
		XCTAssertFalse(inst.nullify!)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Reversal</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
