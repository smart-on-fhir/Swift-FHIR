//
//  DeviceComponentTests.swift
//  DeviceComponentTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DeviceComponentTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DeviceComponent? {
		let json = readJSONFile(filename)
		let instance = DeviceComponent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceComponent1() {
		let inst = instantiateFrom("devicecomponent-example-prodspec.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceComponent instance")
	
		XCTAssertEqual(inst!.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst!.identifier!.value!, "0")
		XCTAssertEqual(inst!.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst!.languageCode!.coding![0].system!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.lastSystemChange!, NSDate.dateFromISOString("2014-10-07T14:45:00Z")!)
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
		XCTAssertEqual(inst!.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst!.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst!.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst!.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst!.source!.reference!, "#d1")
		XCTAssertEqual(inst!.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
	}
	
	func testDeviceComponent2() {
		let inst = instantiateFrom("devicecomponent-example-prodspec.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceComponent instance")
	
		XCTAssertEqual(inst!.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst!.identifier!.value!, "0")
		XCTAssertEqual(inst!.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst!.languageCode!.coding![0].system!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.lastSystemChange!, NSDate.dateFromISOString("2014-10-07T14:45:00Z")!)
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
		XCTAssertEqual(inst!.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst!.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst!.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst!.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst!.source!.reference!, "#d1")
		XCTAssertEqual(inst!.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
	}
	
	func testDeviceComponent3() {
		let inst = instantiateFrom("devicecomponent-example-prodspec.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceComponent instance")
	
		XCTAssertEqual(inst!.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst!.identifier!.value!, "0")
		XCTAssertEqual(inst!.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst!.languageCode!.coding![0].system!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.lastSystemChange!, NSDate.dateFromISOString("2014-10-07T14:45:00Z")!)
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
		XCTAssertEqual(inst!.productionSpecification![0].productionSpec!, "xa-12324-b")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].code!, "1")
		XCTAssertEqual(inst!.productionSpecification![0].specType!.coding![0].display!, "Serial number")
		XCTAssertEqual(inst!.productionSpecification![1].productionSpec!, "1.1")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].code!, "3")
		XCTAssertEqual(inst!.productionSpecification![1].specType!.coding![0].display!, "Hardware version")
		XCTAssertEqual(inst!.productionSpecification![2].productionSpec!, "1.12")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].code!, "4")
		XCTAssertEqual(inst!.productionSpecification![2].specType!.coding![0].display!, "Software version")
		XCTAssertEqual(inst!.productionSpecification![3].productionSpec!, "1.0.23")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].code!, "5")
		XCTAssertEqual(inst!.productionSpecification![3].specType!.coding![0].display!, "Firmware version")
		XCTAssertEqual(inst!.source!.reference!, "#d1")
		XCTAssertEqual(inst!.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
	}
	
	func testDeviceComponent4() {
		let inst = instantiateFrom("devicecomponent-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceComponent instance")
	
		XCTAssertEqual(inst!.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst!.identifier!.value!, "0")
		XCTAssertEqual(inst!.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst!.languageCode!.coding![0].system!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.lastSystemChange!, NSDate.dateFromISOString("2014-10-07T14:45:00Z")!)
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
		XCTAssertEqual(inst!.source!.reference!, "#d1")
		XCTAssertEqual(inst!.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
	}
	
	func testDeviceComponent5() {
		let inst = instantiateFrom("devicecomponent-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DeviceComponent instance")
	
		XCTAssertEqual(inst!.identifier!.label!, "Handle ID")
		XCTAssertEqual(inst!.identifier!.value!, "0")
		XCTAssertEqual(inst!.languageCode!.coding![0].code!, "en-US")
		XCTAssertEqual(inst!.languageCode!.coding![0].system!, NSURL(string: "http://tools.ietf.org/html/bcp47")!)
		XCTAssertEqual(inst!.lastSystemChange!, NSDate.dateFromISOString("2014-10-07T14:45:00Z")!)
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].code!, "0")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].display!, "disconnected")
		XCTAssertEqual(inst!.operationalStatus![0].coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
		XCTAssertEqual(inst!.source!.reference!, "#d1")
		XCTAssertEqual(inst!.type!.coding![0].code!, "2000")
		XCTAssertEqual(inst!.type!.coding![0].display!, "MDC_DEV_ANALY_SAT_O2_MDS")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:std:iso:11073:10101")!)
	}
}
