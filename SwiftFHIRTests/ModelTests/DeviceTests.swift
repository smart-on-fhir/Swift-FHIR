//
//  DeviceTests.swift
//  DeviceTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class DeviceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Device? {
		let json = readJSONFile(filename)
		let instance = Device(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDevice1() {
		let inst = instantiateFrom("device-example-f001-feedingtube.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 25062003}\">Feeding tube, device</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "25062003")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testDevice2() {
		let inst = instantiateFrom("device-example-ihe-pcd.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.identifier![0].label!, "serialNumber")	
		XCTAssertEqual(inst!.identifier![0].value!, "AMID-123-456")	
		XCTAssertEqual(inst!.lotNumber!, "12345")	
		XCTAssertEqual(inst!.manufacturer!, "Acme Devices, Inc")	
		XCTAssertEqual(inst!.model!, "A.1.1")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Acme Patient Monitor</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.text!, "Vital Signs Monitor")
	}
}
