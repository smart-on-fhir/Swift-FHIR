//
//  PersonTests.swift
//  PersonTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PersonTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Person {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Person {
		let instance = Person(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPerson1() {
		let instance = testPerson1_impl()
		testPerson1_impl(json: instance.asJSON())
	}
	
	func testPerson1_impl(json: JSONDictionary? = nil) -> Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "person-example.canonical.json")
		
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
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2001-05-06")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
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
		
		return inst
	}
	
	func testPerson2() {
		let instance = testPerson2_impl()
		testPerson2_impl(json: instance.asJSON())
	}
	
	func testPerson2_impl(json: JSONDictionary? = nil) -> Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "person-example.canonical.json")
		
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
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2001-05-06")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
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
		
		return inst
	}
	
	func testPerson3() {
		let instance = testPerson3_impl()
		testPerson3_impl(json: instance.asJSON())
	}
	
	func testPerson3_impl(json: JSONDictionary? = nil) -> Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "person-example.json")
		
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
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2001-05-06")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
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
		
		return inst
	}
}
