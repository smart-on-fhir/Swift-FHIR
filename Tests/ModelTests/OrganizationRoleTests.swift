//
//  OrganizationRoleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIROrganizationRole = Models.OrganizationRole
#else
import SwiftFHIR
typealias SwiftFHIROrganizationRole = SwiftFHIR.OrganizationRole
#endif


class OrganizationRoleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIROrganizationRole {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIROrganizationRole {
		return try SwiftFHIROrganizationRole(json: json)
	}
	
	func testOrganizationRole1() {
		do {
			let instance = try runOrganizationRole1()
			try runOrganizationRole1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OrganizationRole successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOrganizationRole1(_ json: FHIRJSON? = nil) throws -> SwiftFHIROrganizationRole {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "organizationrole-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.availabilityExceptions, "Reduced Services on public holidays and during the Christmas/New Year break")
		XCTAssertEqual(inst.availableTime?[0].availableEndTime?.description, "16:30:00")
		XCTAssertEqual(inst.availableTime?[0].availableStartTime?.description, "09:00:00")
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[0], DaysOfWeek(rawValue: "mon")!)
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[1], DaysOfWeek(rawValue: "tue")!)
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[2], DaysOfWeek(rawValue: "wed")!)
		XCTAssertEqual(inst.availableTime?[1].availableEndTime?.description, "12:00:00")
		XCTAssertEqual(inst.availableTime?[1].availableStartTime?.description, "09:00:00")
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[0], DaysOfWeek(rawValue: "thu")!)
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[1], DaysOfWeek(rawValue: "fri")!)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "provider")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/organization-role")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.healthcareService?[0].reference, "HealthcareService/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.location?[0].display, "South Wing, second floor")
		XCTAssertEqual(inst.location?[0].reference, "Location/1")
		XCTAssertEqual(inst.network?[0].display, "Dr Adam Careful")
		XCTAssertEqual(inst.network?[0].reference, "Organization/hl7pay")
		XCTAssertEqual(inst.organization?.reference, "Organization/hl7pay")
		XCTAssertEqual(inst.participatingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2012-01-01")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "408443003")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General medical practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "general.practice@example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
