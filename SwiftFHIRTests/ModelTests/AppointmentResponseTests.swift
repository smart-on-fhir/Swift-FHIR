//
//  AppointmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> AppointmentResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> AppointmentResponse {
		let instance = AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() {
		let instance = try? runAppointmentResponse1()
		XCTAssertNotNil(instance, "Must instantiate AppointmentResponse")
		if let instance = instance {
			try! runAppointmentResponse1(instance.asJSON())
		}
	}
	
	func runAppointmentResponse1(json: FHIRJSON? = nil) throws -> AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example-req.json")
		
		XCTAssertEqual(inst.actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.appointment!.display!, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment!.reference!, "Appointment/examplereq")
		XCTAssertEqual(inst.comment!, "can't we try for this time, can't do mornings")
		XCTAssertEqual(inst.end!.description, "2013-12-25T13:30:00Z")
		XCTAssertEqual(inst.id!, "exampleresp")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://example.org/sampleappointmentresponse-identifier")
		XCTAssertEqual(inst.identifier![0].value!, "response123")
		XCTAssertEqual(inst.participantStatus!, "tentative")
		XCTAssertEqual(inst.participantType![0].coding![0].code!, "attending")
		XCTAssertEqual(inst.start!.description, "2013-12-25T13:15:00Z")
		XCTAssertEqual(inst.text!.div!, "<div>Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testAppointmentResponse2() {
		let instance = try? runAppointmentResponse2()
		XCTAssertNotNil(instance, "Must instantiate AppointmentResponse")
		if let instance = instance {
			try! runAppointmentResponse2(instance.asJSON())
		}
	}
	
	func runAppointmentResponse2(json: FHIRJSON? = nil) throws -> AppointmentResponse {
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
