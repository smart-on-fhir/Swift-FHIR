//
//  DeviceUseStatementTests.swift
//  DeviceUseStatementTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceUseStatementTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DeviceUseStatement? {
		let json = readJSONFile(filename)
		let instance = DeviceUseStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseStatement1() {
		let inst = instantiateFrom("deviceusestatement-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseStatement instance")
		
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testDeviceUseStatement2() {
		let inst = instantiateFrom("deviceusestatement-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseStatement instance")
		
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testDeviceUseStatement3() {
		let inst = instantiateFrom("deviceusestatement-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceUseStatement instance")
		
		XCTAssertEqual(inst!.device!.reference!, "Device/example")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
