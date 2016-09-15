//
//  DataElementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DataElementTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DataElement {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DataElement {
		let instance = SwiftFHIR.DataElement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDataElement1() {
		do {
			let instance = try runDataElement1()
			try runDataElement1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DataElement successfully, but threw")
		}
	}
	
	@discardableResult
	func runDataElement1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "dataelement-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "2179414")
		XCTAssertEqual(inst.contained?[1].id, "2179414-permitted")
		XCTAssertEqual(inst.contained?[2].id, "2179414-cm")
		XCTAssertEqual(inst.element?[0].binding?.strength, "required")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-valueset")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[0].valueReference?.reference, "#2179414-permitted")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.extension_fhir?[1].valueReference?.reference, "#2179414-cm")
		XCTAssertEqual(inst.element?[0].binding?.valueSetReference?.reference, "#2179414")
		XCTAssertEqual(inst.element?[0].definition, "The code representing the gender of a person.")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.element?[0].extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/elementdefinition-question")
		XCTAssertEqual(inst.element?[0].extension_fhir?[1].valueString, "Gender")
		XCTAssertEqual(inst.element?[0].maxLength, 13)
		XCTAssertEqual(inst.element?[0].path, "Gender")
		XCTAssertEqual(inst.element?[0].type?[0].code, "CodeableConcept")
		XCTAssertEqual(inst.id, "gender")
		XCTAssertEqual(inst.identifier?[0].value, "2179650")
		XCTAssertEqual(inst.name, "Gender Code")
		XCTAssertEqual(inst.publisher, "DCP")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.useContext?[0].coding?[0].display, "FBPP Pooled Database")
		XCTAssertEqual(inst.useContext?[0].coding?[0].system?.absoluteString, "http://example.org/FBPP")
		XCTAssertEqual(inst.useContext?[0].coding?[1].display, "Demographics")
		XCTAssertEqual(inst.useContext?[0].coding?[1].system?.absoluteString, "http://example.org/PhenX")
		XCTAssertEqual(inst.useContext?[0].coding?[2].display, "Pt. Administrative")
		XCTAssertEqual(inst.useContext?[0].coding?[2].system?.absoluteString, "http://example.org/EligibilityCriteria")
		XCTAssertEqual(inst.useContext?[0].coding?[3].display, "UAMS New CDEs")
		XCTAssertEqual(inst.useContext?[0].coding?[3].system?.absoluteString, "http://example.org/UAMSClinicalResearch")
		XCTAssertEqual(inst.useContext?[0].coding?[4].display, "Substance Abuse and ")
		XCTAssertEqual(inst.useContext?[0].coding?[4].system?.absoluteString, "http://example.org/PhenX")
		XCTAssertEqual(inst.useContext?[0].coding?[5].display, "CSAERS Adverse Event")
		XCTAssertEqual(inst.useContext?[0].coding?[5].system?.absoluteString, "http://example.org/Category")
		XCTAssertEqual(inst.useContext?[0].coding?[6].display, "Core: Tier 1")
		XCTAssertEqual(inst.useContext?[0].coding?[6].system?.absoluteString, "http://example.org/PhenX")
		XCTAssertEqual(inst.useContext?[0].coding?[7].display, "Case Report Forms")
		XCTAssertEqual(inst.useContext?[0].coding?[7].system?.absoluteString, "http://example.org/Category")
		XCTAssertEqual(inst.useContext?[0].coding?[8].display, "CSAERS Review Set")
		XCTAssertEqual(inst.useContext?[0].coding?[8].system?.absoluteString, "http://example.org/Category")
		XCTAssertEqual(inst.useContext?[0].coding?[9].display, "CIAF")
		XCTAssertEqual(inst.useContext?[0].coding?[9].system?.absoluteString, "http://example.org/Demonstration%20Applications")
		XCTAssertEqual(inst.version, "1.0")
		
		return inst
	}
	
	func testDataElement2() {
		do {
			let instance = try runDataElement2()
			try runDataElement2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DataElement successfully, but threw")
		}
	}
	
	@discardableResult
	func runDataElement2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "dataelement-labtestmaster-example.json")
		
		XCTAssertEqual(inst.element?[0].alias?[0], "Protime, PT")
		XCTAssertEqual(inst.element?[0].comments, "Used to screen the integrity of the extrinsic and common pathways of coagulation and to monitor warfarin anticoagulation. ")
		XCTAssertEqual(inst.element?[0].definition, "The PT test evaluates the extrinsic and common pathways of the coagulation cascade.")
		XCTAssertEqual(inst.element?[0].exampleDecimal, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/elementdefinition-allowedUnits")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "s")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "second")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertTrue(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].userSelected ?? false)
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.coding?[0].version, "1.9")
		XCTAssertEqual(inst.element?[0].extension_fhir?[0].valueCodeableConcept?.text, "second")
		XCTAssertEqual(inst.element?[0].mapping?[0].identity, "loinc")
		XCTAssertEqual(inst.element?[0].mapping?[0].map, "5964-2")
		XCTAssertEqual(inst.element?[0].path, "prothrombin")
		XCTAssertEqual(inst.element?[0].requirements, "This test is orderable. A plasma specimen in a 3.2% sodium citrate blue top tube is required.")
		XCTAssertEqual(inst.element?[0].type?[0].code, "decimal")
		XCTAssertEqual(inst.id, "prothrombin")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Century Hospital Laboratory")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2011-05-19")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.CenturyHospital/Laboratory/DirectoryofServices")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Prothrombin Time, PT")
		XCTAssertEqual(inst.identifier?[0].value, "11")
		XCTAssertEqual(inst.mapping?[0].comments, "Version 2.48 or later")
		XCTAssertEqual(inst.mapping?[0].identity, "loinc")
		XCTAssertEqual(inst.mapping?[0].name, "LOINC")
		XCTAssertEqual(inst.mapping?[0].uri?.absoluteString, "http://loinc.org/")
		XCTAssertEqual(inst.name, "Prothrombin Time")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
