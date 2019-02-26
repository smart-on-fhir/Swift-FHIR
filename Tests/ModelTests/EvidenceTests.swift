//
//  EvidenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREvidence = Models.Evidence
#else
import SwiftFHIR
typealias SwiftFHIREvidence = SwiftFHIR.Evidence
#endif


class EvidenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREvidence {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREvidence {
		return try SwiftFHIREvidence(json: json)
	}
	
	func testEvidence1() {
		do {
			let instance = try runEvidence1()
			try runEvidence1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Evidence successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEvidence1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREvidence {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "evidence-example.json")
		
		XCTAssertEqual(inst.exposureBackground?.reference, "EvidenceVariable/example")
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
