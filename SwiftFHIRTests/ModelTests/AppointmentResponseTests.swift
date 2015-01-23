//
//  AppointmentResponseTests.swift
//  AppointmentResponseTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> AppointmentResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> AppointmentResponse {
		let instance = AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() {
		let instance = testAppointmentResponse1_impl()
		testAppointmentResponse1_impl(json: instance.asJSON())
	}
	
	func testAppointmentResponse1_impl(json: JSONDictionary? = nil) -> AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointmentresponse-example.canonical.json")
		
		XCTAssertEqual(inst.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participantStatus!, "accepted")
		
		return inst
	}
	
	func testAppointmentResponse2() {
		let instance = testAppointmentResponse2_impl()
		testAppointmentResponse2_impl(json: instance.asJSON())
	}
	
	func testAppointmentResponse2_impl(json: JSONDictionary? = nil) -> AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointmentresponse-example.canonical.json")
		
		XCTAssertEqual(inst.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participantStatus!, "accepted")
		
		return inst
	}
	
	func testAppointmentResponse3() {
		let instance = testAppointmentResponse3_impl()
		testAppointmentResponse3_impl(json: instance.asJSON())
	}
	
	func testAppointmentResponse3_impl(json: JSONDictionary? = nil) -> AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointmentresponse-example.json")
		
		XCTAssertEqual(inst.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst.individual![0].display!, "Peter James Chalmers")
		XCTAssertEqual(inst.individual![0].reference!, "Patient/example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participantStatus!, "accepted")
		
		return inst
	}
}
