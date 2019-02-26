//
//  MedicinalProductUndesirableEffectTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductUndesirableEffect = Models.MedicinalProductUndesirableEffect
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductUndesirableEffect = SwiftFHIR.MedicinalProductUndesirableEffect
#endif


class MedicinalProductUndesirableEffectTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductUndesirableEffect {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductUndesirableEffect {
		return try SwiftFHIRMedicinalProductUndesirableEffect(json: json)
	}
	
	func testMedicinalProductUndesirableEffect1() {
		do {
			let instance = try runMedicinalProductUndesirableEffect1()
			try runMedicinalProductUndesirableEffect1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductUndesirableEffect successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductUndesirableEffect1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductUndesirableEffect {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductundesirableeffect-example.json")
		
		XCTAssertEqual(inst.classification?.coding?[0].code, "Bloodandlymphaticsystemdisorders")
		XCTAssertEqual(inst.classification?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/symptom-condition-effectclassification")
		XCTAssertEqual(inst.frequencyOfOccurrence?.coding?[0].code, "Common")
		XCTAssertEqual(inst.frequencyOfOccurrence?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/frequencyofoccurrence")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.symptomConditionEffect?.coding?[0].code, "Anaemia")
		XCTAssertEqual(inst.symptomConditionEffect?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/undesirableeffectassymptom-condition-effect")
		XCTAssertEqual(inst.symptomConditionEffect?.text, "Prevention of\nVTE in adult\npatients who have\nundergone\nelective hip or\nknee replacement\nsurgery (VTEp)")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
