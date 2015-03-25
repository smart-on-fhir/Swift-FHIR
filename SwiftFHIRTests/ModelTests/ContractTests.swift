//
//  ContractTests.swift
//  ContractTests
//
//  Generated from FHIR 0.4.0.4879 on 2015-03-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ContractTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Contract {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Contract {
		let instance = Contract(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContract1() {
		let instance = testContract1_impl()
		testContract1_impl(json: instance.asJSON())
	}
	
	func testContract1_impl(json: FHIRJSON? = nil) -> Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id!, "C-123")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
