//
//  SubscriptionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SubscriptionTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Subscription {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Subscription {
		let instance = Subscription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubscription1() {
		let instance = try? runSubscription1()
		XCTAssertNotNil(instance, "Must instantiate Subscription")
		try! runSubscription1(instance!.asJSON())
	}
	
	func runSubscription1(json: FHIRJSON? = nil) throws -> Subscription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "subscription-example-error.json")
		
		XCTAssertEqual(inst.channel!.endpoint!.absoluteString, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst.channel!.payload!, "application/json")
		XCTAssertEqual(inst.channel!.type!, "rest-hook")
		XCTAssertEqual(inst.contact![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].value!, "ext 4123")
		XCTAssertEqual(inst.criteria!, "Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst.end!.description, "2021-01-01T00:00:00Z")
		XCTAssertEqual(inst.error!, "Socket Error 10060 - can't connect to host")
		XCTAssertEqual(inst.id!, "example-error")
		XCTAssertEqual(inst.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst.status!, "error")
		XCTAssertEqual(inst.tag![0].code!, "bili-done")
		XCTAssertEqual(inst.tag![0].system!.absoluteString, "http://example.org/fhir/cs/internal")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testSubscription2() {
		let instance = try? runSubscription2()
		XCTAssertNotNil(instance, "Must instantiate Subscription")
		try! runSubscription2(instance!.asJSON())
	}
	
	func runSubscription2(json: FHIRJSON? = nil) throws -> Subscription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "subscription-example.json")
		
		XCTAssertEqual(inst.channel!.endpoint!.absoluteString, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst.channel!.payload!, "application/json")
		XCTAssertEqual(inst.channel!.type!, "rest-hook")
		XCTAssertEqual(inst.contact![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].value!, "ext 4123")
		XCTAssertEqual(inst.criteria!, "Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst.end!.description, "2021-01-01T00:00:00Z")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.tag![0].code!, "bili-done")
		XCTAssertEqual(inst.tag![0].system!.absoluteString, "http://example.org/fhir/cs/internal")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
