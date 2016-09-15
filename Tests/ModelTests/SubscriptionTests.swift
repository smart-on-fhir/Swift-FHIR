//
//  SubscriptionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SubscriptionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Subscription {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Subscription {
		let instance = SwiftFHIR.Subscription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubscription1() {
		do {
			let instance = try runSubscription1()
			try runSubscription1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Subscription successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubscription1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Subscription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "subscription-example-error.json")
		
		XCTAssertEqual(inst.channel?.endpoint?.absoluteString, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst.channel?.header, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst.channel?.payload, "application/json")
		XCTAssertEqual(inst.channel?.type, "rest-hook")
		XCTAssertEqual(inst.contact?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].value, "ext 4123")
		XCTAssertEqual(inst.criteria, "Observation?code=http://loinc.org|1975-2")
		XCTAssertEqual(inst.end?.description, "2021-01-01T00:00:00Z")
		XCTAssertEqual(inst.error, "Socket Error 10060 - can't connect to host")
		XCTAssertEqual(inst.id, "example-error")
		XCTAssertEqual(inst.reason, "Monitor new neonatal function")
		XCTAssertEqual(inst.status, "error")
		XCTAssertEqual(inst.tag?[0].code, "bili-done")
		XCTAssertEqual(inst.tag?[0].system?.absoluteString, "http://example.org/fhir/cs/internal")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubscription2() {
		do {
			let instance = try runSubscription2()
			try runSubscription2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Subscription successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubscription2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Subscription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "subscription-example.json")
		
		XCTAssertEqual(inst.channel?.endpoint?.absoluteString, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst.channel?.header, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst.channel?.payload, "application/json")
		XCTAssertEqual(inst.channel?.type, "rest-hook")
		XCTAssertEqual(inst.contact?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].value, "ext 4123")
		XCTAssertEqual(inst.criteria, "Observation?code=http://loinc.org|1975-2")
		XCTAssertEqual(inst.end?.description, "2021-01-01T00:00:00Z")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.reason, "Monitor new neonatal function")
		XCTAssertEqual(inst.status, "requested")
		XCTAssertEqual(inst.tag?[0].code, "bili-done")
		XCTAssertEqual(inst.tag?[0].system?.absoluteString, "http://example.org/fhir/cs/internal")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
