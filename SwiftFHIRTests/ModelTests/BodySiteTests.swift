//
//  BodySiteTests.swift
//  BodySiteTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class BodySiteTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> BodySite {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> BodySite {
		let instance = BodySite(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBodySite1() {
		let instance = testBodySite1_impl()
		testBodySite1_impl(json: instance.asJSON())
	}
	
	func testBodySite1_impl(json: JSONDictionary? = nil) -> BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bodysite-example.canonical.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testBodySite2() {
		let instance = testBodySite2_impl()
		testBodySite2_impl(json: instance.asJSON())
	}
	
	func testBodySite2_impl(json: JSONDictionary? = nil) -> BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bodysite-example.canonical.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testBodySite3() {
		let instance = testBodySite3_impl()
		testBodySite3_impl(json: instance.asJSON())
	}
	
	func testBodySite3_impl(json: JSONDictionary? = nil) -> BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bodysite-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
