//
//  RequestGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class RequestGroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.RequestGroup {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.RequestGroup {
		return try SwiftFHIR.RequestGroup(json: json)
	}
	
	func testRequestGroup1() {
		do {
			let instance = try runRequestGroup1()
			try runRequestGroup1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RequestGroup successfully, but threw")
		}
	}
	
	@discardableResult
	func runRequestGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RequestGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
