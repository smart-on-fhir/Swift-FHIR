//
//  LinkageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class LinkageTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Linkage {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Linkage {
		return try SwiftFHIR.Linkage(json: json)
	}
	
	func testLinkage1() {
		do {
			let instance = try runLinkage1()
			try runLinkage1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Linkage successfully, but threw")
		}
	}
	
	@discardableResult
	func runLinkage1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Linkage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "linkage-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.item?[0].resource?.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item?[0].resource?.reference, "Condition/example")
		XCTAssertEqual(inst.item?[0].type, LinkageType(rawValue: "source")!)
		XCTAssertEqual(inst.item?[1].resource?.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item?[1].resource?.reference, "Condition/condition-example")
		XCTAssertEqual(inst.item?[1].type, LinkageType(rawValue: "alternate")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
