//
//  NamingSystemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class NamingSystemTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> NamingSystem {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> NamingSystem {
		let instance = NamingSystem(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testNamingSystem1() throws {
		let instance = try testNamingSystem1_impl()
		try testNamingSystem1_impl(instance.asJSON())
	}
	
	func testNamingSystem1_impl(json: FHIRJSON? = nil) throws -> NamingSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "namingsystem-example.json")
		
		XCTAssertEqual(inst.date!.description, "2014-12-13")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.name!, "SNOMED CT")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "codesystem")
		XCTAssertEqual(inst.uniqueId![0].type!, "oid")
		XCTAssertEqual(inst.uniqueId![0].value!, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst.uniqueId![1].type!, "uri")
		XCTAssertEqual(inst.uniqueId![1].value!, "http://snomed.info/sct")
		
		return inst
	}
}
