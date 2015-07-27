//
//  SearchParameterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SearchParameterTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> SearchParameter {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> SearchParameter {
		let instance = SearchParameter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSearchParameter1() throws {
		let instance = try testSearchParameter1_impl()
		try testSearchParameter1_impl(instance.asJSON())
	}
	
	func testSearchParameter1_impl(json: FHIRJSON? = nil) throws -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base!, "Patient")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir!, "Search by url for a participation agreement")
		XCTAssertEqual(inst.id!, "example-extension")
		XCTAssertEqual(inst.name!, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath!, "http://example.org/fhir/StructureDefinition/participation-agreement")
		
		return inst
	}
	
	func testSearchParameter2() throws {
		let instance = try testSearchParameter2_impl()
		try testSearchParameter2_impl(instance.asJSON())
	}
	
	func testSearchParameter2_impl(json: FHIRJSON? = nil) throws -> SearchParameter {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base!, "Resource")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "url")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir!, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "Example Search Parameter")
		XCTAssertEqual(inst.publisher!, "HL7 FHIR Project")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "token")
		XCTAssertEqual(inst.url!.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath!, "f:id")
		
		return inst
	}
}
