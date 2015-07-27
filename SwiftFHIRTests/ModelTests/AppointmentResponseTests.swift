//
//  AppointmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> AppointmentResponse {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> AppointmentResponse {
		let instance = AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() throws {
		let instance = try testAppointmentResponse1_impl()
		try testAppointmentResponse1_impl(instance.asJSON())
	}
	
	func testAppointmentResponse1_impl(json: FHIRJSON? = nil) throws -> AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example.json")
		
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
