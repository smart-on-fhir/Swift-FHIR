//
//  OperationOutcomeTests.swift
//  OperationOutcomeTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OperationOutcomeTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> OperationOutcome {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> OperationOutcome {
		let instance = OperationOutcome(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOperationOutcome1() {
		let instance = testOperationOutcome1_impl()
		testOperationOutcome1_impl(json: instance.asJSON())
	}
	
	func testOperationOutcome1_impl(json: JSONDictionary? = nil) -> OperationOutcome {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "operationoutcome-example.canonical.json")
		
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.issue![0].location![0], "/Person[1]/gender[1]")
		XCTAssertEqual(inst.issue![0].severity!, "error")
		XCTAssertEqual(inst.issue![0].type!.code!, "V15")
		XCTAssertEqual(inst.issue![0].type!.display!, "InvalidCode")
		XCTAssertEqual(inst.issue![0].type!.system!.absoluteString!, "http://test.org/issueCodeSystem")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testOperationOutcome2() {
		let instance = testOperationOutcome2_impl()
		testOperationOutcome2_impl(json: instance.asJSON())
	}
	
	func testOperationOutcome2_impl(json: JSONDictionary? = nil) -> OperationOutcome {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "operationoutcome-example.canonical.json")
		
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.issue![0].location![0], "/Person[1]/gender[1]")
		XCTAssertEqual(inst.issue![0].severity!, "error")
		XCTAssertEqual(inst.issue![0].type!.code!, "V15")
		XCTAssertEqual(inst.issue![0].type!.display!, "InvalidCode")
		XCTAssertEqual(inst.issue![0].type!.system!.absoluteString!, "http://test.org/issueCodeSystem")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testOperationOutcome3() {
		let instance = testOperationOutcome3_impl()
		testOperationOutcome3_impl(json: instance.asJSON())
	}
	
	func testOperationOutcome3_impl(json: JSONDictionary? = nil) -> OperationOutcome {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "operationoutcome-example.json")
		
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.issue![0].location![0], "/Person[1]/gender[1]")
		XCTAssertEqual(inst.issue![0].severity!, "error")
		XCTAssertEqual(inst.issue![0].type!.code!, "V15")
		XCTAssertEqual(inst.issue![0].type!.display!, "InvalidCode")
		XCTAssertEqual(inst.issue![0].type!.system!.absoluteString!, "http://test.org/issueCodeSystem")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
