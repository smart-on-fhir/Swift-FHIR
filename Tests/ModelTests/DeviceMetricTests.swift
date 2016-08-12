//
//  DeviceMetricTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceMetricTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> DeviceMetric {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DeviceMetric {
		let instance = DeviceMetric(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceMetric1() {
		do {
			let instance = try runDeviceMetric1()
			try runDeviceMetric1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DeviceMetric successfully, but threw")
		}
	}
	
	func runDeviceMetric1(json: FHIRJSON? = nil) throws -> DeviceMetric {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "devicemetric-example.json")
		
		XCTAssertEqual(inst.category, "measurement")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier!.system?.absoluteString, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst.identifier!.value, "345675")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.type!.coding![0].code, "150456")
		XCTAssertEqual(inst.type!.coding![0].display, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.type!.coding![0].system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.unit!.coding![0].code, "262688")
		XCTAssertEqual(inst.unit!.coding![0].display, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst.unit!.coding![0].system?.absoluteString, "https://rtmms.nist.gov")
		
		return inst
	}
}
