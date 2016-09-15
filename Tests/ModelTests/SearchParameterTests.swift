//
//  SearchParameterTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SearchParameterTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.SearchParameter {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.SearchParameter {
		let instance = SwiftFHIR.SearchParameter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example-extension.json")
		
		XCTAssertEqual(inst.base, "Patient")
		XCTAssertEqual(inst.code, "part-agree")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.description_fhir, "Search by url for a participation agreement, which is stored in a DocumentReference")
		XCTAssertEqual(inst.id, "example-extension")
		XCTAssertEqual(inst.name, "Example Search Parameter on an extension")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "searchparameter-example.json")
		
		XCTAssertEqual(inst.base, "Resource")
		XCTAssertEqual(inst.code, "_id")
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2013-10-23")
		XCTAssertEqual(inst.description_fhir, "Search by resource identifier - e.g. same as the read interaction, but can return included resources")
		XCTAssertFalse(inst.experimental ?? true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Example Search Parameter")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.requirements, "Need to search by identifier for various infrastructural cases - mainly retrieving packages, and matching as part of a chain")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type, "token")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/SearchParameter/example")
		XCTAssertEqual(inst.xpath, "f:*/f:id")
		XCTAssertEqual(inst.xpathUsage, "normal")
		
		return inst
	}
}
