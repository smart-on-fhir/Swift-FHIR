//
//  SearchParameterTests.swift
//  SearchParameterTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SearchParameterTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> SearchParameter {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> SearchParameter {
		let instance = SearchParameter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSearchParameter1() {
		let instance = testSearchParameter1_impl()
		testSearchParameter1_impl(json: instance.asJSON())
	}
	
	func testSearchParameter1_impl(json: JSONDictionary? = nil) -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "searchparameter-example-extension.canonical.json")
		
		XCTAssertEqual(inst.base!, "Patient")
		XCTAssertEqual(inst.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
		
		return inst
	}
	
	func testSearchParameter2() {
		let instance = testSearchParameter2_impl()
		testSearchParameter2_impl(json: instance.asJSON())
	}
	
	func testSearchParameter2_impl(json: JSONDictionary? = nil) -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "searchparameter-example-extension.canonical.json")
		
		XCTAssertEqual(inst.base!, "Patient")
		XCTAssertEqual(inst.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
		
		return inst
	}
	
	func testSearchParameter3() {
		let instance = testSearchParameter3_impl()
		testSearchParameter3_impl(json: instance.asJSON())
	}
	
	func testSearchParameter3_impl(json: JSONDictionary? = nil) -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base!, "Patient")
		XCTAssertEqual(inst.description!, "Search by url for a participation agreement")
		XCTAssertEqual(inst.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath!, "http://example.org/fhir/ExtensionDefinition/participation-agreement")
		
		return inst
	}
	
	func testSearchParameter4() {
		let instance = testSearchParameter4_impl()
		testSearchParameter4_impl(json: instance.asJSON())
	}
	
	func testSearchParameter4_impl(json: JSONDictionary? = nil) -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "searchparameter-example.canonical.json")
		
		XCTAssertEqual(inst.base!, "Resource")
		XCTAssertEqual(inst.description!, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst.name!, "Example Search Parameter")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath!, "f:id")
		
		return inst
	}
	
	func testSearchParameter5() {
		let instance = testSearchParameter5_impl()
		testSearchParameter5_impl(json: instance.asJSON())
	}
	
	func testSearchParameter5_impl(json: JSONDictionary? = nil) -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base!, "Resource")
		XCTAssertEqual(inst.description!, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst.name!, "Example Search Parameter")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.telecom![0].system!, "url")
		XCTAssertEqual(inst.telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString!, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath!, "f:id")
		
		return inst
	}
}
