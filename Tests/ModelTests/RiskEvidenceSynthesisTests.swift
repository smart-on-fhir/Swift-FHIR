//
//  RiskEvidenceSynthesisTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRRiskEvidenceSynthesis = Models.RiskEvidenceSynthesis
#else
import SwiftFHIR
typealias SwiftFHIRRiskEvidenceSynthesis = SwiftFHIR.RiskEvidenceSynthesis
#endif


class RiskEvidenceSynthesisTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRRiskEvidenceSynthesis {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRRiskEvidenceSynthesis {
		return try SwiftFHIRRiskEvidenceSynthesis(json: json)
	}
	
	func testRiskEvidenceSynthesis1() {
		do {
			let instance = try runRiskEvidenceSynthesis1()
			try runRiskEvidenceSynthesis1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RiskEvidenceSynthesis successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRiskEvidenceSynthesis1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRiskEvidenceSynthesis {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "riskevidencesynthesis-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome?.reference, "EvidenceVariable/example")
		XCTAssertEqual(inst.population?.reference, "EvidenceVariable/example")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
