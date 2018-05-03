//
//  DeviceComponentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDeviceComponent = Models.DeviceComponent
#else
import SwiftFHIR
typealias SwiftFHIRDeviceComponent = SwiftFHIR.DeviceComponent
#endif


class DeviceComponentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDeviceComponent {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDeviceComponent {
		return try SwiftFHIRDeviceComponent(json: json)
	}
	
	func testDeviceComponent1() {
		do {
			let instance = try runDeviceComponent1()
			try runDeviceComponent1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceComponent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceComponent1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceComponent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "devicecomponent-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "0")
		XCTAssertEqual(inst.languageCode?.coding?[0].code, "en-US")
		XCTAssertEqual(inst.languageCode?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.lastSystemChange?.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.measurementPrinciple, MeasmntPrinciple(rawValue: "optical")!)
		XCTAssertEqual(inst.operationalStatus?[0].coding?[0].code, "off")
		XCTAssertEqual(inst.operationalStatus?[0].coding?[0].display, "Off")
		XCTAssertEqual(inst.operationalStatus?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		XCTAssertEqual(inst.parameterGroup?.coding?[0].code, "miscellaneous")
		XCTAssertEqual(inst.parameterGroup?.coding?[0].display, "Miscellaneous Parameter Group")
		XCTAssertEqual(inst.parameterGroup?.coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		XCTAssertEqual(inst.parent?.reference, "DeviceComponent/dc1")
		XCTAssertEqual(inst.source?.reference, "Device/d1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "2000")
		XCTAssertEqual(inst.type?.coding?[0].display, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		
		return inst
	}
	
	func testDeviceComponent2() {
		do {
			let instance = try runDeviceComponent2()
			try runDeviceComponent2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceComponent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceComponent2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceComponent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "devicecomponent-example-prodspec.json")
		
		XCTAssertEqual(inst.id, "example-prodspec")
		XCTAssertEqual(inst.identifier?[0].value, "789123")
		XCTAssertEqual(inst.languageCode?.coding?[0].code, "en-US")
		XCTAssertEqual(inst.languageCode?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.lastSystemChange?.description, "2014-10-07T14:45:00Z")
		XCTAssertEqual(inst.operationalStatus?[0].coding?[0].code, "off")
		XCTAssertEqual(inst.operationalStatus?[0].coding?[0].display, "Off")
		XCTAssertEqual(inst.productionSpecification?[0].productionSpec, "xa-12324-b")
		XCTAssertEqual(inst.productionSpecification?[0].specType?.coding?[0].code, "serial-number")
		XCTAssertEqual(inst.productionSpecification?[0].specType?.coding?[0].display, "Serial number")
		XCTAssertEqual(inst.productionSpecification?[1].productionSpec, "1.1")
		XCTAssertEqual(inst.productionSpecification?[1].specType?.coding?[0].code, "hardware-revision")
		XCTAssertEqual(inst.productionSpecification?[1].specType?.coding?[0].display, "Hardware Revision")
		XCTAssertEqual(inst.productionSpecification?[2].productionSpec, "1.12")
		XCTAssertEqual(inst.productionSpecification?[2].specType?.coding?[0].code, "software-revision")
		XCTAssertEqual(inst.productionSpecification?[2].specType?.coding?[0].display, "Software Revision")
		XCTAssertEqual(inst.productionSpecification?[3].productionSpec, "1.0.23")
		XCTAssertEqual(inst.productionSpecification?[3].specType?.coding?[0].code, "firmware-revision")
		XCTAssertEqual(inst.productionSpecification?[3].specType?.coding?[0].display, "Firmware Revision")
		XCTAssertEqual(inst.source?.reference, "Device/d1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "2000")
		XCTAssertEqual(inst.type?.coding?[0].display, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "urn:iso:std:iso:11073:10101")
		
		return inst
	}
}
