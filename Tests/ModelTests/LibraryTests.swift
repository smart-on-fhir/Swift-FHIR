//
//  LibraryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRLibrary = Models.Library
#else
import SwiftFHIR
typealias SwiftFHIRLibrary = SwiftFHIR.Library
#endif


class LibraryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRLibrary {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRLibrary {
		return try SwiftFHIRLibrary(json: json)
	}
	
	func testLibrary1() {
		do {
			let instance = try runLibrary1()
			try runLibrary1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLibrary1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLibrary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-predecessor-example.json")
		
		XCTAssertEqual(inst.content?[0].contentType, "text/cql")
		XCTAssertEqual(inst.content?[0].title, "FHIR Helpers")
		XCTAssertEqual(inst.content?[0].url?.absoluteString, "library-fhir-helpers-content.cql")
		XCTAssertEqual(inst.date?.description, "2016-11-14")
		XCTAssertEqual(inst.description_fhir, "FHIR Helpers")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "library-fhir-helpers-predecessor")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "FHIRHelpers")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.absoluteString, "Library/fhir-model-definition")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "depends-on")!)
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.absoluteString, "Library/library-fhir-helpers")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "successor")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "FHIR Helpers")
		XCTAssertEqual(inst.topic?[0].text, "FHIR Helpers")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "1.6")
		
		return inst
	}
	
	func testLibrary2() {
		do {
			let instance = try runLibrary2()
			try runLibrary2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLibrary2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLibrary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-cms146-example.json")
		
		XCTAssertEqual(inst.content?[0].contentType, "text/cql")
		XCTAssertEqual(inst.content?[0].url?.absoluteString, "library-cms146-example-content.cql")
		XCTAssertEqual(inst.dataRequirement?[0].type, "Patient")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[0].code?[0].code, "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[0].path, "category")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[1].code?[0].code, "confirmed")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[1].path, "clinicalStatus")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[2].path, "code")
		XCTAssertEqual(inst.dataRequirement?[1].codeFilter?[2].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.102.12.1011")
		XCTAssertEqual(inst.dataRequirement?[1].type, "Condition")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[0].code?[0].code, "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[0].path, "category")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[1].code?[0].code, "confirmed")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[1].path, "clinicalStatus")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[2].path, "code")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[2].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.102.12.1012")
		XCTAssertEqual(inst.dataRequirement?[2].type, "Condition")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[0].code?[0].code, "finished")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[1].code?[0].code, "ambulatory")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[1].path, "class")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[2].path, "type")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[2].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.101.12.1061")
		XCTAssertEqual(inst.dataRequirement?[3].type, "Encounter")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[0].path, "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[0].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.198.12.1012")
		XCTAssertEqual(inst.dataRequirement?[4].type, "DiagnosticReport")
		XCTAssertEqual(inst.dataRequirement?[5].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[5].codeFilter?[0].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[5].type, "Medication")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[0].code?[0].code, "active")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[1].path, "medication.code")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[1].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[6].type, "MedicationRequest")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[0].code?[0].code, "completed")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[1].path, "medication.code")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[1].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[7].type, "MedicationStatement")
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Logic for CMS 146: Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.id, "library-cms146-example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "CMS146")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.absoluteString, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "depends-on")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "2.0.0")
		
		return inst
	}
	
	func testLibrary3() {
		do {
			let instance = try runLibrary3()
			try runLibrary3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLibrary3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLibrary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-example.json")
		
		XCTAssertEqual(inst.content?[0].contentType, "text/cql")
		XCTAssertEqual(inst.content?[0].url?.absoluteString, "library-example-content.cql")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].valueSet?.absoluteString, "urn:oid:2.16.840.1.113883.3.464.1003.111.12.1006")
		XCTAssertEqual(inst.dataRequirement?[0].type, "Condition")
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Common Logic for adherence to Chlamydia Screening guidelines")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "ChalmydiaScreening_Common")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.absoluteString, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "depends-on")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Chlamydia Screening Common Library")
		XCTAssertEqual(inst.topic?[0].text, "Chlamydia Screening")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "2.0.0")
		
		return inst
	}
	
	func testLibrary4() {
		do {
			let instance = try runLibrary4()
			try runLibrary4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLibrary4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLibrary {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-composition-example.json")
		
		XCTAssertEqual(inst.date?.description, "2017-03-10")
		XCTAssertEqual(inst.description_fhir, "Artifacts required for implementation of Zika Virus Management")
		XCTAssertEqual(inst.id, "composition-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "Zika Artifacts")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.absoluteString, "ActivityDefinition/administer-zika-virus-exposure-assessment")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.absoluteString, "ActivityDefinition/order-serum-zika-dengue-virus-igm")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[2].resource?.absoluteString, "ActivityDefinition/provide-mosquito-prevention-advice")
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[3].resource?.absoluteString, "Library/zika-virus-intervention-logic")
		XCTAssertEqual(inst.relatedArtifact?[3].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[4].resource?.absoluteString, "PlanDefinition/zika-virus-intervention")
		XCTAssertEqual(inst.relatedArtifact?[4].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[5].resource?.absoluteString, "Questionnaire/zika-virus-exposure-assessment")
		XCTAssertEqual(inst.relatedArtifact?[5].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[6].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[6].url?.absoluteString, "https://www.cdc.gov/mmwr/volumes/65/wr/mm6539e1.htm?s_cid=mm6539e1_w")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Zika Artifacts")
		XCTAssertEqual(inst.topic?[0].text, "Zika Virus Management")
		XCTAssertEqual(inst.type?.coding?[0].code, "asset-collection")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
}
