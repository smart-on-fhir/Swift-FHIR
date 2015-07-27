//
//  CommunicationRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CommunicationRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> CommunicationRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> CommunicationRequest {
		let instance = CommunicationRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunicationRequest1() throws {
		let instance = try testCommunicationRequest1_impl()
		try testCommunicationRequest1_impl(instance.asJSON())
	}
	
	func testCommunicationRequest1_impl(json: FHIRJSON? = nil) throws -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCommunicationRequest2() throws {
		let instance = try testCommunicationRequest2_impl()
		try testCommunicationRequest2_impl(instance.asJSON())
	}
	
	func testCommunicationRequest2_impl(json: FHIRJSON? = nil) throws -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-qicore-example.json")
		
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/communicationrequest-orderedBy")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/communicationrequest-reasonRejected")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].code!, "NON-AVAIL")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].display!, "patient not-available")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
