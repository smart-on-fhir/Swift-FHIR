//
//  PersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-08.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PersonTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Person {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Person {
		return try SwiftFHIR.Person(json: json)
	}
	
	func testPerson1() {
		do {
			let instance = try runPerson1()
			try runPerson1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Person successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPerson1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Person {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "person-example-f002-ariadne.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1963")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.link?[0].target?.display, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.link?[0].target?.reference, "RelatedPerson/f002")
		XCTAssertEqual(inst.name?[0].text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.photo?.contentType, "image/jpeg")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPerson2() {
		do {
			let instance = try runPerson2()
			try runPerson2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Person successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPerson2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Person {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "person-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.birthDate?.description, "1974-12-25")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Acme Healthcare")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2001-05-06")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.link?[0].target?.display, "Peter Chalmers")
		XCTAssertEqual(inst.link?[0].target?.reference, "RelatedPerson/peter")
		XCTAssertEqual(inst.link?[1].target?.display, "Peter Chalmers")
		XCTAssertEqual(inst.link?[1].target?.reference, "Patient/example")
		XCTAssertEqual(inst.name?[0].family, "Chalmers")
		XCTAssertEqual(inst.name?[0].given?[0], "Peter")
		XCTAssertEqual(inst.name?[0].given?[1], "James")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.name?[1].given?[0], "Jim")
		XCTAssertEqual(inst.name?[1].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "(03) 5555 6473")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[2].value, "Jim@example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
