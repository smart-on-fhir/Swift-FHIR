//
//  ProcedureRequestTests.swift
//  ProcedureRequestTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ProcedureRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ProcedureRequest {
		let instance = ProcedureRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedureRequest1() {
		let instance = testProcedureRequest1_impl()
		testProcedureRequest1_impl(json: instance.asJSON())
	}
	
	func testProcedureRequest1_impl(json: JSONDictionary? = nil) -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedurerequest-example.canonical.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedureRequest2() {
		let instance = testProcedureRequest2_impl()
		testProcedureRequest2_impl(json: instance.asJSON())
	}
	
	func testProcedureRequest2_impl(json: JSONDictionary? = nil) -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedurerequest-example.canonical.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedureRequest3() {
		let instance = testProcedureRequest3_impl()
		testProcedureRequest3_impl(json: instance.asJSON())
	}
	
	func testProcedureRequest3_impl(json: JSONDictionary? = nil) -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
}
