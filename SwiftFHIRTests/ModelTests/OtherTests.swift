//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OtherTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Other {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Other {
		let instance = Other(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOther1() {
		let instance = testOther1_impl()
		testOther1_impl(json: instance.asJSON())
	}
	
	func testOther1_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.canonical.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		
		return inst
	}
	
	func testOther2() {
		let instance = testOther2_impl()
		testOther2_impl(json: instance.asJSON())
	}
	
	func testOther2_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.canonical.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		
		return inst
	}
	
	func testOther3() {
		let instance = testOther3_impl()
		testOther3_impl(json: instance.asJSON())
	}
	
	func testOther3_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		
		return inst
	}
	
	func testOther4() {
		let instance = testOther4_impl()
		testOther4_impl(json: instance.asJSON())
	}
	
	func testOther4_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testOther5() {
		let instance = testOther5_impl()
		testOther5_impl(json: instance.asJSON())
	}
	
	func testOther5_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testOther6() {
		let instance = testOther6_impl()
		testOther6_impl(json: instance.asJSON())
	}
	
	func testOther6_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example2.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		
		return inst
	}
	
	func testOther7() {
		let instance = testOther7_impl()
		testOther7_impl(json: instance.asJSON())
	}
	
	func testOther7_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example2.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		
		return inst
	}
}
