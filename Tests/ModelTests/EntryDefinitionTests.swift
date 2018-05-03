//
//  EntryDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREntryDefinition = Models.EntryDefinition
#else
import SwiftFHIR
typealias SwiftFHIREntryDefinition = SwiftFHIR.EntryDefinition
#endif


class EntryDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREntryDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREntryDefinition {
		return try SwiftFHIREntryDefinition(json: json)
	}
	
	func testEntryDefinition1() {
		do {
			let instance = try runEntryDefinition1()
			try runEntryDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EntryDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEntryDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREntryDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "entrydefinition-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.purpose?.text, "NoPurpose")
		XCTAssertEqual(inst.referencedItem?.reference, "device001.123")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
