//
//  GroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
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
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "person")!)
		
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
		XCTAssertEqual(inst.name, "John's herd")
		XCTAssertEqual(inst.quantity, 25)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.type, GroupType(rawValue: "animal")!)
		
		return inst
	}
}
