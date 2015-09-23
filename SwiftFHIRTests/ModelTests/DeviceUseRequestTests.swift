//
//  DeviceUseRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceUseRequestTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> DeviceUseRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DeviceUseRequest {
		let instance = DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() {
		let instance = try? runDeviceUseRequest1()
		XCTAssertNotNil(instance, "Must instantiate DeviceUseRequest")
		try! runDeviceUseRequest1(instance!.asJSON())
	}
	
	func runDeviceUseRequest1(json: FHIRJSON? = nil) throws -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
