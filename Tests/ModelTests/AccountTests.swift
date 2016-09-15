//
//  AccountTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AccountTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Account {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Account {
		let instance = SwiftFHIR.Account(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAccount1() {
		do {
			let instance = try runAccount1()
			try runAccount1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Account successfully, but threw")
		}
	}
	
	@discardableResult
	func runAccount1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Account {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
