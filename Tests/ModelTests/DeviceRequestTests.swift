//
//  DeviceRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDeviceRequest = Models.DeviceRequest
#else
import SwiftFHIR
typealias SwiftFHIRDeviceRequest = SwiftFHIR.DeviceRequest
#endif


class DeviceRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDeviceRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDeviceRequest {
		return try SwiftFHIRDeviceRequest(json: json)
	}
	
	func testDeviceRequest1() {
		do {
			let instance = try runDeviceRequest1()
			try runDeviceRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "devicerequest-example-insulinpump.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.basedOn?[0].display, "Homecare - DM follow-up")
		XCTAssertEqual(inst.codeCodeableConcept?.coding?[0].code, "43148-6")
		XCTAssertEqual(inst.codeCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.codeCodeableConcept?.text, "Insulin delivery device panel")
		XCTAssertEqual(inst.context?.display, "Encounter 1")
		XCTAssertEqual(inst.definition?[0].display, "DM ambulatory protocol II")
		XCTAssertEqual(inst.groupIdentifier?.value, "ip_request1")
		XCTAssertEqual(inst.id, "insulinpump")
		XCTAssertEqual(inst.identifier?[0].value, "ip_request1.1")
		XCTAssertEqual(inst.intent?.text, "instance-order")
		XCTAssertEqual(inst.note?[0].text, "this is the right device brand and model")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.performer?.display, "Nurse Rossignol")
		XCTAssertEqual(inst.performerType?.coding?[0].display, "Qualified nurse")
		XCTAssertEqual(inst.performerType?.text, "Nurse")
		XCTAssertEqual(inst.priorRequest?[0].display, "CGM ambulatory")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?[0].text, "gastroparesis")
		XCTAssertEqual(inst.reasonReference?[0].display, "Gastroparesis")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Request for unspecified device")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.supportingInfo?[0].display, "Previous results")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDeviceRequest2() {
		do {
			let instance = try runDeviceRequest2()
			try runDeviceRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DeviceRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDeviceRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDeviceRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "devicerequest-example.json")
		
		XCTAssertEqual(inst.codeReference?.reference, "Device/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.intent?.coding?[0].code, "original-order")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
