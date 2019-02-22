//
//  DeviceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDevice = Models.Device
#else
import SwiftFHIR
typealias SwiftFHIRDevice = SwiftFHIR.Device
#endif


class DeviceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDevice {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDevice {
		return try SwiftFHIRDevice(json: json)
	}
	
	func testDevice1() {
		do {
			let instance = try runDevice1()
			try runDevice1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDevice1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDevice {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-f001-feedingtube.json")
		
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealthhospital/identifier/devices")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, FHIRDeviceStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: f001</p><p><b>identifier</b>: 12345</p><p><b>status</b>: active</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDevice2() {
		do {
			let instance = try runDevice2()
			try runDevice2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Device successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDevice2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDevice {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst.identifier?[0].value, "345675")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>identifier</b>: 345675</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
