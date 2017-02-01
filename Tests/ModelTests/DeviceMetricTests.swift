//
//  DeviceMetricTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDeviceMetric = Models.DeviceMetric
#else
import SwiftFHIR
typealias SwiftFHIRDeviceMetric = SwiftFHIR.DeviceMetric
#endif


class DeviceMetricTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDeviceMetric {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDeviceMetric {
		return try SwiftFHIRDeviceMetric(json: json)
	}
	
	func testDeviceMetric1() {
		do {
			let instance = try runDeviceMetric1()
			try runDeviceMetric1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceMetric successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceMetric1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceMetric {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "devicemetric-example.json")
		
		XCTAssertEqual(inst.category, DeviceMetricCategory(rawValue: "measurement")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst.identifier?.value, "345675")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "150456")
		XCTAssertEqual(inst.type?.coding?[0].display, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "https://rtmms.nist.gov")
		XCTAssertEqual(inst.unit?.coding?[0].code, "262688")
		XCTAssertEqual(inst.unit?.coding?[0].display, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst.unit?.coding?[0].system?.absoluteString, "https://rtmms.nist.gov")
		
		return inst
	}
}
