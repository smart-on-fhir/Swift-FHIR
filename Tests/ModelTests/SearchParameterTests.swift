//
//  SearchParameterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SearchParameterTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.SearchParameter {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.SearchParameter {
		return try SwiftFHIR.SearchParameter(json: json)
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
	func runSearchParameter1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base?[0], "Patient")
		XCTAssertEqual(inst.code, "part-agree")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir, "Search by url for a participation agreement, which is stored in a DocumentReference")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.expression, "DocumentReference.extension('http://example.org/fhir/StructureDefinition/participation-agreement')")
		XCTAssertEqual(inst.id, "example-extension")
		XCTAssertEqual(inst.name, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.target?[0], "DocumentReference")
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
	func runSearchParameter2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-reference.json")
		
		XCTAssertEqual(inst.base?[0], "Condition")
		XCTAssertEqual(inst.chain?[0], "name")
		XCTAssertEqual(inst.chain?[1], "identifier")
		XCTAssertEqual(inst.code, "subject")
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.description_fhir, "Search by condition subject")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.expression, "Condition.subject")
		XCTAssertEqual(inst.id, "example-reference")
		XCTAssertEqual(inst.modifier?[0], SearchModifierCode(rawValue: "missing")!)
		XCTAssertEqual(inst.name, "Example Search Parameter")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Need to search Condition by subject")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.target?[0], "Organization")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SearchParamType(rawValue: "reference")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
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
	func runSearchParameter3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base?[0], "Resource")
		XCTAssertEqual(inst.code, "_id")
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.description_fhir, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.expression, "id")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Example Search Parameter")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Need to search by identifier for various infrastructural cases - mainly retrieving packages, and matching as part of a chain")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, SearchParamType(rawValue: "token")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath, "f:*/f:id")
		XCTAssertEqual(inst.xpathUsage, XPathUsageType(rawValue: "normal")!)
		
		return inst
	}
}
