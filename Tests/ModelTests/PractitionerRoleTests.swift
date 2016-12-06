//
//  PractitionerRoleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PractitionerRoleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PractitionerRole {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.PractitionerRole {
		return try SwiftFHIR.PractitionerRole(json: json)
	}
	
	func testPractitionerRole1() {
		do {
			let instance = try runPractitionerRole1()
			try runPractitionerRole1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PractitionerRole successfully, but threw")
		}
	}
	
	@discardableResult
	func runPractitionerRole1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PractitionerRole {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitionerrole-example.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "RP")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0286")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.healthcareService?[0].reference, "HealthcareService/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.location?[0].display, "South Wing, second floor")
		XCTAssertEqual(inst.location?[0].reference, "Location/1")
		XCTAssertEqual(inst.organization?.reference, "Organization/f001")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2012-01-01")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[0].value, "(03) 5555 6473")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
