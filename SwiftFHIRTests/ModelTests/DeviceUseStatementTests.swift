//
//  DeviceUseStatementTests.swift
//  DeviceUseStatementTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceUseStatementTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DeviceUseStatement {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DeviceUseStatement {
		let instance = DeviceUseStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseStatement1() {
		let instance = testDeviceUseStatement1_impl()
		testDeviceUseStatement1_impl(json: instance.asJSON())
	}
	
	func testDeviceUseStatement1_impl(json: JSONDictionary? = nil) -> DeviceUseStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceusestatement-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testDeviceUseStatement2() {
		let instance = testDeviceUseStatement2_impl()
		testDeviceUseStatement2_impl(json: instance.asJSON())
	}
	
	func testDeviceUseStatement2_impl(json: JSONDictionary? = nil) -> DeviceUseStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceusestatement-example.canonical.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testDeviceUseStatement3() {
		let instance = testDeviceUseStatement3_impl()
		testDeviceUseStatement3_impl(json: instance.asJSON())
	}
	
	func testDeviceUseStatement3_impl(json: JSONDictionary? = nil) -> DeviceUseStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceusestatement-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
}
