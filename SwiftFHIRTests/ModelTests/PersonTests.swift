//
//  PersonTests.swift
//  PersonTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class PersonTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Person? {
		let json = readJSONFile(filename)
		let instance = Person(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPerson1() {
		let inst = instantiateFrom("person-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Person instance")
	
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "PleasantVille")
		XCTAssertEqual(inst!.address![0].line![0], "534 Erewhon St")
		XCTAssertEqual(inst!.address![0].postalCode!, "3999")
		XCTAssertEqual(inst!.address![0].state!, "Vic")
		XCTAssertEqual(inst!.address![0].use!, "home")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1974-12-25")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "Acme Healthcare")
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].period!.start!, NSDate.dateFromISOString("2001-05-06")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.2.36.146.595.217.0.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "usual")
		XCTAssertEqual(inst!.identifier![0].value!, "12345")
		XCTAssertEqual(inst!.name![0].family![0], "Chalmers")
		XCTAssertEqual(inst!.name![0].given![0], "Peter")
		XCTAssertEqual(inst!.name![0].given![1], "James")
		XCTAssertEqual(inst!.name![0].use!, "official")
		XCTAssertEqual(inst!.name![1].given![0], "Jim")
		XCTAssertEqual(inst!.name![1].use!, "usual")
		XCTAssertEqual(inst!.telecom![0].use!, "home")
		XCTAssertEqual(inst!.telecom![1].system!, "phone")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "(03) 5555 6473")
	}
	
	func testPerson2() {
		let inst = instantiateFrom("person-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Person instance")
	
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "PleasantVille")
		XCTAssertEqual(inst!.address![0].line![0], "534 Erewhon St")
		XCTAssertEqual(inst!.address![0].postalCode!, "3999")
		XCTAssertEqual(inst!.address![0].state!, "Vic")
		XCTAssertEqual(inst!.address![0].use!, "home")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1974-12-25")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "Acme Healthcare")
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].period!.start!, NSDate.dateFromISOString("2001-05-06")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.2.36.146.595.217.0.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "usual")
		XCTAssertEqual(inst!.identifier![0].value!, "12345")
		XCTAssertEqual(inst!.name![0].family![0], "Chalmers")
		XCTAssertEqual(inst!.name![0].given![0], "Peter")
		XCTAssertEqual(inst!.name![0].given![1], "James")
		XCTAssertEqual(inst!.name![0].use!, "official")
		XCTAssertEqual(inst!.name![1].given![0], "Jim")
		XCTAssertEqual(inst!.name![1].use!, "usual")
		XCTAssertEqual(inst!.telecom![0].use!, "home")
		XCTAssertEqual(inst!.telecom![1].system!, "phone")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "(03) 5555 6473")
	}
	
	func testPerson3() {
		let inst = instantiateFrom("person-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Person instance")
	
		XCTAssertTrue(inst!.active!)
		XCTAssertEqual(inst!.address![0].city!, "PleasantVille")
		XCTAssertEqual(inst!.address![0].line![0], "534 Erewhon St")
		XCTAssertEqual(inst!.address![0].postalCode!, "3999")
		XCTAssertEqual(inst!.address![0].state!, "Vic")
		XCTAssertEqual(inst!.address![0].use!, "home")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1974-12-25")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "Acme Healthcare")
		XCTAssertEqual(inst!.identifier![0].label!, "MRN")
		XCTAssertEqual(inst!.identifier![0].period!.start!, NSDate.dateFromISOString("2001-05-06")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.2.36.146.595.217.0.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "usual")
		XCTAssertEqual(inst!.identifier![0].value!, "12345")
		XCTAssertEqual(inst!.name![0].family![0], "Chalmers")
		XCTAssertEqual(inst!.name![0].given![0], "Peter")
		XCTAssertEqual(inst!.name![0].given![1], "James")
		XCTAssertEqual(inst!.name![0].use!, "official")
		XCTAssertEqual(inst!.name![1].given![0], "Jim")
		XCTAssertEqual(inst!.name![1].use!, "usual")
		XCTAssertEqual(inst!.telecom![0].use!, "home")
		XCTAssertEqual(inst!.telecom![1].system!, "phone")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "(03) 5555 6473")
	}
}
