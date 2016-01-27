//
//  ContractTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ContractTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Contract {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Contract {
		let instance = Contract(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContract1() {
		let instance = try? runContract1()
		XCTAssertNotNil(instance, "Must instantiate Contract")
		if let instance = instance {
			try! runContract1(instance.asJSON())
		}
	}
	
	func runContract1(json: FHIRJSON? = nil) throws -> Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id!, "C-123")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
