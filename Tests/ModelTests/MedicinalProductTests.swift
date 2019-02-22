//
//  MedicinalProductTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.attachedDocument?[0].reference, "DocumentReference/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ema.europa.eu/example/MPID")
		XCTAssertEqual(inst.identifier?[0].value, "{mpid}")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].authorisationReferenceNumber?.system?.absoluteString, "http://ema.europa.eu/example/manufacturingAuthorisationReferenceNumber")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].authorisationReferenceNumber?.value, "1324TZ")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].effectiveDate?.description, "2013-03-15")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].manufacturer?[0].reference, "Organization/example")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].operationType?.coding?[0].code, "Batchrelease")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].operationType?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/manufacturingOperationType")
		XCTAssertEqual(inst.manufacturingBusinessOperation?[0].regulator?.reference, "Organization/example")
		XCTAssertEqual(inst.masterFile?[0].reference, "DocumentReference/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].country?.coding?[0].code, "EU")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].country?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/countryCode")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].jurisdiction?.coding?[0].code, "EU")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].jurisdiction?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/jurisdictionCode")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].language?.coding?[0].code, "EN")
		XCTAssertEqual(inst.name?[0].countryLanguage?[0].language?.coding?[0].system?.absoluteString, "http://ema.europa.eu/example/languageCode")
		XCTAssertEqual(inst.name?[0].namePart?[0].part, "Equilidem")
		XCTAssertEqual(inst.name?[0].namePart?[0].type?.code, "INV")
		XCTAssertEqual(inst.name?[0].namePart?[1].part, "2.5 mg")
		XCTAssertEqual(inst.name?[0].namePart?[1].type?.code, "STR")
		XCTAssertEqual(inst.name?[0].namePart?[2].part, "film-coated tablets")
		XCTAssertEqual(inst.name?[0].namePart?[2].type?.code, "FRM")
		XCTAssertEqual(inst.name?[0].productName, "Equilidem 2.5 mg film-coated tablets")
		XCTAssertEqual(inst.productClassification?[0].coding?[0].code, "WHOAnatomicalTherapeuticChemicalATCClassificationSystem|B01AF02")
		XCTAssertEqual(inst.productClassification?[0].coding?[0].system?.absoluteString, "http://ema.europa.eu/example/WHOAnatomicalTherapeuticChemicalATCClassificationSystem")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
