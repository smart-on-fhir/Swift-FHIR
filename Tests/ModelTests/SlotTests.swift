//
//  SlotTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SlotTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Slot {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Slot {
		let instance = SwiftFHIR.Slot(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSlot1() {
		do {
			let instance = try runSlot1()
			try runSlot1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw")
		}
	}
	
	@discardableResult
	func runSlot1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-busy.json")
		
		XCTAssertEqual(inst.comment, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.freeBusyType, "busy")
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier?[0].value, "123132")
		XCTAssertTrue(inst.overbooked ?? false)
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "45")
		XCTAssertEqual(inst.type?.coding?[0].display, "Physiotherapy")
		
		return inst
	}
	
	func testSlot2() {
		do {
			let instance = try runSlot2()
			try runSlot2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw")
		}
	}
	
	@discardableResult
	func runSlot2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-tentative.json")
		
		XCTAssertEqual(inst.comment, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end?.description, "2013-12-25T10:00:00Z")
		XCTAssertEqual(inst.freeBusyType, "busy-tentative")
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "45")
		XCTAssertEqual(inst.type?.coding?[0].display, "Physiotherapy")
		
		return inst
	}
	
	func testSlot3() {
		do {
			let instance = try runSlot3()
			try runSlot3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw")
		}
	}
	
	@discardableResult
	func runSlot3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-unavailable.json")
		
		XCTAssertEqual(inst.comment, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.freeBusyType, "busy-unavailable")
		XCTAssertEqual(inst.id, "3")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "45")
		XCTAssertEqual(inst.type?.coding?[0].display, "Physiotherapy")
		
		return inst
	}
	
	func testSlot4() {
		do {
			let instance = try runSlot4()
			try runSlot4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw")
		}
	}
	
	@discardableResult
	func runSlot4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Slot {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example.json")
		
		XCTAssertEqual(inst.comment, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.freeBusyType, "free")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "45")
		XCTAssertEqual(inst.type?.coding?[0].display, "Physiotherapy")
		
		return inst
	}
}
