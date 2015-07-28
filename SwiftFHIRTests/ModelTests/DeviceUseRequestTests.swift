//
//  DeviceUseRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DeviceUseRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> DeviceUseRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DeviceUseRequest {
		let instance = DeviceUseRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDeviceUseRequest1() throws {
		let instance = try runDeviceUseRequest1()
		try runDeviceUseRequest1(instance.asJSON())
	}
	
	func runDeviceUseRequest1(json: FHIRJSON? = nil) throws -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceuserequest-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDeviceUseRequest2() throws {
		let instance = try runDeviceUseRequest2()
		try runDeviceUseRequest2(instance.asJSON())
	}
	
	func runDeviceUseRequest2(json: FHIRJSON? = nil) throws -> DeviceUseRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "deviceuserequest-qicore-example.json")
		
		XCTAssertEqual(inst.device!.reference!, "Device/example")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/deviceuserequest-reasonRejected")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
