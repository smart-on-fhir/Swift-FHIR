//
//  RequestGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRRequestGroup = Models.RequestGroup
#else
import SwiftFHIR
typealias SwiftFHIRRequestGroup = SwiftFHIR.RequestGroup
#endif


class RequestGroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRRequestGroup {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRRequestGroup {
		return try SwiftFHIRRequestGroup(json: json)
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
	func runRequestGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRequestGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "requestgroup-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
