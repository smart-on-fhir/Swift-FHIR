//
//  SearchParameterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSearchParameter = Models.SearchParameter
#else
import SwiftFHIR
typealias SwiftFHIRSearchParameter = SwiftFHIR.SearchParameter
#endif


class SearchParameterTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSearchParameter {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSearchParameter {
		return try SwiftFHIRSearchParameter(json: json)
	}
	
	func testSearchParameter1() {
		do {
			let instance = try runSearchParameter1()
			try runSearchParameter1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SearchParameter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSearchParameter1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base?[0], ResourceType(rawValue: "Patient")!)
		XCTAssertEqual(inst.code, "part-agree")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir, "Search by url for a participation agreement, which is stored in a DocumentReference")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.expression, "DocumentReference.extension('http://example.org/fhir/StructureDefinition/participation-agreement')")
		XCTAssertEqual(inst.id, "example-extension")
		XCTAssertEqual(inst.name, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.target?[0], ResourceType(rawValue: "DocumentReference")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SearchParamType(rawValue: "reference")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath, "f:DocumentReference/f:extension[@url='http://example.org/fhir/StructureDefinition/participation-agreement']")
		XCTAssertEqual(inst.xpathUsage, XPathUsageType(rawValue: "normal")!)
		
		return inst
	}
	
	func testSearchParameter2() {
		do {
			let instance = try runSearchParameter2()
			try runSearchParameter2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SearchParameter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSearchParameter2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-reference.json")
		
		XCTAssertEqual(inst.base?[0], ResourceType(rawValue: "Condition")!)
		XCTAssertEqual(inst.chain?[0], "name")
		XCTAssertEqual(inst.chain?[1], "identifier")
		XCTAssertEqual(inst.code, "subject")
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.description_fhir, "Search by condition subject")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.expression, "Condition.subject")
		XCTAssertEqual(inst.id, "example-reference")
		XCTAssertEqual(inst.modifier?[0], SearchModifierCode(rawValue: "missing")!)
		XCTAssertEqual(inst.name, "Example Search Parameter")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Need to search Condition by subject")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.target?[0], ResourceType(rawValue: "Organization")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SearchParamType(rawValue: "reference")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example-reference")
		XCTAssertEqual(inst.xpathUsage, XPathUsageType(rawValue: "normal")!)
		
		return inst
	}
	
	func testSearchParameter3() {
		do {
			let instance = try runSearchParameter3()
			try runSearchParameter3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SearchParameter successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSearchParameter3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base?[0], ResourceType(rawValue: "Resource")!)
		XCTAssertEqual(inst.code, "_id")
		XCTAssertEqual(inst.comparator?[0], SearchComparator(rawValue: "eq")!)
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.derivedFrom?.absoluteString, "http://hl7.org/fhir/SearchParameter/Resource-id")
		XCTAssertEqual(inst.description_fhir, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.expression, "id")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].display, "United States of America (the)")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.name, "ID-SEARCH-PARAMETER")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Need to search by identifier for various infrastructural cases - mainly retrieving packages, and matching as part of a chain")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "positive")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/variant-state")
		XCTAssertEqual(inst.version, "1")
		XCTAssertEqual(inst.xpath, "f:*/f:id")
		XCTAssertEqual(inst.xpathUsage, XPathUsageType(rawValue: "normal")!)
		
		return inst
	}
}
