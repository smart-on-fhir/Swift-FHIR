//
//  DeviceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Device {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Device {
		let instance = Device(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDevice1() throws {
		let instance = try runDevice1()
		try runDevice1(instance.asJSON())
	}
	
	func runDevice1(json: FHIRJSON? = nil) throws -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-f001-feedingtube.json")
		
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.status!, "available")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "25062003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Feeding tube, device")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testDevice2() throws {
		let instance = try runDevice2()
		try runDevice2(instance.asJSON())
	}
	
	func runDevice2(json: FHIRJSON? = nil) throws -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-ihe-pcd.json")
		
		XCTAssertEqual(inst.id!, "ihe-pcd")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].code!, "SNO")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Serial Number")
		XCTAssertEqual(inst.identifier![0].value!, "AMID-123-456")
		XCTAssertEqual(inst.lotNumber!, "12345")
		XCTAssertEqual(inst.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst.model!, "A.1.1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "Vital Signs Monitor")
		
		return inst
	}
	
	func testDevice3() throws {
		let instance = try runDevice3()
		try runDevice3(instance.asJSON())
	}
	
	func runDevice3(json: FHIRJSON? = nil) throws -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example-pacemaker.json")
		
		XCTAssertEqual(inst.contact![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].value!, "ext 4352")
		XCTAssertEqual(inst.id!, "example-pacemaker")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://acme.com/devices/pacemakers/octane/serial")
		XCTAssertEqual(inst.identifier![0].value!, "1234-5678-90AB-CDEF")
		XCTAssertEqual(inst.lotNumber!, "1234-5678")
		XCTAssertEqual(inst.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst.model!, "PM/Octane 2014")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "octane2014")
		XCTAssertEqual(inst.type!.coding![0].display!, "Performance pace maker for high octane patients")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://acme.com/devices")
		
		return inst
	}
	
	func testDevice4() throws {
		let instance = try runDevice4()
		try runDevice4(instance.asJSON())
	}
	
	func runDevice4(json: FHIRJSON? = nil) throws -> Device {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "device-example.json")
		
		XCTAssertEqual(inst.contact![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].value!, "ext 4352")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://goodcare.org/devices/id")
		XCTAssertEqual(inst.identifier![0].value!, "345675")
		XCTAssertEqual(inst.identifier![1].type!.coding![0].code!, "SNO")
		XCTAssertEqual(inst.identifier![1].type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier![1].type!.text!, "Serial Number")
		XCTAssertEqual(inst.identifier![1].value!, "AMID-342135-8464")
		XCTAssertEqual(inst.lotNumber!, "43453424")
		XCTAssertEqual(inst.manufacturer!, "Acme Devices, Inc")
		XCTAssertEqual(inst.model!, "AB 45-J")
		XCTAssertEqual(inst.status!, "available")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "86184003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Electrocardiographic monitor and recorder")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "ECG")
		
		return inst
	}
}
