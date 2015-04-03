//
//  AppointmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> AppointmentResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> AppointmentResponse {
		let instance = AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() {
		let instance = testAppointmentResponse1_impl()
		testAppointmentResponse1_impl(json: instance.asJSON())
	}
	
	func testAppointmentResponse1_impl(json: FHIRJSON? = nil) -> AppointmentResponse {
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
