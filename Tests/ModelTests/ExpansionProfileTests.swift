//
//  ExpansionProfileTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ExpansionProfileTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ExpansionProfile {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ExpansionProfile {
		return try SwiftFHIR.ExpansionProfile(json: json)
	}
	
	func testExpansionProfile1() {
		do {
			let instance = try runExpansionProfile1()
			try runExpansionProfile1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ExpansionProfile successfully, but threw")
		}
	}
	
	@discardableResult
	func runExpansionProfile1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ExpansionProfile {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "expansionprofile-example.json")
		
		XCTAssertTrue(inst.excludeNested ?? false)
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[ Provide Rendering ]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
