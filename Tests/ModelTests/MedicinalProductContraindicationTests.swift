//
//  MedicinalProductContraindicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductContraindication = Models.MedicinalProductContraindication
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductContraindication = SwiftFHIR.MedicinalProductContraindication
#endif


class MedicinalProductContraindicationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductContraindication {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductContraindication {
		return try SwiftFHIRMedicinalProductContraindication(json: json)
	}
	
	func testMedicinalProductContraindication1() {
		do {
			let instance = try runMedicinalProductContraindication1()
			try runMedicinalProductContraindication1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductContraindication successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductContraindication1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductContraindication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductcontraindication-example.json")
		
		XCTAssertEqual(inst.comorbidity?[0].coding?[0].code, "Hepaticdisease")
		XCTAssertEqual(inst.comorbidity?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/comorbidity")
		XCTAssertEqual(inst.disease?.coding?[0].code, "Coagulopathiesandbleedingdiatheses(exclthrombocytopenic)")
		XCTAssertEqual(inst.disease?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/contraindicationsasdisease-symptom-procedure")
		XCTAssertEqual(inst.disease?.text, "Hepatic disease associated with coagulopathy and clinically relevant bleeding risk")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
