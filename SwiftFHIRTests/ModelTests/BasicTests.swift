//
//  BasicTests.swift
//  BasicTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class BasicTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Basic {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Basic {
		let instance = Basic(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBasic1() {
		let instance = testBasic1_impl()
		testBasic1_impl(json: instance.asJSON())
	}
	
	func testBasic1_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example-narrative.canonical.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "basic-example-narrative")
		
		return inst
	}
	
	func testBasic2() {
		let instance = testBasic2_impl()
		testBasic2_impl(json: instance.asJSON())
	}
	
	func testBasic2_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example-narrative.canonical.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "basic-example-narrative")
		
		return inst
	}
	
	func testBasic3() {
		let instance = testBasic3_impl()
		testBasic3_impl(json: instance.asJSON())
	}
	
	func testBasic3_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example-narrative.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "basic-example-narrative")
		
		return inst
	}
	
	func testBasic4() {
		let instance = testBasic4_impl()
		testBasic4_impl(json: instance.asJSON())
	}
	
	func testBasic4_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/basic-resource-type")
		XCTAssertEqual(inst.id!, "referral")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testBasic5() {
		let instance = testBasic5_impl()
		testBasic5_impl(json: instance.asJSON())
	}
	
	func testBasic5_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/basic-resource-type")
		XCTAssertEqual(inst.id!, "referral")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testBasic6() {
		let instance = testBasic6_impl()
		testBasic6_impl(json: instance.asJSON())
	}
	
	func testBasic6_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example2.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.id!, "classModel")
		
		return inst
	}
	
	func testBasic7() {
		let instance = testBasic7_impl()
		testBasic7_impl(json: instance.asJSON())
	}
	
	func testBasic7_impl(json: JSONDictionary? = nil) -> Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "basic-example2.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.id!, "classModel")
		
		return inst
	}
}
