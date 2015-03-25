//
//  NamingSystemTests.swift
//  NamingSystemTests
//
//  Generated from FHIR 0.4.0.4879 on 2015-03-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class NamingSystemTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> NamingSystem {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> NamingSystem {
		let instance = NamingSystem(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testNamingSystem1() {
		let instance = testNamingSystem1_impl()
		testNamingSystem1_impl(json: instance.asJSON())
	}
	
	func testNamingSystem1_impl(json: FHIRJSON? = nil) -> NamingSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "namingsystem-example.json")
		
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
