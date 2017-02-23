//
//  AppointmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRAppointmentResponse = Models.AppointmentResponse
#else
import SwiftFHIR
typealias SwiftFHIRAppointmentResponse = SwiftFHIR.AppointmentResponse
#endif


class AppointmentResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRAppointmentResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRAppointmentResponse {
		return try SwiftFHIRAppointmentResponse(json: json)
	}
	
	func testAppointmentResponse1() {
		do {
			let instance = try runAppointmentResponse1()
			try runAppointmentResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test AppointmentResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAppointmentResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAppointmentResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example-req.json")
		
		XCTAssertEqual(inst.actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.appointment?.display, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment?.reference, "Appointment/examplereq")
		XCTAssertEqual(inst.comment, "can't we try for this time, can't do mornings")
		XCTAssertEqual(inst.end?.description, "2013-12-25T13:30:00Z")
		XCTAssertEqual(inst.id, "exampleresp")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleappointmentresponse-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "response123")
		XCTAssertEqual(inst.participantStatus, ParticipationStatus(rawValue: "tentative")!)
		XCTAssertEqual(inst.participantType?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participantType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.start?.description, "2013-12-25T13:15:00Z")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testAppointmentResponse2() {
		do {
			let instance = try runAppointmentResponse2()
			try runAppointmentResponse2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test AppointmentResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAppointmentResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAppointmentResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example.json")
		
		XCTAssertEqual(inst.actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.actor?.reference, "Patient/example")
		XCTAssertEqual(inst.appointment?.display, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment?.reference, "Appointment/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participantStatus, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
