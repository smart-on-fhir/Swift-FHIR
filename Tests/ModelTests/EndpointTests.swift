//
//  EndpointTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EndpointTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Endpoint {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Endpoint {
		return try SwiftFHIR.Endpoint(json: json)
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
	func runEndpoint1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Endpoint {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "http://fhir3.healthintersections.com.au/open/CarePlan")
		XCTAssertEqual(inst.connectionType?.code, "hl7-fhir-rest")
		XCTAssertEqual(inst.connectionType?.system?.absoluteString, "http://hl7.org/fhir/endpoint-connection-type")
		XCTAssertEqual(inst.contact?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].value, "endpointmanager@example.org")
		XCTAssertEqual(inst.header?[0], "bearer-code BASGS534s4")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/enpoint-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "epcp12")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
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
