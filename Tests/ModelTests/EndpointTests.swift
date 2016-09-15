//
//  EndpointTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EndpointTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Endpoint {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Endpoint {
		let instance = SwiftFHIR.Endpoint(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEndpoint1() {
		do {
			let instance = try runEndpoint1()
			try runEndpoint1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Endpoint successfully, but threw")
		}
	}
	
	@discardableResult
	func runEndpoint1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Endpoint {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-example.json")
		
		XCTAssertEqual(inst.address?.absoluteString, "http://fhir3.healthintersections.com.au/open/CarePlan")
		XCTAssertEqual(inst.connectionType?.code, "rest-hook")
		XCTAssertEqual(inst.connectionType?.system?.absoluteString, "http://hl7.org/fhir/ValueSet/subscription-channel-type")
		XCTAssertEqual(inst.contact?[0].system, "email")
		XCTAssertEqual(inst.contact?[0].use, "work")
		XCTAssertEqual(inst.contact?[0].value, "endpointmanager@example.org")
		XCTAssertEqual(inst.header?[0], "bearer-code BASGS534s4")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/enpoint-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "epcp12")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.method?[0].code, "PUT")
		XCTAssertEqual(inst.method?[0].system?.absoluteString, "http://hl7.org/fhir/ValueSet/http-verb")
		XCTAssertEqual(inst.name, "Health Intersections CarePlan Hub")
		XCTAssertEqual(inst.payloadFormat, "application/fhir+xml")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].code, "CarePlan")
		XCTAssertEqual(inst.payloadType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
