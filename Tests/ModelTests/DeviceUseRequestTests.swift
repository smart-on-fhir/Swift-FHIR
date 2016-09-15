//
//  DeviceUseRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
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
		
		XCTAssertEqual(inst.deviceReference?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.stage?.coding?[0].code, "original-order")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
