//
//  AppointmentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Appointment {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Appointment {
		let instance = SwiftFHIR.Appointment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointment1() {
		do {
			let instance = try runAppointment1()
			try runAppointment1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example-request.json")
		
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.id, "examplereq")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleappointment-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.minutesDuration, UInt(15))
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, "required")
		XCTAssertEqual(inst.participant?[0].status, "needs-action")
		XCTAssertEqual(inst.participant?[1].required, "required")
		XCTAssertEqual(inst.participant?[1].status, "needs-action")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "attending")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, "required")
		XCTAssertEqual(inst.participant?[2].status, "accepted")
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.reason?.text, "Clinical Review")
		XCTAssertEqual(inst.slot?[0].reference, "Slot/example")
		XCTAssertEqual(inst.status, "proposed")
		XCTAssertEqual(inst.text?.div, "<div>Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "52")
		XCTAssertEqual(inst.type?.coding?[0].display, "General Discussion")
		
		return inst
	}
	
	func testAppointment2() {
		do {
			let instance = try runAppointment2()
			try runAppointment2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example.json")
		
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end?.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, "required")
		XCTAssertEqual(inst.participant?[0].status, "accepted")
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, "required")
		XCTAssertEqual(inst.participant?[1].status, "accepted")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "attending")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, "required")
		XCTAssertEqual(inst.participant?[2].status, "accepted")
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.start?.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status, "booked")
		XCTAssertEqual(inst.text?.div, "<div>Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "52")
		XCTAssertEqual(inst.type?.coding?[0].display, "General Discussion")
		
		return inst
	}
	
	func testAppointment3() {
		do {
			let instance = try runAppointment3()
			try runAppointment3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example2doctors.json")
		
		XCTAssertEqual(inst.comment, "Clarify the results of the MRI to ensure context of test was correct")
		XCTAssertEqual(inst.description_fhir, "Discussion about Peter Chalmers MRI results")
		XCTAssertEqual(inst.end?.description, "2013-12-09T11:00:00Z")
		XCTAssertEqual(inst.id, "2docs")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, "information-only")
		XCTAssertEqual(inst.participant?[0].status, "accepted")
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, "required")
		XCTAssertEqual(inst.participant?[1].status, "accepted")
		XCTAssertEqual(inst.participant?[2].actor?.display, "Luigi Maas")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.participant?[2].required, "required")
		XCTAssertEqual(inst.participant?[2].status, "accepted")
		XCTAssertEqual(inst.participant?[3].actor?.display, "Phone Call")
		XCTAssertEqual(inst.participant?[3].required, "information-only")
		XCTAssertEqual(inst.participant?[3].status, "accepted")
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.start?.description, "2013-12-09T09:00:00Z")
		XCTAssertEqual(inst.status, "booked")
		XCTAssertEqual(inst.text?.div, "<div>Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "52")
		XCTAssertEqual(inst.type?.coding?[0].display, "General Discussion")
		
		return inst
	}
}
