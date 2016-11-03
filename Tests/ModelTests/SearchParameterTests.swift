//
//  SearchParameterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test SearchParameter successfully, but threw")
		}
	}
	
	@discardableResult
	func runSearchParameter1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base, "Patient")
		XCTAssertEqual(inst.code, "part-agree")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir, "Search by url for a participation agreement, which is stored in a DocumentReference")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example-extension")
		XCTAssertEqual(inst.name, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.target?[0], "DocumentReference")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "reference")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example-extension")
		XCTAssertEqual(inst.xpath, "f:DocumentReference/f:extension[@url='http://example.org/fhir/StructureDefinition/participation-agreement']")
		XCTAssertEqual(inst.xpathUsage, "normal")
		
		return inst
	}
	
	func testSearchParameter2() {
		do {
			let instance = try runSearchParameter2()
			try runSearchParameter2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test SearchParameter successfully, but threw")
		}
	}
	
	@discardableResult
	func runSearchParameter2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.SearchParameter {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base, "Resource")
		XCTAssertEqual(inst.code, "_id")
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.description_fhir, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Example Search Parameter")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Need to search by identifier for various infrastructural cases - mainly retrieving packages, and matching as part of a chain")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "token")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath, "f:*/f:id")
		XCTAssertEqual(inst.xpathUsage, "normal")
		
		return inst
	}
}
