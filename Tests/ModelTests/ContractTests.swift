//
//  ContractTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRContract = Models.Contract
#else
import SwiftFHIR
typealias SwiftFHIRContract = SwiftFHIR.Contract
#endif


class ContractTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRContract {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRContract {
		return try SwiftFHIRContract(json: json)
	}
	
	func testContract1() {
		do {
			let instance = try runContract1()
			try runContract1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id, "C-123")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
