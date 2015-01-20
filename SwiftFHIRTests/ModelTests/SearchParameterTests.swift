//
//  SearchParameterTests.swift
//  SearchParameterTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SearchParameterTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> SearchParameter? {
		let json = readJSONFile(filename)
		let instance = SearchParameter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSearchParameter1() {
		let inst = instantiateFrom("searchparameter-example-extension.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SearchParameter instance")
		
		XCTAssertEqual(inst!.base!, "Patient")
		XCTAssertEqual(inst!.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst!.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst!.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst!.type!, "token")
		XCTAssertEqual(inst!.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst!.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
	}
	
	func testSearchParameter2() {
		let inst = instantiateFrom("searchparameter-example-extension.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SearchParameter instance")
		
		XCTAssertEqual(inst!.base!, "Patient")
		XCTAssertEqual(inst!.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst!.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst!.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst!.type!, "token")
		XCTAssertEqual(inst!.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst!.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
	}
	
	func testSearchParameter3() {
		let inst = instantiateFrom("searchparameter-example-extension.json")
		XCTAssertNotNil(inst, "Must have instantiated a SearchParameter instance")
		
		XCTAssertEqual(inst!.base!, "Patient")
		XCTAssertEqual(inst!.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst!.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst!.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst!.type!, "token")
		XCTAssertEqual(inst!.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst!.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
	}
	
	func testSearchParameter4() {
		let inst = instantiateFrom("searchparameter-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SearchParameter instance")
		
		XCTAssertEqual(inst!.base!, "Resource")
		XCTAssertEqual(inst!.description!, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst!.name!, "Example Search Parameter")
		XCTAssertEqual(inst!.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst!.type!, "token")
		XCTAssertEqual(inst!.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst!.xpath!, "f:id")
	}
	
	func testSearchParameter5() {
		let inst = instantiateFrom("searchparameter-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a SearchParameter instance")
		
		XCTAssertEqual(inst!.base!, "Resource")
		XCTAssertEqual(inst!.description!, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst!.name!, "Example Search Parameter")
		XCTAssertEqual(inst!.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst!.telecom![0].system!, "url")
		XCTAssertEqual(inst!.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst!.type!, "token")
		XCTAssertEqual(inst!.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst!.xpath!, "f:id")
	}
}
