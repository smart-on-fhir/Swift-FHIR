//
//  DeviceComponentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceComponentTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> DeviceComponent {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DeviceComponent {
		let instance = DeviceComponent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceComponent1() {
		let instance = try? runDeviceComponent1()
		XCTAssertNotNil(instance, "Must instantiate DeviceComponent")
		if let instance = instance {
			try! runDeviceComponent1(instance.asJSON())
		}
	}
	
	func runDeviceComponent1(json: FHIRJSON? = nil) throws -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "devicecomponent-example-prodspec.json")
		
		XCTAssertEqual(inst.id!, "example-prodspec")
		XCTAssertEqual(inst.identifier!.type!.text!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString, "urn:iso:std:iso:11073:10101")
		XCTAssertEqual(inst.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "urn:iso:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent2() {
		let instance = try? runDeviceComponent2()
		XCTAssertNotNil(instance, "Must instantiate DeviceComponent")
		if let instance = instance {
			try! runDeviceComponent2(instance.asJSON())
		}
	}
	
	func runDeviceComponent2(json: FHIRJSON? = nil) throws -> DeviceComponent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "devicecomponent-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier!.type!.text!, "Handle ID")
		XCTAssertEqual(inst.identifier!.value!, "0")
		XCTAssertEqual(inst.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst.languageCode!.coding![0].system!.absoluteString, "http://tools.ietf.org/html/bcp47")
		XCTAssertEqual(inst.lastSystemChange!.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst.operationalStatus![0].coding![0].system!.absoluteString, "urn:iso:std:iso:11073:10101")
		XCTAssertEqual(inst.source!.reference!, "#d1")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "urn:iso:std:iso:11073:10101")
		
		return inst
	}
}
