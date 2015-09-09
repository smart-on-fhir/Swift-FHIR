//
//  SlotTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SlotTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Slot {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Slot {
		let instance = Slot(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSlot1() throws {
		let instance = try runSlot1()
		try runSlot1(instance.asJSON())
	}
	
	func runSlot1(json: FHIRJSON? = nil) throws -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-busy.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY")
		XCTAssertEqual(inst.id!, "1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier![0].value!, "123132")
		XCTAssertTrue(inst.overbooked!)
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot2() throws {
		let instance = try runSlot2()
		try runSlot2(instance.asJSON())
	}
	
	func runSlot2(json: FHIRJSON? = nil) throws -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-tentative.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T10:00:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-TENTATIVE")
		XCTAssertEqual(inst.id!, "2")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot3() throws {
		let instance = try runSlot3()
		try runSlot3(instance.asJSON())
	}
	
	func runSlot3(json: FHIRJSON? = nil) throws -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-unavailable.json")
		
		XCTAssertEqual(inst.comment!, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.freeBusyType!, "BUSY-UNAVAILABLE")
		XCTAssertEqual(inst.id!, "3")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
	
	func testSlot4() throws {
		let instance = try runSlot4()
		try runSlot4(instance.asJSON())
	}
	
	func runSlot4(json: FHIRJSON? = nil) throws -> Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end!.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.freeBusyType!, "FREE")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.schedule!.reference!, "Schedule/example")
		XCTAssertEqual(inst.start!.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "45")
		XCTAssertEqual(inst.type!.coding![0].display!, "Physiotherapy")
		
		return inst
	}
}
