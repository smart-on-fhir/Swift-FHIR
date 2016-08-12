//
//  LinkageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class LinkageTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Linkage {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Linkage {
		let instance = Linkage(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
	
	func runLinkage1(json: FHIRJSON? = nil) throws -> Linkage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "linkage-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.item![0].resource!.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item![0].resource!.reference, "Condition/example")
		XCTAssertEqual(inst.item![0].type, "source")
		XCTAssertEqual(inst.item![1].resource!.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item![1].resource!.reference, "Condition/condition-example")
		XCTAssertEqual(inst.item![1].type, "alternate")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
