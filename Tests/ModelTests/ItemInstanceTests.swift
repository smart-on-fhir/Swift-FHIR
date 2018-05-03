//
//  ItemInstanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRItemInstance = Models.ItemInstance
#else
import SwiftFHIR
typealias SwiftFHIRItemInstance = SwiftFHIR.ItemInstance
#endif


class ItemInstanceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRItemInstance {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRItemInstance {
		return try SwiftFHIRItemInstance(json: json)
	}
	
	func testItemInstance1() {
		do {
			let instance = try runItemInstance1()
			try runItemInstance1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ItemInstance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runItemInstance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRItemInstance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "iteminstance-example.json")
		
		XCTAssertEqual(inst.count, 1)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
