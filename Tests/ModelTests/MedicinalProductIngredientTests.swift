//
//  MedicinalProductIngredientTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductIngredient = Models.MedicinalProductIngredient
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductIngredient = SwiftFHIR.MedicinalProductIngredient
#endif


class MedicinalProductIngredientTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductIngredient {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductIngredient {
		return try SwiftFHIRMedicinalProductIngredient(json: json)
	}
	
	func testMedicinalProductIngredient1() {
		do {
			let instance = try runMedicinalProductIngredient1()
			try runMedicinalProductIngredient1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductIngredient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductIngredient1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductIngredient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductingredient-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.manufacturer?[0].reference, "Organization/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.role?.coding?[0].code, "ActiveBase")
		XCTAssertEqual(inst.role?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/ingredientRole")
		XCTAssertEqual(inst.specifiedSubstance?[0].code?.coding?[0].code, "equixabanCompanyequixaban1")
		XCTAssertEqual(inst.specifiedSubstance?[0].code?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/specifiedSubstance")
		XCTAssertEqual(inst.specifiedSubstance?[0].group?.coding?[0].code, "2")
		XCTAssertEqual(inst.specifiedSubstance?[0].group?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/specifiedSubstanceGroup")
		XCTAssertEqual(inst.substance?.code?.coding?[0].code, "EQUIXABAN")
		XCTAssertEqual(inst.substance?.code?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/substance")
		XCTAssertEqual(inst.substance?.strength?[0].presentation?.denominator?.unit, "{tablet}")
		XCTAssertEqual(inst.substance?.strength?[0].presentation?.denominator?.value, "1")
		XCTAssertEqual(inst.substance?.strength?[0].presentation?.numerator?.unit, "mg")
		XCTAssertEqual(inst.substance?.strength?[0].presentation?.numerator?.value, "2.5")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
