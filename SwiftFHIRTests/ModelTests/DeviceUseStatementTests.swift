//
//  DeviceUseStatementTests.swift
//  DeviceUseStatementTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "deviceusestatement-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
