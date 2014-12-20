//
//  DeviceUseRequestTests.swift
//  DeviceUseRequestTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DeviceUseRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DeviceUseRequest? {
		let json = readJSONFile(filename)
		let instance = DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() {
		let inst = instantiateFrom("deviceuserequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseRequest instance")
	
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testDeviceUseRequest2() {
		let inst = instantiateFrom("deviceuserequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseRequest instance")
	
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testDeviceUseRequest3() {
		let inst = instantiateFrom("deviceuserequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseRequest instance")
	
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
