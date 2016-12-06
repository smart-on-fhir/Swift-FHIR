//
//  RequestGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
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
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RequestGroup successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRequestGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RequestGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
