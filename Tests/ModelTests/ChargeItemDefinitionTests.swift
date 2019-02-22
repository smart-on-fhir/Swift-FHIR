//
//  ChargeItemDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRChargeItemDefinition = Models.ChargeItemDefinition
#else
import SwiftFHIR
typealias SwiftFHIRChargeItemDefinition = SwiftFHIR.ChargeItemDefinition
#endif


class ChargeItemDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRChargeItemDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRChargeItemDefinition {
		return try SwiftFHIRChargeItemDefinition(json: json)
	}
	
	func testChargeItemDefinition1() {
		do {
			let instance = try runChargeItemDefinition1()
			try runChargeItemDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ChargeItemDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runChargeItemDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRChargeItemDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "chargeitemdefinition-device-example.json")
		
		XCTAssertEqual(inst.applicability?[0].description_fhir, "Verify ChargeItem pertains to Device 12345")
		XCTAssertEqual(inst.applicability?[0].expression, "%context.service.suppliedItem='Device/12345'")
		XCTAssertEqual(inst.applicability?[0].language, "text/fhirpath")
		XCTAssertEqual(inst.description_fhir, "Financial details for  custom made device")
		XCTAssertEqual(inst.id, "device")
		XCTAssertEqual(inst.instance?[0].reference, "Device/12345")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].amount?.currency, "EUR")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].amount?.value, "67.44")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].code, "VK")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].display, "Verkaufspreis (netto)")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].system?.absoluteString, "http://fhir.de/CodeSystem/billing-attributes")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].type, InvoicePriceComponentType(rawValue: "base")!)
		XCTAssertEqual(inst.propertyGroup?[1].applicability?[0].description_fhir, "Gültigkeit Steuersatz")
		XCTAssertEqual(inst.propertyGroup?[1].applicability?[0].expression, "%context.occurenceDateTime > '2018-04-01'")
		XCTAssertEqual(inst.propertyGroup?[1].applicability?[0].language, "text/fhirpath")
		XCTAssertEqual(inst.propertyGroup?[1].priceComponent?[0].code?.coding?[0].code, "MWST")
		XCTAssertEqual(inst.propertyGroup?[1].priceComponent?[0].code?.coding?[0].display, "Mehrwersteuersatz")
		XCTAssertEqual(inst.propertyGroup?[1].priceComponent?[0].code?.coding?[0].system?.absoluteString, "http://fhir.de/CodeSystem/billing-attributes")
		XCTAssertEqual(inst.propertyGroup?[1].priceComponent?[0].factor, "1.19")
		XCTAssertEqual(inst.propertyGroup?[1].priceComponent?[0].type, InvoicePriceComponentType(rawValue: "tax")!)
		XCTAssertEqual(inst.propertyGroup?[2].applicability?[0].description_fhir, "Gültigkeit Steuersatz")
		XCTAssertEqual(inst.propertyGroup?[2].applicability?[0].expression, "%context.occurenceDateTime <= '2018-04-01'")
		XCTAssertEqual(inst.propertyGroup?[2].applicability?[0].language, "text/fhirpath")
		XCTAssertEqual(inst.propertyGroup?[2].priceComponent?[0].code?.coding?[0].code, "MWST")
		XCTAssertEqual(inst.propertyGroup?[2].priceComponent?[0].code?.coding?[0].display, "Mehrwersteuersatz")
		XCTAssertEqual(inst.propertyGroup?[2].priceComponent?[0].code?.coding?[0].system?.absoluteString, "http://fhir.de/CodeSystem/billing-attributes")
		XCTAssertEqual(inst.propertyGroup?[2].priceComponent?[0].factor, "1.07")
		XCTAssertEqual(inst.propertyGroup?[2].priceComponent?[0].type, InvoicePriceComponentType(rawValue: "tax")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://sap.org/ChargeItemDefinition/device-123")
		
		return inst
	}
	
	func testChargeItemDefinition2() {
		do {
			let instance = try runChargeItemDefinition2()
			try runChargeItemDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ChargeItemDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runChargeItemDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRChargeItemDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "chargeitemdefinition-ebm-example.json")
		
		XCTAssertEqual(inst.applicability?[0].description_fhir, "Excludes billing code 13250 for same Encounter")
		XCTAssertEqual(inst.applicability?[0].expression, "[some CQL expression]")
		XCTAssertEqual(inst.applicability?[0].language, "text/cql")
		XCTAssertEqual(inst.applicability?[1].description_fhir, "Applies only once per Encounter")
		XCTAssertEqual(inst.applicability?[1].expression, "[some CQL expression]")
		XCTAssertEqual(inst.applicability?[1].language, "text/CQL")
		XCTAssertEqual(inst.code?.coding?[0].code, "30110")
		XCTAssertEqual(inst.code?.coding?[0].display, "Allergologiediagnostik I")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://fhir.de/CodingSystem/kbv/ebm")
		XCTAssertEqual(inst.description_fhir, "Allergologisch-diagnostischer Komplex zur Diagnostik und/oder zum Ausschluss einer (Kontakt-)Allergie vom Spättyp (Typ IV), einschl. Kosten")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2018-06-30")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2018-04-01")
		XCTAssertEqual(inst.id, "ebm")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].amount?.currency, "EUR")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].amount?.value, "67.44")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].code, "gesamt-euro")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].display, "Gesamt (Euro)")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].code?.coding?[0].system?.absoluteString, "http://fhir.de/CodeSystem/kbv/ebm-attribute")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[0].type, InvoicePriceComponentType(rawValue: "base")!)
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[1].code?.coding?[0].code, "gesamt-punkte")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[1].code?.coding?[0].display, "Gesamt (Punkte)")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[1].code?.coding?[0].system?.absoluteString, "http://fhir.de/CodeSystem/kbv/ebm-attribute")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[1].factor, "633")
		XCTAssertEqual(inst.propertyGroup?[0].priceComponent?[1].type, InvoicePriceComponentType(rawValue: "informational")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://fhir.de/ChargeItemDefinition/kbv/ebm-30110")
		XCTAssertEqual(inst.version, "2-2018")
		
		return inst
	}
}
