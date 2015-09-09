//
//  PersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PersonTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Person {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Person {
		let instance = Person(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPerson1() throws {
		let instance = try runPerson1()
		try runPerson1(instance.asJSON())
	}
	
	func runPerson1(json: FHIRJSON? = nil) throws -> Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "person-example.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].city!, "PleasantVille")
		XCTAssertEqual(inst.address![0].line![0], "534 Erewhon St")
		XCTAssertEqual(inst.address![0].postalCode!, "3999")
		XCTAssertEqual(inst.address![0].state!, "Vic")
		XCTAssertEqual(inst.address![0].use!, "home")
		XCTAssertEqual(inst.birthDate!.description, "1974-12-25")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "Acme Healthcare")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2001-05-06")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].code!, "MRN")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
		XCTAssertEqual(inst.link![0].target!.display!, "Peter Chalmers")
		XCTAssertEqual(inst.link![0].target!.reference!, "RelatedPerson/peter")
		XCTAssertEqual(inst.link![1].target!.display!, "Peter Chalmers")
		XCTAssertEqual(inst.link![1].target!.reference!, "Patient/example")
		XCTAssertEqual(inst.name![0].family![0], "Chalmers")
		XCTAssertEqual(inst.name![0].given![0], "Peter")
		XCTAssertEqual(inst.name![0].given![1], "James")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.name![1].given![0], "Jim")
		XCTAssertEqual(inst.name![1].use!, "usual")
		XCTAssertEqual(inst.telecom![0].use!, "home")
		XCTAssertEqual(inst.telecom![1].system!, "phone")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "(03) 5555 6473")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
