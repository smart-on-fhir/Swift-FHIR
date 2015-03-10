//
//  ProcedureRequestTests.swift
//  ProcedureRequestTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
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
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
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
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
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
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedureRequest4() {
		let instance = testProcedureRequest4_impl()
		testProcedureRequest4_impl(json: instance.asJSON())
	}
	
	func testProcedureRequest4_impl(json: JSONDictionary? = nil) -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedurerequest-qicore-example.canonical.json")
		
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedureRequest5() {
		let instance = testProcedureRequest5_impl()
		testProcedureRequest5_impl(json: instance.asJSON())
	}
	
	func testProcedureRequest5_impl(json: JSONDictionary? = nil) -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedurerequest-qicore-example.json")
		
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
}
