//
//  PersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PersonTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Person {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Person {
		let instance = SwiftFHIR.Person(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPerson1() {
		do {
			let instance = try runPerson1()
			try runPerson1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Person successfully, but threw")
		}
	}
	
	@discardableResult
	func runPerson1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "person-example-f002-ariadne.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.birthDate?.description, "1963")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.link?[0].target?.display, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.link?[0].target?.reference, "RelatedPerson/f002")
		XCTAssertEqual(inst.name?[0].text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name?[0].use, "usual")
		XCTAssertEqual(inst.photo?.contentType, "image/jpeg")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "home")
		XCTAssertEqual(inst.telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testPerson2() {
		do {
			let instance = try runPerson2()
			try runPerson2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Person successfully, but threw")
		}
	}
	
	@discardableResult
	func runPerson2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Person {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "person-example.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, "home")
		XCTAssertEqual(inst.birthDate?.description, "1974-12-25")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Acme Healthcare")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2001-05-06")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.36.146.595.217.0.1")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.link?[0].target?.display, "Peter Chalmers")
		XCTAssertEqual(inst.link?[0].target?.reference, "RelatedPerson/peter")
		XCTAssertEqual(inst.link?[1].target?.display, "Peter Chalmers")
		XCTAssertEqual(inst.link?[1].target?.reference, "Patient/example")
		XCTAssertEqual(inst.name?[0].family?[0], "Chalmers")
		XCTAssertEqual(inst.name?[0].given?[0], "Peter")
		XCTAssertEqual(inst.name?[0].given?[1], "James")
		XCTAssertEqual(inst.name?[0].use, "official")
		XCTAssertEqual(inst.name?[1].given?[0], "Jim")
		XCTAssertEqual(inst.name?[1].use, "usual")
		XCTAssertEqual(inst.telecom?[0].use, "home")
		XCTAssertEqual(inst.telecom?[1].system, "phone")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "(03) 5555 6473")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
