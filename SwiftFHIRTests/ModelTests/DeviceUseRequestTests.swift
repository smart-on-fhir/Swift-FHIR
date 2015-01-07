//
//  DeviceUseRequestTests.swift
//  DeviceUseRequestTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

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
