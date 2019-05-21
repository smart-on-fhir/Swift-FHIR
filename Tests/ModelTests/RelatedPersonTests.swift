//
//  RelatedPersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRRelatedPerson = Models.RelatedPerson
#else
import SwiftFHIR
typealias SwiftFHIRRelatedPerson = SwiftFHIR.RelatedPerson
#endif


class RelatedPersonTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRRelatedPerson {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRRelatedPerson {
		return try SwiftFHIRRelatedPerson(json: json)
	}
	
	func testRelatedPerson1() {
		do {
			let instance = try runRelatedPerson1()
			try runRelatedPerson1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRelatedPerson1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRelatedPerson {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-peter.json")
		
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "peter")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Chalmers")
		XCTAssertEqual(inst.name?[0].given?[0], "Peter")
		XCTAssertEqual(inst.name?[0].given?[1], "James")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/animal")
		XCTAssertEqual(inst.period?.start?.description, "2012-03-11")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f012")
		XCTAssertEqual(inst.relationship?[0].coding?[0].code, "C")
		XCTAssertEqual(inst.relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0131")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "(03) 5555 6473")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRelatedPerson2() {
		do {
			let instance = try runRelatedPerson2()
			try runRelatedPerson2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRelatedPerson2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRelatedPerson {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-f001-sarah.json")
		
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Abels")
		XCTAssertEqual(inst.name?[0].given?[0], "Sarah")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.relationship?[0].coding?[0].code, "SIGOTHR")
		XCTAssertEqual(inst.relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "0690383372")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].value, "s.abels@kpn.nl")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRelatedPerson3() {
		do {
			let instance = try runRelatedPerson3()
			try runRelatedPerson3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRelatedPerson3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRelatedPerson {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-newborn-mom.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].line?[0], "2222 Home Street")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.birthDate?.description, "1973-05-31")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "newborn-mom")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://hl7.org/fhir/sid/us-ssn")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "SS")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].value, "444222222")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Everywoman")
		XCTAssertEqual(inst.name?[0].given?[0], "Eve")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/newborn")
		XCTAssertEqual(inst.relationship?[0].coding?[0].code, "NMTH")
		XCTAssertEqual(inst.relationship?[0].coding?[0].display, "natural mother")
		XCTAssertEqual(inst.relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.relationship?[0].text, "Natural Mother")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "555-555-2003")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRelatedPerson4() {
		do {
			let instance = try runRelatedPerson4()
			try runRelatedPerson4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRelatedPerson4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRelatedPerson {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Paris")
		XCTAssertEqual(inst.address?[0].country, "FRA")
		XCTAssertEqual(inst.address?[0].line?[0], "43, Place du Marché Sainte Catherine")
		XCTAssertEqual(inst.address?[0].postalCode, "75004")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "benedicte")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.250.1.61")
		XCTAssertEqual(inst.identifier?[0].type?.text, "INSEE")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "272117510400399")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "du Marché")
		XCTAssertEqual(inst.name?[0].given?[0], "Bénédicte")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f016")
		XCTAssertEqual(inst.relationship?[0].coding?[0].code, "N")
		XCTAssertEqual(inst.relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0131")
		XCTAssertEqual(inst.relationship?[0].coding?[1].code, "WIFE")
		XCTAssertEqual(inst.relationship?[0].coding?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].value, "+33 (237) 998327")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRelatedPerson5() {
		do {
			let instance = try runRelatedPerson5()
			try runRelatedPerson5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRelatedPerson5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRelatedPerson {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-f002-ariadne.json")
		
		XCTAssertEqual(inst.birthDate?.description, "1963")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.period?.start?.description, "1975")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.relationship?[0].coding?[0].code, "SIGOTHR")
		XCTAssertEqual(inst.relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
