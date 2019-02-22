//
//  EvidenceVariableTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREvidenceVariable = Models.EvidenceVariable
#else
import SwiftFHIR
typealias SwiftFHIREvidenceVariable = SwiftFHIR.EvidenceVariable
#endif


class EvidenceVariableTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREvidenceVariable {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREvidenceVariable {
		return try SwiftFHIREvidenceVariable(json: json)
	}
	
	func testEvidenceVariable1() {
		do {
			let instance = try runEvidenceVariable1()
			try runEvidenceVariable1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EvidenceVariable successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEvidenceVariable1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREvidenceVariable {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "evidencevariable-example.json")
		
		XCTAssertEqual(inst.characteristic?[0].definitionCodeableConcept?.text, "Diabetic patients over 65")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
