//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ProcedureRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ProcedureRequest {
		let instance = SwiftFHIR.ProcedureRequest(json: json)
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
	
	@discardableResult
	func runProcedureRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "323418000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Fix me up")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>To be added</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
