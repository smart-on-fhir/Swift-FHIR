//
//  ResearchElementDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRResearchElementDefinition = Models.ResearchElementDefinition
#else
import SwiftFHIR
typealias SwiftFHIRResearchElementDefinition = SwiftFHIR.ResearchElementDefinition
#endif


class ResearchElementDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRResearchElementDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRResearchElementDefinition {
		return try SwiftFHIRResearchElementDefinition(json: json)
	}
	
	func testResearchElementDefinition1() {
		do {
			let instance = try runResearchElementDefinition1()
			try runResearchElementDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ResearchElementDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runResearchElementDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRResearchElementDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "researchelementdefinition-example.json")
		
		XCTAssertEqual(inst.characteristic?[0].definitionCodeableConcept?.text, "Diabetic patients over 65")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, ResearchElementType(rawValue: "population")!)
		
		return inst
	}
}
