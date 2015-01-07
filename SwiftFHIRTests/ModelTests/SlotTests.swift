//
//  SlotTests.swift
//  SlotTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SlotTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Slot? {
		let json = readJSONFile(filename)
		let instance = Slot(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSlot1() {
		let inst = instantiateFrom("slot-example-busy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:15:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://example.org/identifiers/slots")!)
		XCTAssertEqual(inst!.identifier![0].value!, "123132")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertTrue(inst!.overbooked!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:00:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot2() {
		let inst = instantiateFrom("slot-example-busy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:15:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://example.org/identifiers/slots")!)
		XCTAssertEqual(inst!.identifier![0].value!, "123132")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertTrue(inst!.overbooked!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:00:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot3() {
		let inst = instantiateFrom("slot-example-busy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:15:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://example.org/identifiers/slots")!)
		XCTAssertEqual(inst!.identifier![0].value!, "123132")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertTrue(inst!.overbooked!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:00:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot4() {
		let inst = instantiateFrom("slot-example-tentative.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T10:00:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY-TENTATIVE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:45:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot5() {
		let inst = instantiateFrom("slot-example-tentative.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T10:00:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY-TENTATIVE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:45:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot6() {
		let inst = instantiateFrom("slot-example-unavailable.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:45:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY-UNAVAILABLE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:30:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot7() {
		let inst = instantiateFrom("slot-example-unavailable.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:45:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "BUSY-UNAVAILABLE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:30:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot8() {
		let inst = instantiateFrom("slot-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:30:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "FREE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:15:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
	
	func testSlot9() {
		let inst = instantiateFrom("slot-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Slot instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.end!, NSDate.dateFromISOString("2013-12-25T09:30:00Z")!)
		XCTAssertEqual(inst!.freeBusyType!, "FREE")
		XCTAssertEqual(inst!.lastModified!, NSDate.dateFromISOString("2012-09-17")!)
		XCTAssertEqual(inst!.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst!.start!, NSDate.dateFromISOString("2013-12-25T09:15:00Z")!)
		XCTAssertEqual(inst!.type!.coding![0].code!, "45")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Physiotherapy")
	}
}
