//
//  PractitionerRoleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPractitionerRole = Models.PractitionerRole
#else
import SwiftFHIR
typealias SwiftFHIRPractitionerRole = SwiftFHIR.PractitionerRole
#endif


class PractitionerRoleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPractitionerRole {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPractitionerRole {
		return try SwiftFHIRPractitionerRole(json: json)
	}
	
	func testPractitionerRole1() {
		do {
			let instance = try runPractitionerRole1()
			try runPractitionerRole1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PractitionerRole successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitionerRole1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitionerRole {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitionerrole-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.availabilityExceptions, "Adam is generally unavailable on public holidays and during the Christmas/New Year break")
		XCTAssertEqual(inst.availableTime?[0].availableEndTime?.description, "16:30:00")
		XCTAssertEqual(inst.availableTime?[0].availableStartTime?.description, "09:00:00")
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[0], DaysOfWeek(rawValue: "mon")!)
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[1], DaysOfWeek(rawValue: "tue")!)
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[2], DaysOfWeek(rawValue: "wed")!)
		XCTAssertEqual(inst.availableTime?[1].availableEndTime?.description, "12:00:00")
		XCTAssertEqual(inst.availableTime?[1].availableStartTime?.description, "09:00:00")
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[0], DaysOfWeek(rawValue: "thu")!)
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[1], DaysOfWeek(rawValue: "fri")!)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "RP")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0286")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.healthcareService?[0].reference, "HealthcareService/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.location?[0].display, "South Wing, second floor")
		XCTAssertEqual(inst.location?[0].reference, "Location/1")
		XCTAssertEqual(inst.notAvailable?[0].description_fhir, "Adam will be on extended leave during May 2017")
		XCTAssertEqual(inst.notAvailable?[0].during?.end?.description, "2017-05-20")
		XCTAssertEqual(inst.notAvailable?[0].during?.start?.description, "2017-05-01")
		XCTAssertEqual(inst.organization?.reference, "Organization/f001")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2012-01-01")
		XCTAssertEqual(inst.practitioner?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.practitioner?.reference, "Practitioner/example")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "408443003")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General medical practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "(03) 5555 6473")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "adam.southern@example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
