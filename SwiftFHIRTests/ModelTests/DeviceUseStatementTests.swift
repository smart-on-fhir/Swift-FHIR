//
//  DeviceUseStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceUseStatementTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> DeviceUseStatement {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DeviceUseStatement {
		let instance = DeviceUseStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseStatement1() {
		let instance = try? runDeviceUseStatement1()
		XCTAssertNotNil(instance, "Must instantiate DeviceUseStatement")
		if let instance = instance {
			try! runDeviceUseStatement1(instance.asJSON())
		}
	}
	
	func runDeviceUseStatement1(json: FHIRJSON? = nil) throws -> DeviceUseStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceusestatement-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
