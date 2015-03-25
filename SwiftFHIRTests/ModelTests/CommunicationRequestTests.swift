//
//  CommunicationRequestTests.swift
//  CommunicationRequestTests
//
//  Generated from FHIR 0.4.0.4879 on 2015-03-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CommunicationRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CommunicationRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> CommunicationRequest {
		let instance = CommunicationRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunicationRequest1() {
		let instance = testCommunicationRequest1_impl()
		testCommunicationRequest1_impl(json: instance.asJSON())
	}
	
	func testCommunicationRequest1_impl(json: FHIRJSON? = nil) -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCommunicationRequest2() {
		let instance = testCommunicationRequest2_impl()
		testCommunicationRequest2_impl(json: instance.asJSON())
	}
	
	func testCommunicationRequest2_impl(json: FHIRJSON? = nil) -> CommunicationRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "communicationrequest-qicore-example.json")
		
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/communicationrequest-orderedBy")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/communicationrequest-reasonRejected")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].code!, "NON-AVAIL")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].display!, "patient not-available")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To be filled out at a later time</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
