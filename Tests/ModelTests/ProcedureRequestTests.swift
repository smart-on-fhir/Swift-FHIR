//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProcedureRequest = Models.ProcedureRequest
#else
import SwiftFHIR
typealias SwiftFHIRProcedureRequest = SwiftFHIR.ProcedureRequest
#endif


class ProcedureRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProcedureRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProcedureRequest {
		return try SwiftFHIRProcedureRequest(json: json)
	}
	
	func testProcedureRequest1() {
		do {
			let instance = try runProcedureRequest1()
			try runProcedureRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "303653007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Computed tomography of head")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be added</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
