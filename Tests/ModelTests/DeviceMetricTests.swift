//
//  DeviceMetricTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceMetricTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DeviceMetric {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.DeviceMetric {
		let instance = SwiftFHIR.DeviceMetric(json: json)
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
	
	@discardableResult
	func runDeviceMetric1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DeviceMetric {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "devicemetric-example.json")
		
		XCTAssertEqual(inst.category, "measurement")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst.identifier?.value, "345675")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "150456")
		XCTAssertEqual(inst.type?.coding?[0].display, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.unit?.coding?[0].code, "262688")
		XCTAssertEqual(inst.unit?.coding?[0].display, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst.unit?.coding?[0].system?.absoluteString, "https://rtmms.nist.gov")
		
		return inst
	}
}
