//
//  ContractTests.swift
//  ContractTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ContractTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Contract {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Contract {
		let instance = Contract(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testContract1() {
		let instance = testContract1_impl()
		testContract1_impl(json: instance.asJSON())
	}
	
	func testContract1_impl(json: JSONDictionary? = nil) -> Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contract-example.canonical.json")
		
		XCTAssertEqual(inst.issued!.description, "2014-08-17")
		XCTAssertEqual(inst.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
		
		return inst
	}
	
	func testContract2() {
		let instance = testContract2_impl()
		testContract2_impl(json: instance.asJSON())
	}
	
	func testContract2_impl(json: JSONDictionary? = nil) -> Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contract-example.canonical.json")
		
		XCTAssertEqual(inst.issued!.description, "2014-08-17")
		XCTAssertEqual(inst.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
		
		return inst
	}
	
	func testContract3() {
		let instance = testContract3_impl()
		testContract3_impl(json: instance.asJSON())
	}
	
	func testContract3_impl(json: JSONDictionary? = nil) -> Contract {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.issued!.description, "2014-08-17")
		XCTAssertEqual(inst.subject![0].reference!, "http://www.somewhere.org/patient/12345")
		XCTAssertEqual(inst.subtype![0].coding![0].code!, "disclosure-US")
		XCTAssertEqual(inst.subtype![0].coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contractsubtypecodes")
		XCTAssertEqual(inst.type!.coding![0].code!, "disclosure")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://www.hl7.org/fhir/contracttypecodes")
		
		return inst
	}
}
