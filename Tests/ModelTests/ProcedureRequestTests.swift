//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcedureRequestTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> ProcedureRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ProcedureRequest {
		let instance = ProcedureRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedureRequest1() {
		let instance = try? runProcedureRequest1()
		XCTAssertNotNil(instance, "Must instantiate ProcedureRequest")
		if let instance = instance {
			try! runProcedureRequest1(instance.asJSON())
		}
	}
	
	func runProcedureRequest1(json: FHIRJSON? = nil) throws -> ProcedureRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.code!.coding![0].display!, "Fix me up")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be added</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
