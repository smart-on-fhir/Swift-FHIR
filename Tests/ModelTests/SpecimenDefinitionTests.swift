//
//  SpecimenDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSpecimenDefinition = Models.SpecimenDefinition
#else
import SwiftFHIR
typealias SwiftFHIRSpecimenDefinition = SwiftFHIR.SpecimenDefinition
#endif


class SpecimenDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSpecimenDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSpecimenDefinition {
		return try SwiftFHIRSpecimenDefinition(json: json)
	}
	
	func testSpecimenDefinition1() {
		do {
			let instance = try runSpecimenDefinition1()
			try runSpecimenDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SpecimenDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimenDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimenDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimendefinition-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.specimenToLab?[0].isDerived, true)
		XCTAssertEqual(inst.specimenToLab?[0].preference, SpecimenContainedPreference(rawValue: "alternate")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
