//
//  DeviceUseRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDeviceUseRequest = Models.DeviceUseRequest
#else
import SwiftFHIR
typealias SwiftFHIRDeviceUseRequest = SwiftFHIR.DeviceUseRequest
#endif


class DeviceUseRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDeviceUseRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDeviceUseRequest {
		return try SwiftFHIRDeviceUseRequest(json: json)
	}
	
	func testDeviceUseRequest1() {
		do {
			let instance = try runDeviceUseRequest1()
			try runDeviceUseRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceUseRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceUseRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceUseRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.deviceReference?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.stage?.coding?[0].code, "original-order")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
