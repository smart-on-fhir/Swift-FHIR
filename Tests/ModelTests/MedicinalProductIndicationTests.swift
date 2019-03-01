//
//  MedicinalProductIndicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMedicinalProductIndication = Models.MedicinalProductIndication
#else
import SwiftFHIR
typealias SwiftFHIRMedicinalProductIndication = SwiftFHIR.MedicinalProductIndication
#endif


class MedicinalProductIndicationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMedicinalProductIndication {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMedicinalProductIndication {
		return try SwiftFHIRMedicinalProductIndication(json: json)
	}
	
	func testMedicinalProductIndication1() {
		do {
			let instance = try runMedicinalProductIndication1()
			try runMedicinalProductIndication1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test MedicinalProductIndication successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMedicinalProductIndication1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMedicinalProductIndication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "medicinalproductindication-example.json")
		
		XCTAssertEqual(inst.comorbidity?[0].coding?[0].code, "Hipsurgery")
		XCTAssertEqual(inst.comorbidity?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/comorbidity")
		XCTAssertEqual(inst.diseaseSymptomProcedure?.coding?[0].code, "Venousthromboembolismprophylaxis")
		XCTAssertEqual(inst.diseaseSymptomProcedure?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/indicationasdisease-symptom-procedure")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.intendedEffect?.coding?[0].code, "PRYLX")
		XCTAssertEqual(inst.intendedEffect?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/intendedeffect")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.population?[0].ageRange?.low?.unit, "a")
		XCTAssertEqual(inst.population?[0].ageRange?.low?.value, "18")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
