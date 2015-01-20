//
//  ProcedureRequestTests.swift
//  ProcedureRequestTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ProcedureRequest? {
		let json = readJSONFile(filename)
		let instance = ProcedureRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedureRequest1() {
		let inst = instantiateFrom("procedurerequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ProcedureRequest instance")
		
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedureRequest2() {
		let inst = instantiateFrom("procedurerequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ProcedureRequest instance")
		
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedureRequest3() {
		let inst = instantiateFrom("procedurerequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ProcedureRequest instance")
		
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "323418000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
}
