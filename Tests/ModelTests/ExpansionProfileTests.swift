//
//  ExpansionProfileTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ExpansionProfileTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> ExpansionProfile {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ExpansionProfile {
		let instance = ExpansionProfile(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
	
	func runExpansionProfile1(json: FHIRJSON? = nil) throws -> ExpansionProfile {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "expansionprofile-example.json")
		
		XCTAssertTrue(inst.excludeNested ?? false)
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text!.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[ Provide Rendering ]</div>")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
