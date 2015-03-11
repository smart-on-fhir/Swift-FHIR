//
//  DeviceMetricTests.swift
//  DeviceMetricTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DeviceMetricTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DeviceMetric {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DeviceMetric {
		let instance = DeviceMetric(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceMetric1() {
		let instance = testDeviceMetric1_impl()
		testDeviceMetric1_impl(json: instance.asJSON())
	}
	
	func testDeviceMetric1_impl(json: JSONDictionary? = nil) -> DeviceMetric {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "devicemetric-example.json")
		
		XCTAssertEqual(inst.category!, "measurement")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst.identifier!.value!, "345675")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "150456")
		XCTAssertEqual(inst.type!.coding![0].display!, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.unit!.coding![0].code!, "262688")
		XCTAssertEqual(inst.unit!.coding![0].display!, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst.unit!.coding![0].system!.absoluteString!, "https://rtmms.nist.gov")
		
		return inst
	}
}
