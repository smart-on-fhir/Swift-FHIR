//
//  SupplyTests.swift
//  SupplyTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class SupplyTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Supply? {
		let json = readJSONFile(filename)
		let instance = Supply(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupply1() {
		let inst = instantiateFrom("supply-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Supply instance")
		
		XCTAssertEqual(inst!.text!.div!, "<div>[Put rendering here]</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
