//
//  LibraryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class LibraryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Library {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Library {
		let instance = SwiftFHIR.Library(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testLibrary1() {
		do {
			let instance = try runLibrary1()
			try runLibrary1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw")
		}
	}
	
	@discardableResult
	func runLibrary1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Library {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "library-cms146-example.json")
		
		XCTAssertEqual(inst.content?.contentType, "text/cql")
		XCTAssertEqual(inst.content?.url?.absoluteString, "http://cqlrepository.org/CMS146.cql")
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
		XCTAssertEqual(inst.dataRequirement?[7].type, "MedicationOrder")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[0].path, "status")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[0].valueCode?[0], "completed")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[1].path, "medication.code")
		XCTAssertEqual(inst.dataRequirement?[8].codeFilter?[1].valueSetString, "2.16.840.1.113883.3.464.1003.196.12.1001")
		XCTAssertEqual(inst.dataRequirement?[8].type, "MedicationStatement")
		XCTAssertEqual(inst.description_fhir, "Logic for CMS 146: Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.id, "library-cms146-example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "CMS146")
		XCTAssertEqual(inst.publicationDate?.description, "2015-07-22")
		XCTAssertEqual(inst.relatedResource?[0].resource?.reference, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedResource?[0].type, "depends-on")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">CMS 146 Logic</div>")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Library successfully, but threw")
		}
	}
	
	@discardableResult
	func runLibrary2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Library {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "library-example.json")
		
		XCTAssertEqual(inst.content?.contentType, "text/cql")
		XCTAssertEqual(inst.content?.url?.absoluteString, "http://cqlrepository.org/ChlamydiaScreening_Common.cql")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].path, "code")
		XCTAssertEqual(inst.dataRequirement?[0].codeFilter?[0].valueSetString, "Other Female Reproductive Conditions")
		XCTAssertEqual(inst.dataRequirement?[0].type, "Condition")
		XCTAssertEqual(inst.description_fhir, "Common Logic for adherence to Chlamydia Screening guidelines")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "ChalmydiaScreening_Common")
		XCTAssertEqual(inst.publicationDate?.description, "2015-07-22")
		XCTAssertEqual(inst.relatedResource?[0].resource?.reference, "Library/library-quick-model-definition")
		XCTAssertEqual(inst.relatedResource?[0].type, "depends-on")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Chlamydia Screening Common Library</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Chlamydia Screening Common Library")
		XCTAssertEqual(inst.topic?[0].text, "Chlamydia Screening")
		XCTAssertEqual(inst.type?.coding?[0].code, "logic-library")
		XCTAssertEqual(inst.version, "2.0.0")
		
		return inst
	}
}
