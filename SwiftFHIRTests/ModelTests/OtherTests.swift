//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class OtherTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Other? {
		let json = readJSONFile(filename)
		let instance = Other(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOther1() {
		let inst = instantiateFrom("other-example-narrative.json")
		XCTAssertNotNil(inst, "Must have instantiated a Other instance")
		
		XCTAssertEqual(inst!.text!.status!, "additional")	
			
		XCTAssertEqual(inst!.code!.text!, "Example Narrative Tester")
	}
}
