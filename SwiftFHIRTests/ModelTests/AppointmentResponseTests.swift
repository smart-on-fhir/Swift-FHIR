//
//  AppointmentResponseTests.swift
//  AppointmentResponseTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointmentresponse-example.json")
		
		XCTAssertEqual(inst.actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment!.reference!, "Appointment/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.participantStatus!, "accepted")
		XCTAssertEqual(inst.text!.div!, "<div>Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
