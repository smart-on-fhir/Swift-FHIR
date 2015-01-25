//
//  AppointmentTests.swift
//  AppointmentTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class AppointmentTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Appointment {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Appointment {
		let instance = Appointment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointment1() {
		let instance = testAppointment1_impl()
		testAppointment1_impl(json: instance.asJSON())
	}
	
	func testAppointment1_impl(json: JSONDictionary? = nil) -> Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointment-example.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end!.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].required!, "required")
		XCTAssertEqual(inst.participant![0].status!, "accepted")
		XCTAssertEqual(inst.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participant![1].required!, "required")
		XCTAssertEqual(inst.participant![1].status!, "accepted")
		XCTAssertEqual(inst.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst.priority!, 5)
		XCTAssertEqual(inst.start!.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status!, "booked")
		XCTAssertEqual(inst.type!.coding![0].code!, "52")
		XCTAssertEqual(inst.type!.coding![0].display!, "General Discussion")
		
		return inst
	}
	
	func testAppointment2() {
		let instance = testAppointment2_impl()
		testAppointment2_impl(json: instance.asJSON())
	}
	
	func testAppointment2_impl(json: JSONDictionary? = nil) -> Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointment-example.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end!.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].required!, "required")
		XCTAssertEqual(inst.participant![0].status!, "accepted")
		XCTAssertEqual(inst.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participant![1].required!, "required")
		XCTAssertEqual(inst.participant![1].status!, "accepted")
		XCTAssertEqual(inst.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst.priority!, 5)
		XCTAssertEqual(inst.start!.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status!, "booked")
		XCTAssertEqual(inst.type!.coding![0].code!, "52")
		XCTAssertEqual(inst.type!.coding![0].display!, "General Discussion")
		
		return inst
	}
	
	func testAppointment3() {
		let instance = testAppointment3_impl()
		testAppointment3_impl(json: instance.asJSON())
	}
	
	func testAppointment3_impl(json: JSONDictionary? = nil) -> Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointment-example.json")
		
		XCTAssertEqual(inst.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end!.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lastModified!.description, "2012-09-17")
		XCTAssertEqual(inst.lastModifiedBy!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.lastModifiedBy!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].required!, "required")
		XCTAssertEqual(inst.participant![0].status!, "accepted")
		XCTAssertEqual(inst.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participant![1].required!, "required")
		XCTAssertEqual(inst.participant![1].status!, "accepted")
		XCTAssertEqual(inst.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst.priority!, 5)
		XCTAssertEqual(inst.start!.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status!, "booked")
		XCTAssertEqual(inst.type!.coding![0].code!, "52")
		XCTAssertEqual(inst.type!.coding![0].display!, "General Discussion")
		
		return inst
	}
}
