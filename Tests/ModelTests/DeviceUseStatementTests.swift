//
//  DeviceUseStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceUseStatementTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DeviceUseStatement {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DeviceUseStatement {
		let instance = SwiftFHIR.DeviceUseStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseStatement1() {
		do {
			let instance = try runDeviceUseStatement1()
			try runDeviceUseStatement1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DeviceUseStatement successfully, but threw")
		}
	}
	
	@discardableResult
	func runDeviceUseStatement1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DeviceUseStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceusestatement-example.json")
		
		XCTAssertEqual(inst.device?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
