//
//  DeviceTests.swift
//  DeviceTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

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
		let inst = instantiateFrom("device-example-f001-feedingtube.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.type!.coding![0].code!, "25062003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testDevice2() {
		let inst = instantiateFrom("device-example-f001-feedingtube.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.type!.coding![0].code!, "25062003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testDevice3() {
		let inst = instantiateFrom("device-example-f001-feedingtube.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.type!.coding![0].code!, "25062003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testDevice4() {
		let inst = instantiateFrom("device-example-ihe-pcd.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.identifier![0].label!, "serialNumber")
		XCTAssertEqual(inst!.identifier![0].value!, "AMID-123-456")
		XCTAssertEqual(inst!.lotNumber!, "12345")
		XCTAssertEqual(inst!.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst!.model!, "A.1.1")
		XCTAssertEqual(inst!.type!.text!, "Vital Signs Monitor")
	}
	
	func testDevice5() {
		let inst = instantiateFrom("device-example-ihe-pcd.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.identifier![0].label!, "serialNumber")
		XCTAssertEqual(inst!.identifier![0].value!, "AMID-123-456")
		XCTAssertEqual(inst!.lotNumber!, "12345")
		XCTAssertEqual(inst!.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst!.model!, "A.1.1")
		XCTAssertEqual(inst!.type!.text!, "Vital Signs Monitor")
	}
	
	func testDevice6() {
		let inst = instantiateFrom("device-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.contact![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].value!, "ext 4352")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst!.identifier![0].value!, "345675")
		XCTAssertEqual(inst!.identifier![1].label!, "Serial Number")
		XCTAssertEqual(inst!.identifier![1].value!, "AMID-342135-8464")
		XCTAssertEqual(inst!.lotNumber!, "43453424")
		XCTAssertEqual(inst!.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst!.model!, "AB 45-J")
		XCTAssertEqual(inst!.type!.coding![0].code!, "86184003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Electrocardiographic monitor and recorder")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.text!, "ECG")
	}
	
	func testDevice7() {
		let inst = instantiateFrom("device-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Device instance")
		
		XCTAssertEqual(inst!.contact![0].system!, "phone")
		XCTAssertEqual(inst!.contact![0].value!, "ext 4352")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst!.identifier![0].value!, "345675")
		XCTAssertEqual(inst!.identifier![1].label!, "Serial Number")
		XCTAssertEqual(inst!.identifier![1].value!, "AMID-342135-8464")
		XCTAssertEqual(inst!.lotNumber!, "43453424")
		XCTAssertEqual(inst!.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst!.model!, "AB 45-J")
		XCTAssertEqual(inst!.type!.coding![0].code!, "86184003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Electrocardiographic monitor and recorder")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.text!, "ECG")
	}
}
