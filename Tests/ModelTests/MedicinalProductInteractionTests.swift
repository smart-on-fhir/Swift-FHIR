//
//  MedicinalProductInteractionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductInteraction = Models.MedicinalProductInteraction
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductInteraction = SwiftFHIR.MedicinalProductInteraction
#endif


class MedicinalProductInteractionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductInteraction {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductInteraction {
		return try SwiftFHIRMedicinalProductInteraction(json: json)
	}
	
	func testMedicinalProductInteraction1() {
		do {
			let instance = try runMedicinalProductInteraction1()
			try runMedicinalProductInteraction1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductInteraction successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductInteraction1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductInteraction {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductinteraction-example.json")
		
		XCTAssertEqual(inst.effect?.coding?[0].code, "Increasedplasmaconcentrations")
		XCTAssertEqual(inst.effect?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/interactionseffect")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.interactant?[0].itemCodeableConcept?.coding?[0].code, "ketoconazole")
		XCTAssertEqual(inst.interactant?[0].itemCodeableConcept?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/interactant")
		XCTAssertEqual(inst.interactant?[1].itemCodeableConcept?.coding?[0].code, "itraconazole")
		XCTAssertEqual(inst.interactant?[1].itemCodeableConcept?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/interactant")
		XCTAssertEqual(inst.management?.text, "Coadministration not recommended in patients receiving concomitant systemic treatment strong inhibitors of both CYP3A4 and P-gp")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "StrongInhibitorofCYP3A4")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/interactionsType")
		
		return inst
	}
}
