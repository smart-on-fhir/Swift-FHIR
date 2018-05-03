//
//  MedicinalProductTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProduct = Models.MedicinalProduct
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProduct = SwiftFHIR.MedicinalProduct
#endif


class MedicinalProductTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProduct {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProduct {
		return try SwiftFHIRMedicinalProduct(json: json)
	}
	
	func testMedicinalProduct1() {
		do {
			let instance = try runMedicinalProduct1()
			try runMedicinalProduct1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProduct successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProduct1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProduct {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproduct-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.value, "example")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].country?.coding?[0].code, "code")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].language?.coding?[0].code, "code")
		XCTAssertEqual(inst.name?[0].fullName, "name")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
