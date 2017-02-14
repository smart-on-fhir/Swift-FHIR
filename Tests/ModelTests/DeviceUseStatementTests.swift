//
//  DeviceUseStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDeviceUseStatement = Models.DeviceUseStatement
#else
import SwiftFHIR
typealias SwiftFHIRDeviceUseStatement = SwiftFHIR.DeviceUseStatement
#endif


class DeviceUseStatementTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDeviceUseStatement {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDeviceUseStatement {
		return try SwiftFHIRDeviceUseStatement(json: json)
	}
	
	func testDeviceUseStatement1() {
		do {
			let instance = try runDeviceUseStatement1()
			try runDeviceUseStatement1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceUseStatement successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceUseStatement1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceUseStatement {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceusestatement-example.json")
		
		XCTAssertEqual(inst.device?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
