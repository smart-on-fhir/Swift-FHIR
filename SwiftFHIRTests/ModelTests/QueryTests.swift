//
//  QueryTests.swift
//  QueryTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class QueryTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Query? {
		let json = readJSONFile(filename)
		let instance = Query(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuery1() {
		let inst = instantiateFrom("query-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Query instance")
	
		XCTAssertEqual(inst!.identifier!, NSURL(string: "urn:uuid:42b253f5-fa17-40d0-8da5-44aeb4230376")!)
		XCTAssertEqual(inst!.parameter![0].url!, NSURL(string: "http://hl7.org/fhir/query#_query")!)	
		XCTAssertEqual(inst!.parameter![0].valueString!, "example")	
		XCTAssertEqual(inst!.text!.div!, "<div>[Put rendering here]</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
