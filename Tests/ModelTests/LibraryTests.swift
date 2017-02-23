//
//  LibraryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-cms146-example.json")
		
		XCTAssertEqual(inst.content?[0].contentType, "text/cql")
		XCTAssertEqual(inst.content?[0].url?.absoluteString, "http://cqlrepository.org/CMS146.cql")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].valueSetString, "Other Female Reproductive Conditions")
		XCTAssertEqual(inst.dataRequirement?[0].type, "Condition")
		XCTAssertEqual(inst.dataRequirement?[1].type, "Patient")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[0].path, "category")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[0].valueCode?[0], "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[1].path, "clinicalStatus")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[1].valueCode?[0], "confirmed")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[2].path, "code")
		XCTAssertEqual(inst.dataRequirement?[2].codeFilter?[2].valueSetString, "2.16.840.1.113883.3.464.1003.102.12.1011")
		XCTAssertEqual(inst.dataRequirement?[2].type, "Condition")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[0].path, "category")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[0].valueCode?[0], "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[1].path, "clinicalStatus")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[1].valueCode?[0], "confirmed")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[2].path, "code")
		XCTAssertEqual(inst.dataRequirement?[3].codeFilter?[2].valueSetString, "2.16.840.1.113883.3.464.1003.102.12.1012")
		XCTAssertEqual(inst.dataRequirement?[3].type, "Condition")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[0].valueCode?[0], "finished")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[1].path, "class")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[1].valueCode?[0], "ambulatory")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[2].path, "type")
		XCTAssertEqual(inst.dataRequirement?[4].codeFilter?[2].valueSetString, "2.16.840.1.113883.3.464.1003.101.12.1061")
		XCTAssertEqual(inst.dataRequirement?[4].type, "Encounter")
		XCTAssertEqual(inst.dataRequirement?[5].codeFilter?[0].path, "diagnosis")
		XCTAssertEqual(inst.dataRequirement?[5].codeFilter?[0].valueSetString, "2.16.840.1.113883.3.464.1003.198.12.1012")
		XCTAssertEqual(inst.dataRequirement?[5].type, "DiagnosticReport")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[6].codeFilter?[0].valueSetString, "2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[6].type, "Medication")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[0].valueCode?[0], "active")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[1].path, "medication.code")
		XCTAssertEqual(inst.dataRequirement?[7].codeFilter?[1].valueSetString, "2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[7].type, "MedicationRequest")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[0].valueCode?[0], "completed")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[1].path, "medication.code")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[1].valueSetString, "2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[8].type, "MedicationStatement")
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Logic for CMS 146: Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.id, "library-cms146-example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "CMS146")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.reference, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "depends-on")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "2.0.0")
		
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "library-example.json")
		
		XCTAssertEqual(inst.content?[0].contentType, "text/cql")
		XCTAssertEqual(inst.content?[0].url?.absoluteString, "http://cqlrepository.org/ChlamydiaScreening_Common.cql")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].valueSetString, "Other Female Reproductive Conditions")
		XCTAssertEqual(inst.dataRequirement?[0].type, "Condition")
		XCTAssertEqual(inst.date?.description, "2015-07-22")
		XCTAssertEqual(inst.description_fhir, "Common Logic for adherence to Chlamydia Screening guidelines")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "ChalmydiaScreening_Common")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.reference, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "depends-on")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Chlamydia Screening Common Library")
		XCTAssertEqual(inst.topic?[0].text, "Chlamydia Screening")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "2.0.0")
		
		return inst
	}
}
