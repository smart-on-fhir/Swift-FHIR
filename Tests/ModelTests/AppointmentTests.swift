//
//  AppointmentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRAppointment = Models.Appointment
#else
import SwiftFHIR
typealias SwiftFHIRAppointment = SwiftFHIR.Appointment
#endif


class AppointmentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRAppointment {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRAppointment {
		return try SwiftFHIRAppointment(json: json)
	}
	
	func testAppointment1() {
		do {
			let instance = try runAppointment1()
			try runAppointment1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAppointment1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAppointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "FOLLOWUP")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "A follow up visit from a previous appointment")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0276")
		XCTAssertEqual(inst.basedOn?[0].reference, "ServiceRequest/myringotomy")
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.created?.description, "2013-10-10")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end?.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, 5)
		XCTAssertEqual(inst.reasonReference?[0].display, "Severe burn of left ear")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Condition/example")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "52")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "General Discussion")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394814009")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.start?.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "booked")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testAppointment2() {
		do {
			let instance = try runAppointment2()
			try runAppointment2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAppointment2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAppointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example-request.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "WALKIN")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "A previously unscheduled walk-in visit")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0276")
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.created?.description, "2015-12-02")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.id, "examplereq")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleappointment-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.minutesDuration, 15)
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "needs-action")!)
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "needs-action")!)
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, 5)
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "413095006")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCode?[0].text, "Clinical Review")
		XCTAssertEqual(inst.requestedPeriod?[0].end?.description, "2016-06-09")
		XCTAssertEqual(inst.requestedPeriod?[0].start?.description, "2016-06-02")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.slot?[0].reference, "Slot/example")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394814009")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "proposed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testAppointment3() {
		do {
			let instance = try runAppointment3()
			try runAppointment3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAppointment3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAppointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example2doctors.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "WALKIN")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "A previously unscheduled walk-in visit")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0276")
		XCTAssertEqual(inst.comment, "Clarify the results of the MRI to ensure context of test was correct")
		XCTAssertEqual(inst.description_fhir, "Discussion about Peter Chalmers MRI results")
		XCTAssertEqual(inst.end?.description, "2013-12-09T11:00:00Z")
		XCTAssertEqual(inst.id, "2docs")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "information-only")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[2].actor?.display, "Luigi Maas")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[3].actor?.display, "Phone Call")
		XCTAssertEqual(inst.participant?[3].required, ParticipantRequired(rawValue: "information-only")!)
		XCTAssertEqual(inst.participant?[3].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, 5)
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "52")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "General Discussion")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394814009")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.start?.description, "2013-12-09T09:00:00Z")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "booked")!)
		XCTAssertEqual(inst.supportingInformation?[0].reference, "DiagnosticReport/ultrasound")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
