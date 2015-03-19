//
//  AppointmentTests.swift
//  AppointmentTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointment-example.json")
		
		XCTAssertEqual(inst.comment!, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.description_fhir!, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end!.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].required!, "required")
		XCTAssertEqual(inst.participant![0].status!, "accepted")
		XCTAssertEqual(inst.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participant![1].required!, "required")
		XCTAssertEqual(inst.participant![1].status!, "accepted")
		XCTAssertEqual(inst.participant![1].type![0].coding![0].code!, "attending")
		XCTAssertEqual(inst.participant![2].actor!.display!, "South Wing, second floor")
		XCTAssertEqual(inst.participant![2].actor!.reference!, "Location/1")
		XCTAssertEqual(inst.participant![2].required!, "required")
		XCTAssertEqual(inst.participant![2].status!, "accepted")
		XCTAssertEqual(inst.priority!, 5)
		XCTAssertEqual(inst.start!.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status!, "booked")
		XCTAssertEqual(inst.text!.div!, "<div>Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "52")
		XCTAssertEqual(inst.type!.coding![0].display!, "General Discussion")
		
		return inst
	}
	
	func testAppointment2() {
		let instance = testAppointment2_impl()
		testAppointment2_impl(json: instance.asJSON())
	}
	
	func testAppointment2_impl(json: JSONDictionary? = nil) -> Appointment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "appointment-example2doctors.json")
		
		XCTAssertEqual(inst.comment!, "Clarify the results of the MRI to ensure context of test was correct")
		XCTAssertEqual(inst.description_fhir!, "Discussion about Peter Chalmers MRI results")
		XCTAssertEqual(inst.end!.description, "2013-12-09T11:00:00Z")
		XCTAssertEqual(inst.id!, "2docs")
		XCTAssertEqual(inst.participant![0].actor!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].actor!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].required!, "information-only")
		XCTAssertEqual(inst.participant![0].status!, "accepted")
		XCTAssertEqual(inst.participant![1].actor!.display!, "Dr Adam Careful")
		XCTAssertEqual(inst.participant![1].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.participant![1].required!, "required")
		XCTAssertEqual(inst.participant![1].status!, "accepted")
		XCTAssertEqual(inst.participant![2].actor!.display!, "Luigi Maas")
		XCTAssertEqual(inst.participant![2].actor!.reference!, "Practitioner/f202")
		XCTAssertEqual(inst.participant![2].required!, "required")
		XCTAssertEqual(inst.participant![2].status!, "accepted")
		XCTAssertEqual(inst.participant![3].actor!.display!, "Phone Call")
		XCTAssertEqual(inst.participant![3].required!, "information-only")
		XCTAssertEqual(inst.participant![3].status!, "accepted")
		XCTAssertEqual(inst.priority!, 5)
		XCTAssertEqual(inst.start!.description, "2013-12-09T09:00:00Z")
		XCTAssertEqual(inst.status!, "booked")
		XCTAssertEqual(inst.text!.div!, "<div>Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "52")
		XCTAssertEqual(inst.type!.coding![0].display!, "General Discussion")
		
		return inst
	}
}
