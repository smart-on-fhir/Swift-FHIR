//
//  MedicinalProductPharmaceuticalTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductPharmaceutical = Models.MedicinalProductPharmaceutical
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductPharmaceutical = SwiftFHIR.MedicinalProductPharmaceutical
#endif


class MedicinalProductPharmaceuticalTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductPharmaceutical {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductPharmaceutical {
		return try SwiftFHIRMedicinalProductPharmaceutical(json: json)
	}
	
	func testMedicinalProductPharmaceutical1() {
		do {
			let instance = try runMedicinalProductPharmaceutical1()
			try runMedicinalProductPharmaceutical1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductPharmaceutical successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductPharmaceutical1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductPharmaceutical {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductpharmaceutical-example.json")
		
		XCTAssertEqual(inst.administrableDoseForm?.coding?[0].code, "Film-coatedtablet")
		XCTAssertEqual(inst.administrableDoseForm?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/administrabledoseform")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/phpididentifiersets")
		XCTAssertEqual(inst.identifier?[0].value, "{PhPID}")
		XCTAssertEqual(inst.ingredient?[0].reference, "MedicinalProductIngredient/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.routeOfAdministration?[0].code?.coding?[0].code, "OralUse")
		XCTAssertEqual(inst.routeOfAdministration?[0].code?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/routeofadministration")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.unitOfPresentation?.coding?[0].code, "Tablet")
		XCTAssertEqual(inst.unitOfPresentation?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/unitofpresentation")
		
		return inst
	}
}
