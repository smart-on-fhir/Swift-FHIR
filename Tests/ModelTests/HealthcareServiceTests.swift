//
//  HealthcareServiceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRHealthcareService = Models.HealthcareService
#else
import SwiftFHIR
typealias SwiftFHIRHealthcareService = SwiftFHIR.HealthcareService
#endif


class HealthcareServiceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRHealthcareService {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRHealthcareService {
		return try SwiftFHIRHealthcareService(json: json)
	}
	
	func testHealthcareService1() {
		do {
			let instance = try runHealthcareService1()
			try runHealthcareService1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test HealthcareService successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runHealthcareService1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRHealthcareService {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "healthcareservice-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.appointmentRequired, false)
		XCTAssertEqual(inst.availabilityExceptions, "Reduced capacity is available during the Christmas period")
		XCTAssertEqual(inst.availableTime?[0].allDay, true)
		XCTAssertEqual(inst.availableTime?[0].daysOfWeek?[0], DaysOfWeek(rawValue: "wed")!)
		XCTAssertEqual(inst.availableTime?[1].availableEndTime?.description, "05:30:00")
		XCTAssertEqual(inst.availableTime?[1].availableStartTime?.description, "08:30:00")
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[0], DaysOfWeek(rawValue: "mon")!)
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[1], DaysOfWeek(rawValue: "tue")!)
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[2], DaysOfWeek(rawValue: "thu")!)
		XCTAssertEqual(inst.availableTime?[1].daysOfWeek?[3], DaysOfWeek(rawValue: "fri")!)
		XCTAssertEqual(inst.availableTime?[2].availableEndTime?.description, "04:30:00")
		XCTAssertEqual(inst.availableTime?[2].availableStartTime?.description, "09:30:00")
		XCTAssertEqual(inst.availableTime?[2].daysOfWeek?[0], DaysOfWeek(rawValue: "sat")!)
		XCTAssertEqual(inst.availableTime?[2].daysOfWeek?[1], DaysOfWeek(rawValue: "fri")!)
		XCTAssertEqual(inst.category?.coding?[0].code, "8")
		XCTAssertEqual(inst.category?.coding?[0].display, "Counselling")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/service-category")
		XCTAssertEqual(inst.category?.text, "Counselling")
		XCTAssertEqual(inst.characteristic?[0].coding?[0].display, "Wheelchair access")
		XCTAssertEqual(inst.comment, "Providing Specialist psychology services to the greater Den Burg area, many years of experience dealing with PTSD issues")
		XCTAssertEqual(inst.contained?[0].id, "DenBurg")
		XCTAssertEqual(inst.coverageArea?[0].display, "Greater Denburg area")
		XCTAssertEqual(inst.coverageArea?[0].reference, "#DenBurg")
		XCTAssertEqual(inst.eligibility?.coding?[0].display, "DVA Required")
		XCTAssertEqual(inst.eligibilityNote, "Evidence of application for DVA status may be sufficient for commencing assessment")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/shared-ids")
		XCTAssertEqual(inst.identifier?[0].value, "HS-12")
		XCTAssertEqual(inst.location?[0].reference, "Location/1")
		XCTAssertEqual(inst.name, "Consulting psychologists and/or psychology services")
		XCTAssertEqual(inst.notAvailable?[0].description_fhir, "Christmas/Boxing Day")
		XCTAssertEqual(inst.notAvailable?[0].during?.end?.description, "2015-12-26")
		XCTAssertEqual(inst.notAvailable?[0].during?.start?.description, "2015-12-25")
		XCTAssertEqual(inst.notAvailable?[1].description_fhir, "New Years Day")
		XCTAssertEqual(inst.notAvailable?[1].during?.end?.description, "2016-01-01")
		XCTAssertEqual(inst.notAvailable?[1].during?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.programName?[0], "PTSD outreach")
		XCTAssertEqual(inst.providedBy?.display, "Burgers University Medical Center")
		XCTAssertEqual(inst.providedBy?.reference, "Organization/f001")
		XCTAssertEqual(inst.referralMethod?[0].coding?[0].code, "phone")
		XCTAssertEqual(inst.referralMethod?[0].coding?[0].display, "Phone")
		XCTAssertEqual(inst.referralMethod?[1].coding?[0].code, "fax")
		XCTAssertEqual(inst.referralMethod?[1].coding?[0].display, "Fax")
		XCTAssertEqual(inst.referralMethod?[2].coding?[0].code, "elec")
		XCTAssertEqual(inst.referralMethod?[2].coding?[0].display, "Secure Messaging")
		XCTAssertEqual(inst.referralMethod?[3].coding?[0].code, "semail")
		XCTAssertEqual(inst.referralMethod?[3].coding?[0].display, "Secure Email")
		XCTAssertEqual(inst.serviceProvisionCode?[0].coding?[0].code, "cost")
		XCTAssertEqual(inst.serviceProvisionCode?[0].coding?[0].display, "Fees apply")
		XCTAssertEqual(inst.serviceProvisionCode?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/service-provision-conditions")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "47505003")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Posttraumatic stress disorder")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "(555) silent")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "directaddress@example.com")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "394913002")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Psychotherapy")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?[1].coding?[0].code, "394587001")
		XCTAssertEqual(inst.type?[1].coding?[0].display, "Psychiatry")
		XCTAssertEqual(inst.type?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
