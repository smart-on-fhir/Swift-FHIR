//
//  RelatedPersonTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class RelatedPersonTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.RelatedPerson {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.RelatedPerson {
		let instance = SwiftFHIR.RelatedPerson(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testRelatedPerson1() {
		do {
			let instance = try runRelatedPerson1()
			try runRelatedPerson1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw")
		}
	}
	
	@discardableResult
	func runRelatedPerson1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-f001-sarah.json")
		
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.name?.family?[0], "Abels")
		XCTAssertEqual(inst.name?.given?[0], "Sarah")
		XCTAssertEqual(inst.name?.use, "usual")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "SIGOTHR")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "mobile")
		XCTAssertEqual(inst.telecom?[0].value, "0690383372")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "home")
		XCTAssertEqual(inst.telecom?[1].value, "s.abels@kpn.nl")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testRelatedPerson2() {
		do {
			let instance = try runRelatedPerson2()
			try runRelatedPerson2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw")
		}
	}
	
	@discardableResult
	func runRelatedPerson2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-f002-ariadne.json")
		
		XCTAssertEqual(inst.birthDate?.description, "1963")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.name?.text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name?.use, "usual")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.period?.start?.description, "1975")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "SIGOTHR")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "home")
		XCTAssertEqual(inst.telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testRelatedPerson3() {
		do {
			let instance = try runRelatedPerson3()
			try runRelatedPerson3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw")
		}
	}
	
	@discardableResult
	func runRelatedPerson3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example-peter.json")
		
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, "home")
		XCTAssertEqual(inst.gender, "male")
		XCTAssertEqual(inst.id, "peter")
		XCTAssertEqual(inst.name?.family?[0], "Chalmers")
		XCTAssertEqual(inst.name?.given?[0], "Peter")
		XCTAssertEqual(inst.name?.given?[1], "James")
		XCTAssertEqual(inst.name?.use, "official")
		XCTAssertEqual(inst.patient?.reference, "Patient/animal")
		XCTAssertEqual(inst.period?.start?.description, "2012-03-11")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f012")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "owner")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "(03) 5555 6473")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testRelatedPerson4() {
		do {
			let instance = try runRelatedPerson4()
			try runRelatedPerson4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RelatedPerson successfully, but threw")
		}
	}
	
	@discardableResult
	func runRelatedPerson4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "relatedperson-example.json")
		
		XCTAssertEqual(inst.address?[0].city, "Paris")
		XCTAssertEqual(inst.address?[0].country, "FRA")
		XCTAssertEqual(inst.address?[0].line?[0], "43, Place du Marché Sainte Catherine")
		XCTAssertEqual(inst.address?[0].postalCode, "75004")
		XCTAssertEqual(inst.gender, "female")
		XCTAssertEqual(inst.id, "benedicte")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.250.1.61")
		XCTAssertEqual(inst.identifier?[0].type?.text, "INSEE")
		XCTAssertEqual(inst.identifier?[0].use, "usual")
		XCTAssertEqual(inst.identifier?[0].value, "272117510400399")
		XCTAssertEqual(inst.name?.family?[0], "du")
		XCTAssertEqual(inst.name?.family?[1], "Marché")
		XCTAssertEqual(inst.name?.given?[0], "Bénédicte")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f016")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "partner")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.relationship?.coding?[1].code, "WIFE")
		XCTAssertEqual(inst.relationship?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "+33 (237) 998327")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
