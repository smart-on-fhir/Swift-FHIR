//
//  ActivityGroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ActivityGroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ActivityGroup {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ActivityGroup {
		let instance = SwiftFHIR.ActivityGroup(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testActivityGroup1() {
		do {
			let instance = try runActivityGroup1()
			try runActivityGroup1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ActivityGroup successfully, but threw")
		}
	}
	
	@discardableResult
	func runActivityGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ActivityGroup {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "activitygroup-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
