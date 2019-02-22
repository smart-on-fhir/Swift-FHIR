//
//  DeviceMetricTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.calibration?[0].state, DeviceMetricCalibrationState(rawValue: "calibrated")!)
		XCTAssertEqual(inst.calibration?[0].time?.description, "2016-12-28T09:03:04-05:00")
		XCTAssertEqual(inst.calibration?[0].type, DeviceMetricCalibrationType(rawValue: "two-point")!)
		XCTAssertEqual(inst.category, DeviceMetricCategory(rawValue: "measurement")!)
		XCTAssertEqual(inst.color, DeviceMetricColor(rawValue: "blue")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodcare.org/devicemetric/id")
		XCTAssertEqual(inst.identifier?[0].value, "345675")
		XCTAssertEqual(inst.measurementPeriod?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.measurementPeriod?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.measurementPeriod?.repeat_fhir?.periodUnit, "s")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.operationalStatus, DeviceMetricOperationalStatus(rawValue: "on")!)
		XCTAssertEqual(inst.parent?.reference, "DeviceDefinition/dc102")
		XCTAssertEqual(inst.source?.reference, "Device/dev1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "150456")
		XCTAssertEqual(inst.type?.coding?[0].display, "MDC_PULS_OXIM_SAT_O2")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		XCTAssertEqual(inst.unit?.coding?[0].code, "262688")
		XCTAssertEqual(inst.unit?.coding?[0].display, "MDC_DIM_PERCENT")
		XCTAssertEqual(inst.unit?.coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		
		return inst
	}
}
