//
//  CatalogEntryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCatalogEntry = Models.CatalogEntry
#else
import SwiftFHIR
typealias SwiftFHIRCatalogEntry = SwiftFHIR.CatalogEntry
#endif


class CatalogEntryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCatalogEntry {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCatalogEntry {
		return try SwiftFHIRCatalogEntry(json: json)
	}
	
	func testCatalogEntry1() {
		do {
			let instance = try runCatalogEntry1()
			try runCatalogEntry1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CatalogEntry successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCatalogEntry1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCatalogEntry {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "catalogentry-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.com/identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.orderable, true)
		XCTAssertEqual(inst.referencedItem?.reference, "Medication/123")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.text, "Medication")
		
		return inst
	}
}
