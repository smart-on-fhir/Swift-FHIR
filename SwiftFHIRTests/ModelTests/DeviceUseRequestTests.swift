//
//  DeviceUseRequestTests.swift
//  DeviceUseRequestTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
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
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest2() {
		let instance = testDeviceUseRequest2_impl()
		testDeviceUseRequest2_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest2_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest3() {
		let instance = testDeviceUseRequest3_impl()
		testDeviceUseRequest3_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest3_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest4() {
		let instance = testDeviceUseRequest4_impl()
		testDeviceUseRequest4_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest4_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-qicore-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest5() {
		let instance = testDeviceUseRequest5_impl()
		testDeviceUseRequest5_impl(json: instance.asJSON())
	}
	
	func testDeviceUseRequest5_impl(json: JSONDictionary? = nil) -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceuserequest-qicore-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
