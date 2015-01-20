//
//  ContractTests.swift
//  ContractTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ContractTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Contract? {
		let json = readJSONFile(filename)
		let instance = Contract(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContract1() {
		let inst = instantiateFrom("contract-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contract instance")
		
		XCTAssertEqual(inst!.issued!.description, "2014-08-17")
		XCTAssertEqual(inst!.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst!.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst!.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst!.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
	}
	
	func testContract2() {
		let inst = instantiateFrom("contract-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contract instance")
		
		XCTAssertEqual(inst!.issued!.description, "2014-08-17")
		XCTAssertEqual(inst!.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst!.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst!.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst!.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
	}
	
	func testContract3() {
		let inst = instantiateFrom("contract-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Contract instance")
		
		XCTAssertEqual(inst!.issued!.description, "2014-08-17")
		XCTAssertEqual(inst!.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst!.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst!.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst!.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
	}
}
