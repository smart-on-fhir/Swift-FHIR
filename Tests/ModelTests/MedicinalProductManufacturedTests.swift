//
//  MedicinalProductManufacturedTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductManufactured = Models.MedicinalProductManufactured
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductManufactured = SwiftFHIR.MedicinalProductManufactured
#endif


class MedicinalProductManufacturedTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductManufactured {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductManufactured {
		return try SwiftFHIRMedicinalProductManufactured(json: json)
	}
	
	func testMedicinalProductManufactured1() {
		do {
			let instance = try runMedicinalProductManufactured1()
			try runMedicinalProductManufactured1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductManufactured successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductManufactured1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductManufactured {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductmanufactured-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.ingredient?[0].reference, "MedicinalProductIngredient/example")
		XCTAssertEqual(inst.manufacturedDoseForm?.coding?[0].code, "Film-coatedtablet")
		XCTAssertEqual(inst.manufacturedDoseForm?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/manufactureddoseform")
		XCTAssertEqual(inst.manufacturer?[0].reference, "Organization/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.physicalCharacteristics?.color?[0], "Pink")
		XCTAssertEqual(inst.physicalCharacteristics?.imprint?[0], "894")
		XCTAssertEqual(inst.physicalCharacteristics?.shape, "Oval")
		XCTAssertEqual(inst.quantity?.unit, "1")
		XCTAssertEqual(inst.quantity?.value, "10")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.unitOfPresentation?.coding?[0].code, "Tablet")
		XCTAssertEqual(inst.unitOfPresentation?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/unitofpresentation")
		
		return inst
	}
}
