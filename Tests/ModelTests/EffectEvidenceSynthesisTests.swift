//
//  EffectEvidenceSynthesisTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREffectEvidenceSynthesis = Models.EffectEvidenceSynthesis
#else
import SwiftFHIR
typealias SwiftFHIREffectEvidenceSynthesis = SwiftFHIR.EffectEvidenceSynthesis
#endif


class EffectEvidenceSynthesisTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREffectEvidenceSynthesis {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREffectEvidenceSynthesis {
		return try SwiftFHIREffectEvidenceSynthesis(json: json)
	}
	
	func testEffectEvidenceSynthesis1() {
		do {
			let instance = try runEffectEvidenceSynthesis1()
			try runEffectEvidenceSynthesis1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EffectEvidenceSynthesis successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEffectEvidenceSynthesis1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREffectEvidenceSynthesis {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "effectevidencesynthesis-example.json")
		
		XCTAssertEqual(inst.exposure?.reference, "EvidenceVariable/example")
		XCTAssertEqual(inst.exposureAlternative?.reference, "EvidenceVariable/example")
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
