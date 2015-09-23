//
//  HealthcareServiceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class HealthcareServiceTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> HealthcareService {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> HealthcareService {
		let instance = HealthcareService(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testHealthcareService1() {
		let instance = try? runHealthcareService1()
		XCTAssertNotNil(instance, "Must instantiate HealthcareService")
		try! runHealthcareService1(instance!.asJSON())
	}
	
	func runHealthcareService1(json: FHIRJSON? = nil) throws -> HealthcareService {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "healthcareservice-example.json")
		
		XCTAssertFalse(inst.appointmentRequired!)
		XCTAssertEqual(inst.availabilityExceptions!, "Reduced capacity is available during the Christmas period")
		XCTAssertEqual(inst.availableTime![0].availableEndTime!.description, "05:30:00")
		XCTAssertEqual(inst.availableTime![0].availableStartTime!.description, "08:30:00")
		XCTAssertEqual(inst.availableTime![0].daysOfWeek![0], "mon")
		XCTAssertEqual(inst.availableTime![0].daysOfWeek![1], "tue")
		XCTAssertEqual(inst.availableTime![0].daysOfWeek![2], "wed")
		XCTAssertEqual(inst.availableTime![0].daysOfWeek![3], "thu")
		XCTAssertEqual(inst.availableTime![0].daysOfWeek![4], "fri")
		XCTAssertEqual(inst.availableTime![1].availableEndTime!.description, "04:30:00")
		XCTAssertEqual(inst.availableTime![1].availableStartTime!.description, "09:30:00")
		XCTAssertEqual(inst.availableTime![1].daysOfWeek![0], "sat")
		XCTAssertEqual(inst.availableTime![1].daysOfWeek![1], "fri")
		XCTAssertEqual(inst.characteristic![0].coding![0].display!, "Wheelchair access")
		XCTAssertEqual(inst.comment!, "Providing Specialist psychology services to the greater Den Burg area, many years of experience dealing with PTSD issues")
		XCTAssertEqual(inst.coverageArea![0].display!, "Greater Denburg area")
		XCTAssertEqual(inst.coverageArea![0].reference!, "#DenBurg")
		XCTAssertEqual(inst.eligibility!.coding![0].display!, "DVA Required")
		XCTAssertEqual(inst.eligibilityNote!, "Evidence of application for DVA status may be sufficient for commencing assessment")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.notAvailable![0].description_fhir!, "Christmas/Boxing Day")
		XCTAssertEqual(inst.notAvailable![0].during!.end!.description, "2015-12-26")
		XCTAssertEqual(inst.notAvailable![0].during!.start!.description, "2015-12-25")
		XCTAssertEqual(inst.notAvailable![1].description_fhir!, "New Years Day")
		XCTAssertEqual(inst.notAvailable![1].during!.end!.description, "2016-01-01")
		XCTAssertEqual(inst.notAvailable![1].during!.start!.description, "2016-01-01")
		XCTAssertEqual(inst.programName![0], "PTSD outreach")
		XCTAssertEqual(inst.publicKey!, "*** Base64 public key goes here to be used for secure messaging ***")
		XCTAssertEqual(inst.referralMethod![0].coding![0].code!, "phone")
		XCTAssertEqual(inst.referralMethod![0].coding![0].display!, "Phone")
		XCTAssertEqual(inst.referralMethod![1].coding![0].code!, "fax")
		XCTAssertEqual(inst.referralMethod![1].coding![0].display!, "Fax")
		XCTAssertEqual(inst.referralMethod![2].coding![0].code!, "elec")
		XCTAssertEqual(inst.referralMethod![2].coding![0].display!, "Secure Messaging")
		XCTAssertEqual(inst.referralMethod![3].coding![0].code!, "semail")
		XCTAssertEqual(inst.referralMethod![3].coding![0].display!, "Secure Email")
		XCTAssertEqual(inst.serviceName!, "Consulting psychologists and/or psychology services")
		XCTAssertEqual(inst.serviceType![0].type!.coding![0].code!, "394913002")
		XCTAssertEqual(inst.serviceType![0].type!.coding![0].display!, "Psychotherapy")
		XCTAssertEqual(inst.serviceType![0].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceType![1].specialty![0].coding![0].code!, "47505003")
		XCTAssertEqual(inst.serviceType![1].specialty![0].coding![0].display!, "Posttraumatic stress disorder")
		XCTAssertEqual(inst.serviceType![1].specialty![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceType![1].type!.coding![0].code!, "394587001")
		XCTAssertEqual(inst.serviceType![1].type!.coding![0].display!, "Psychiatry")
		XCTAssertEqual(inst.serviceType![1].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "(555) silent")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "directaddress@example.com")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
