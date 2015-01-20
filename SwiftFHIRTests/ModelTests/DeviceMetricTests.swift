//
//  DeviceMetricTests.swift
//  DeviceMetricTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceMetricTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DeviceMetric? {
		let json = readJSONFile(filename)
		let instance = DeviceMetric(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceMetric1() {
		let inst = instantiateFrom("devicemetric-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceMetric instance")
		
		XCTAssertEqual(inst!.category!, "measurement")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst!.identifier!.value!, "345675")
		XCTAssertEqual(inst!.type!.coding![0].code!, "150456")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
		XCTAssertEqual(inst!.unit!.coding![0].code!, "262688")
		XCTAssertEqual(inst!.unit!.coding![0].display!, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst!.unit!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
	}
	
	func testDeviceMetric2() {
		let inst = instantiateFrom("devicemetric-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceMetric instance")
		
		XCTAssertEqual(inst!.category!, "measurement")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst!.identifier!.value!, "345675")
		XCTAssertEqual(inst!.type!.coding![0].code!, "150456")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
		XCTAssertEqual(inst!.unit!.coding![0].code!, "262688")
		XCTAssertEqual(inst!.unit!.coding![0].display!, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst!.unit!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
	}
	
	func testDeviceMetric3() {
		let inst = instantiateFrom("devicemetric-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceMetric instance")
		
		XCTAssertEqual(inst!.category!, "measurement")
		XCTAssertEqual(inst!.identifier!.system!.absoluteString!, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst!.identifier!.value!, "345675")
		XCTAssertEqual(inst!.type!.coding![0].code!, "150456")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
		XCTAssertEqual(inst!.unit!.coding![0].code!, "262688")
		XCTAssertEqual(inst!.unit!.coding![0].display!, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst!.unit!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
	}
}
