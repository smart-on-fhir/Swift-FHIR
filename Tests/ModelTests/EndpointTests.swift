//
//  EndpointTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREndpoint = Models.Endpoint
#else
import SwiftFHIR
typealias SwiftFHIREndpoint = SwiftFHIR.Endpoint
#endif


class EndpointTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREndpoint {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREndpoint {
		return try SwiftFHIREndpoint(json: json)
	}
	
	func testEndpoint1() {
		do {
			let instance = try runEndpoint1()
			try runEndpoint1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Endpoint successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEndpoint1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREndpoint {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example-iid.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "https://pacs.hospital.org/IHEInvokeImageDisplay")
		XCTAssertEqual(inst.connectionType?.code, "ihe-iid")
		XCTAssertEqual(inst.connectionType?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/endpoint-connection-type")
		XCTAssertEqual(inst.id, "example-iid")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "PACS Hospital Invoke Image Display endpoint")
		XCTAssertEqual(inst.payloadType?[0].text, "DICOM IID")
		XCTAssertEqual(inst.status, EndpointStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEndpoint2() {
		do {
			let instance = try runEndpoint2()
			try runEndpoint2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Endpoint successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEndpoint2(_ json: FHIRJSON? = nil) throws -> SwiftFHIREndpoint {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example-direct.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "mailto:MARTIN.SMIETANKA@directnppes.com")
		XCTAssertEqual(inst.connectionType?.code, "direct-project")
		XCTAssertEqual(inst.id, "direct-endpoint")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/299")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "MARTIN SMIETANKA")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].code, "urn:hl7-org:sdwg:ccda-structuredBody:1.1")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].system?.absoluteString, "urn:oid:1.3.6.1.4.1.19376.1.2.3")
		XCTAssertEqual(inst.status, EndpointStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEndpoint3() {
		do {
			let instance = try runEndpoint3()
			try runEndpoint3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Endpoint successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEndpoint3(_ json: FHIRJSON? = nil) throws -> SwiftFHIREndpoint {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example-wadors.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "https://pacs.hospital.org/wado-rs")
		XCTAssertEqual(inst.connectionType?.code, "dicom-wado-rs")
		XCTAssertEqual(inst.connectionType?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/endpoint-connection-type")
		XCTAssertEqual(inst.id, "example-wadors")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "PACS Hospital DICOM WADO-RS endpoint")
		XCTAssertEqual(inst.payloadMimeType?[0], "application/dicom")
		XCTAssertEqual(inst.payloadType?[0].text, "DICOM WADO-RS")
		XCTAssertEqual(inst.status, EndpointStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testEndpoint4() {
		do {
			let instance = try runEndpoint4()
			try runEndpoint4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Endpoint successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEndpoint4(_ json: FHIRJSON? = nil) throws -> SwiftFHIREndpoint {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "http://fhir3.healthintersections.com.au/open/CarePlan")
		XCTAssertEqual(inst.connectionType?.code, "hl7-fhir-rest")
		XCTAssertEqual(inst.connectionType?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/endpoint-connection-type")
		XCTAssertEqual(inst.contact?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].value, "endpointmanager@example.org")
		XCTAssertEqual(inst.header?[0], "bearer-code BASGS534s4")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/enpoint-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "epcp12")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "Health Intersections CarePlan Hub")
		XCTAssertEqual(inst.payloadMimeType?[0], "application/fhir+xml")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].code, "CarePlan")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.status, EndpointStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
