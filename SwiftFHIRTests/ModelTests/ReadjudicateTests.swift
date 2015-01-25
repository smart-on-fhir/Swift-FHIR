//
//  ReadjudicateTests.swift
//  ReadjudicateTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ReadjudicateTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Readjudicate {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Readjudicate {
		let instance = Readjudicate(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReadjudicate1() {
		let instance = testReadjudicate1_impl()
		testReadjudicate1_impl(json: instance.asJSON())
	}
	
	func testReadjudicate1_impl(json: JSONDictionary? = nil) -> Readjudicate {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "readjudicate-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "44654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/reversal")
		XCTAssertEqual(inst.identifier![0].value!, "44543")
		XCTAssertEqual(inst.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.reference!, "ABC12345G")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
	
	func testReadjudicate2() {
		let instance = testReadjudicate2_impl()
		testReadjudicate2_impl(json: instance.asJSON())
	}
	
	func testReadjudicate2_impl(json: JSONDictionary? = nil) -> Readjudicate {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "readjudicate-example.canonical.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "44654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/reversal")
		XCTAssertEqual(inst.identifier![0].value!, "44543")
		XCTAssertEqual(inst.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.reference!, "ABC12345G")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
	
	func testReadjudicate3() {
		let instance = testReadjudicate3_impl()
		testReadjudicate3_impl(json: instance.asJSON())
	}
	
	func testReadjudicate3_impl(json: JSONDictionary? = nil) -> Readjudicate {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "readjudicate-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "44654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/reversal")
		XCTAssertEqual(inst.identifier![0].value!, "44543")
		XCTAssertEqual(inst.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.reference!, "ABC12345G")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		
		return inst
	}
}
