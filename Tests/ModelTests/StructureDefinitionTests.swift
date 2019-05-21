//
//  StructureDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRStructureDefinition = Models.StructureDefinition
#else
import SwiftFHIR
typealias SwiftFHIRStructureDefinition = SwiftFHIR.StructureDefinition
#endif


class StructureDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRStructureDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRStructureDefinition {
		return try SwiftFHIRStructureDefinition(json: json)
	}
	
	func testStructureDefinition1() {
		do {
			let instance = try runStructureDefinition1()
			try runStructureDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test StructureDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runStructureDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRStructureDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "structuredefinition-example-section-library.json")
		
		XCTAssertEqual(inst.abstract, true)
		// Don't know how to create unit test for "baseDefinition", which is a FHIRCanonical
		XCTAssertEqual(inst.date?.description, "2018-11-05T17:57:00+11:00")
		XCTAssertEqual(inst.derivation, TypeDerivationRule(rawValue: "constraint")!)
		XCTAssertEqual(inst.differential?.element?[0].id, "Composition")
		XCTAssertEqual(inst.differential?.element?[0].path, "Composition")
		XCTAssertEqual(inst.differential?.element?[1].id, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[1].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.description_fhir, "Slice by .section.code when using this library of sections")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.discriminator?[0].path, "code")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.discriminator?[0].type, DiscriminatorType(rawValue: "pattern")!)
		XCTAssertEqual(inst.differential?.element?[1].slicing?.ordered, true)
		XCTAssertEqual(inst.differential?.element?[1].slicing?.rules, SlicingRules(rawValue: "closed")!)
		XCTAssertEqual(inst.differential?.element?[2].id, "Composition.section:procedure")
		XCTAssertEqual(inst.differential?.element?[2].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[2].sliceName, "procedure")
		XCTAssertEqual(inst.differential?.element?[3].fixedString, "Procedures Performed")
		XCTAssertEqual(inst.differential?.element?[3].id, "Composition.section:procedure.title")
		XCTAssertEqual(inst.differential?.element?[3].min, 1)
		XCTAssertEqual(inst.differential?.element?[3].path, "Composition.section.title")
		XCTAssertEqual(inst.differential?.element?[4].id, "Composition.section:procedure.code")
		XCTAssertEqual(inst.differential?.element?[4].min, 1)
		XCTAssertEqual(inst.differential?.element?[4].path, "Composition.section.code")
		XCTAssertEqual(inst.differential?.element?[4].patternCodeableConcept?.coding?[0].code, "29554-3")
		XCTAssertEqual(inst.differential?.element?[4].patternCodeableConcept?.coding?[0].display, "Procedure Narrative")
		XCTAssertEqual(inst.differential?.element?[4].patternCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.differential?.element?[5].id, "Composition.section:medications")
		XCTAssertEqual(inst.differential?.element?[5].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[5].sliceName, "medications")
		XCTAssertEqual(inst.differential?.element?[6].fixedString, "Medications Administered")
		XCTAssertEqual(inst.differential?.element?[6].id, "Composition.section:medications.title")
		XCTAssertEqual(inst.differential?.element?[6].min, 1)
		XCTAssertEqual(inst.differential?.element?[6].path, "Composition.section.title")
		XCTAssertEqual(inst.differential?.element?[7].id, "Composition.section:medications.code")
		XCTAssertEqual(inst.differential?.element?[7].min, 1)
		XCTAssertEqual(inst.differential?.element?[7].path, "Composition.section.code")
		XCTAssertEqual(inst.differential?.element?[7].patternCodeableConcept?.coding?[0].code, "29549-3")
		XCTAssertEqual(inst.differential?.element?[7].patternCodeableConcept?.coding?[0].display, "Medication administered Narrative")
		XCTAssertEqual(inst.differential?.element?[7].patternCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.differential?.element?[8].id, "Composition.section:plan")
		XCTAssertEqual(inst.differential?.element?[8].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[8].sliceName, "plan")
		XCTAssertEqual(inst.differential?.element?[9].fixedString, "Discharge Treatment Plan")
		XCTAssertEqual(inst.differential?.element?[9].id, "Composition.section:plan.title")
		XCTAssertEqual(inst.differential?.element?[9].min, 1)
		XCTAssertEqual(inst.differential?.element?[9].path, "Composition.section.title")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.id, "example-section-library")
		XCTAssertEqual(inst.kind, StructureDefinitionKind(rawValue: "complex-type")!)
		XCTAssertEqual(inst.name, "DocumentSectionLibrary")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Document Section Library (For testing section templates)")
		XCTAssertEqual(inst.type?.absoluteString, "Composition")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/example-section-library")
		
		return inst
	}
	
	func testStructureDefinition2() {
		do {
			let instance = try runStructureDefinition2()
			try runStructureDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test StructureDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runStructureDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRStructureDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "structuredefinition-example-composition.json")
		
		XCTAssertEqual(inst.abstract, false)
		// Don't know how to create unit test for "baseDefinition", which is a FHIRCanonical
		XCTAssertEqual(inst.date?.description, "2018-11-05T17:47:00+11:00")
		XCTAssertEqual(inst.derivation, TypeDerivationRule(rawValue: "constraint")!)
		XCTAssertEqual(inst.differential?.element?[0].id, "Composition")
		XCTAssertEqual(inst.differential?.element?[0].path, "Composition")
		XCTAssertEqual(inst.differential?.element?[1].id, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[1].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.description_fhir, "Slice by .section.code")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.discriminator?[0].path, "code")
		XCTAssertEqual(inst.differential?.element?[1].slicing?.discriminator?[0].type, DiscriminatorType(rawValue: "pattern")!)
		XCTAssertEqual(inst.differential?.element?[1].slicing?.ordered, true)
		XCTAssertEqual(inst.differential?.element?[1].slicing?.rules, SlicingRules(rawValue: "closed")!)
		XCTAssertEqual(inst.differential?.element?[2].id, "Composition.section:procedure")
		XCTAssertEqual(inst.differential?.element?[2].min, 1)
		XCTAssertEqual(inst.differential?.element?[2].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[2].sliceName, "procedure")
		XCTAssertEqual(inst.differential?.element?[2].type?[0].code?.absoluteString, "BackboneElement")
		// Don't know how to create unit test for "differential?.element?[2].type?[0].profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.differential?.element?[3].id, "Composition.section:medications")
		XCTAssertEqual(inst.differential?.element?[3].min, 1)
		XCTAssertEqual(inst.differential?.element?[3].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[3].sliceName, "medications")
		XCTAssertEqual(inst.differential?.element?[3].type?[0].code?.absoluteString, "BackboneElement")
		// Don't know how to create unit test for "differential?.element?[3].type?[0].profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.differential?.element?[4].id, "Composition.section:plan")
		XCTAssertEqual(inst.differential?.element?[4].min, 0)
		XCTAssertEqual(inst.differential?.element?[4].path, "Composition.section")
		XCTAssertEqual(inst.differential?.element?[4].sliceName, "plan")
		XCTAssertEqual(inst.differential?.element?[4].type?[0].code?.absoluteString, "BackboneElement")
		// Don't know how to create unit test for "differential?.element?[4].type?[0].profile?[0]", which is a FHIRCanonical
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.id, "example-composition")
		XCTAssertEqual(inst.kind, StructureDefinitionKind(rawValue: "complex-type")!)
		XCTAssertEqual(inst.name, "DocumentStructure")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Document Structure (For testing section templates)")
		XCTAssertEqual(inst.type?.absoluteString, "Composition")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/example-composition")
		
		return inst
	}
}
