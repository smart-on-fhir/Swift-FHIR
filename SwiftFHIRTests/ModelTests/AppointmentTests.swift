//
//  AppointmentTests.swift
//  AppointmentTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class AppointmentTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Appointment? {
		let json = readJSONFile(filename)
		let instance = Appointment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointment1() {
		let inst = instantiateFrom("appointment-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Appointment instance")
	
		XCTAssertEqual(inst!.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst!.description!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-10T11:00:00Z")!)
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].required!, "required")
		XCTAssertEqual(inst!.participant![0].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participant![1].required!, "required")
		XCTAssertEqual(inst!.participant![1].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst!.priority!, 5)
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-10T09:00:00Z")!)
		XCTAssertEqual(inst!.status!, "booked")
		XCTAssertEqual(inst!.type!.coding![0].code!, "52")
		XCTAssertEqual(inst!.type!.coding![0].display!, "General Discussion")
	}
	
	func testAppointment2() {
		let inst = instantiateFrom("appointment-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Appointment instance")
	
		XCTAssertEqual(inst!.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst!.description!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-10T11:00:00Z")!)
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].required!, "required")
		XCTAssertEqual(inst!.participant![0].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participant![1].required!, "required")
		XCTAssertEqual(inst!.participant![1].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst!.priority!, 5)
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-10T09:00:00Z")!)
		XCTAssertEqual(inst!.status!, "booked")
		XCTAssertEqual(inst!.type!.coding![0].code!, "52")
		XCTAssertEqual(inst!.type!.coding![0].display!, "General Discussion")
	}
	
	func testAppointment3() {
		let inst = instantiateFrom("appointment-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Appointment instance")
	
		XCTAssertEqual(inst!.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst!.description!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-10T11:00:00Z")!)
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst!.participant![0].required!, "required")
		XCTAssertEqual(inst!.participant![0].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst!.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.participant![1].required!, "required")
		XCTAssertEqual(inst!.participant![1].status!, "accepted")
		XCTAssertEqual(inst!.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst!.priority!, 5)
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-10T09:00:00Z")!)
		XCTAssertEqual(inst!.status!, "booked")
		XCTAssertEqual(inst!.type!.coding![0].code!, "52")
		XCTAssertEqual(inst!.type!.coding![0].display!, "General Discussion")
	}
}
