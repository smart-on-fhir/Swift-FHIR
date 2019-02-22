//
//  GroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRGroup = Models.Group
#else
import SwiftFHIR
typealias SwiftFHIRGroup = SwiftFHIR.Group
#endif


class GroupTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRGroup {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRGroup {
		return try SwiftFHIRGroup(json: json)
	}
	
	func testGroup1() {
		do {
			let instance = try runGroup1()
			try runGroup1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGroup1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example.json")
		
		XCTAssertEqual(inst.actual, true)
		XCTAssertEqual(inst.characteristic?[0].code?.text, "gender")
		XCTAssertEqual(inst.characteristic?[0].exclude, false)
		XCTAssertEqual(inst.characteristic?[0].valueCodeableConcept?.text, "mixed")
		XCTAssertEqual(inst.characteristic?[1].code?.text, "owner")
		XCTAssertEqual(inst.characteristic?[1].exclude, false)
		XCTAssertEqual(inst.characteristic?[1].valueCodeableConcept?.text, "John Smith")
		XCTAssertEqual(inst.code?.text, "Horse")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://someveterinarianclinic.org/fhir/NamingSystem/herds")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "John's herd")
		XCTAssertEqual(inst.quantity, 25)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "animal")!)
		
		return inst
	}
	
	func testGroup2() {
		do {
			let instance = try runGroup2()
			try runGroup2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGroup2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example-member.json")
		
		XCTAssertEqual(inst.actual, true)
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.member?[0].entity?.reference, "Patient/pat1")
		XCTAssertEqual(inst.member?[0].period?.start?.description, "2014-10-08")
		XCTAssertEqual(inst.member?[1].entity?.reference, "Patient/pat2")
		XCTAssertEqual(inst.member?[1].inactive, true)
		XCTAssertEqual(inst.member?[1].period?.start?.description, "2015-04-02")
		XCTAssertEqual(inst.member?[2].entity?.reference, "Patient/pat3")
		XCTAssertEqual(inst.member?[2].period?.start?.description, "2015-08-06")
		XCTAssertEqual(inst.member?[3].entity?.reference, "Patient/pat4")
		XCTAssertEqual(inst.member?[3].period?.start?.description, "2015-08-06")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "person")!)
		
		return inst
	}
	
	func testGroup3() {
		do {
			let instance = try runGroup3()
			try runGroup3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGroup3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example-patientlist.json")
		
		XCTAssertEqual(inst.actual, true)
		XCTAssertEqual(inst.characteristic?[0].code?.coding?[0].code, "attributed-to")
		XCTAssertEqual(inst.characteristic?[0].code?.coding?[0].system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.characteristic?[0].code?.text, "Patients primarily attributed to")
		XCTAssertEqual(inst.characteristic?[0].exclude, false)
		XCTAssertEqual(inst.characteristic?[0].valueReference?.reference, "Practitioner/123")
		XCTAssertEqual(inst.id, "example-patientlist")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "person")!)
		
		return inst
	}
	
	func testGroup4() {
		do {
			let instance = try runGroup4()
			try runGroup4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Group successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGroup4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGroup {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "group-example-herd1.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.actual, true)
		XCTAssertEqual(inst.characteristic?[0].code?.text, "gender")
		XCTAssertEqual(inst.characteristic?[0].exclude, false)
		XCTAssertEqual(inst.characteristic?[0].valueCodeableConcept?.text, "female")
		XCTAssertEqual(inst.code?.coding?[0].code, "388393002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Genus Sus (organism)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[1].code, "POR")
		XCTAssertEqual(inst.code?.coding?[1].display, "porcine")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "https://www.aphis.usda.gov")
		XCTAssertEqual(inst.code?.text, "Porcine")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://example.org/fhir/StructureDefinition/owner")
		XCTAssertEqual(inst.extension_fhir?[0].valueReference?.display, "Peter Chalmers")
		XCTAssertEqual(inst.extension_fhir?[0].valueReference?.reference, "RelatedPerson/peter")
		XCTAssertEqual(inst.id, "herd1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "https://vetmed.iastate.edu/vdl")
		XCTAssertEqual(inst.identifier?[0].value, "20171120-1234")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "Breeding herd")
		XCTAssertEqual(inst.quantity, 2500)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "animal")!)
		
		return inst
	}
}
