//
//  DeviceUseRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceUseRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DeviceUseRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DeviceUseRequest {
		let instance = SwiftFHIR.DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() {
		do {
			let instance = try runDeviceUseRequest1()
			try runDeviceUseRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DeviceUseRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runDeviceUseRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
