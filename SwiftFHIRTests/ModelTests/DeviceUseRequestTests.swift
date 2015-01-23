//
//  DeviceUseRequestTests.swift
//  DeviceUseRequestTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceUseRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DeviceUseRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DeviceUseRequest {
		let instance = DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() {
		let instance = testDeviceUseRequest1_impl()
		testDeviceUseRequest1_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest1_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testDeviceUseRequest2() {
		let instance = testDeviceUseRequest2_impl()
		testDeviceUseRequest2_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest2_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testDeviceUseRequest3() {
		let instance = testDeviceUseRequest3_impl()
		testDeviceUseRequest3_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest3_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
}
