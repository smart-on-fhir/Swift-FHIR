//
//  DeviceObservationReportTests.swift
//  DeviceObservationReportTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DeviceObservationReportTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DeviceObservationReport? {
		let json = readJSONFile(filename)
		let instance = DeviceObservationReport(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceObservationReport1() {
		let inst = instantiateFrom("deviceobservationreport-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceObservationReport instance")
	
		XCTAssertEqual(inst!.instant!, NSDate.dateFromISOString("2008-12-11T14:45:00")!)	
		XCTAssertEqual(inst!.source!.reference!, "#d1")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/ihe-pcd")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>example</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![0].observation!.reference!, "#o1")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![1].observation!.reference!, "#o2")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![2].observation!.reference!, "#o3")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![3].observation!.reference!, "#o4")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![4].observation!.reference!, "#o5")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![5].observation!.reference!, "#o6")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![6].observation!.reference!, "#o7")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![7].observation!.reference!, "#o8")	
		XCTAssertEqual(inst!.virtualDevice![0].channel![0].metric![8].observation!.reference!, "#o9")
	}
}
