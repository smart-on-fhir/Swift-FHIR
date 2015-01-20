//
//  AppointmentResponseTests.swift
//  AppointmentResponseTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> AppointmentResponse? {
		let json = readJSONFile(filename)
		let instance = AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() {
		let inst = instantiateFrom("appointmentresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a AppointmentResponse instance")
		
		XCTAssertEqual(inst!.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst!.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst!.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participantStatus!, "accepted")
	}
	
	func testAppointmentResponse2() {
		let inst = instantiateFrom("appointmentresponse-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a AppointmentResponse instance")
		
		XCTAssertEqual(inst!.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst!.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst!.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participantStatus!, "accepted")
	}
	
	func testAppointmentResponse3() {
		let inst = instantiateFrom("appointmentresponse-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a AppointmentResponse instance")
		
		XCTAssertEqual(inst!.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst!.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst!.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst!.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participantStatus!, "accepted")
	}
}
