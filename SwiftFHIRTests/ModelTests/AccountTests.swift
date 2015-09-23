//
//  AccountTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AccountTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Account {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Account {
		let instance = Account(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAccount1() {
		let instance = try? runAccount1()
		XCTAssertNotNil(instance, "Must instantiate Account")
		try! runAccount1(instance!.asJSON())
	}
	
	func runAccount1(json: FHIRJSON? = nil) throws -> Account {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
