//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> ProcedureRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ProcedureRequest {
		let instance = ProcedureRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedureRequest1() {
		do {
			let instance = try runProcedureRequest1()
			try runProcedureRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw")
		}
	}
	
	func runProcedureRequest1(json: FHIRJSON? = nil) throws -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code, "303653007")
		XCTAssertEqual(inst.code!.coding![0].display, "Computed tomography of head")
		XCTAssertEqual(inst.code!.coding![0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject!.reference, "Patient/example")
		XCTAssertEqual(inst.text!.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be added</div>")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
