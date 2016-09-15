//
//  ContractTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ContractTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Contract {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Contract {
		let instance = SwiftFHIR.Contract(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContract1() {
		do {
			let instance = try runContract1()
			try runContract1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw")
		}
	}
	
	@discardableResult
	func runContract1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id, "C-123")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
