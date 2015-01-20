//
//  SubscriptionTests.swift
//  SubscriptionTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SubscriptionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Subscription? {
		let json = readJSONFile(filename)
		let instance = Subscription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubscription1() {
		let inst = instantiateFrom("subscription-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Subscription instance")
		
		XCTAssertEqual(inst!.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst!.channel!.payload!, "application/json")
		XCTAssertEqual(inst!.channel!.type!, "rest-hook")
		XCTAssertEqual(inst!.channel!.url!.absoluteString!, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst!.criteria!, "/Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst!.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst!.status!, "requested")
	}
	
	func testSubscription2() {
		let inst = instantiateFrom("subscription-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Subscription instance")
		
		XCTAssertEqual(inst!.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst!.channel!.payload!, "application/json")
		XCTAssertEqual(inst!.channel!.type!, "rest-hook")
		XCTAssertEqual(inst!.channel!.url!.absoluteString!, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst!.criteria!, "/Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst!.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst!.status!, "requested")
	}
	
	func testSubscription3() {
		let inst = instantiateFrom("subscription-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Subscription instance")
		
		XCTAssertEqual(inst!.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst!.channel!.payload!, "application/json")
		XCTAssertEqual(inst!.channel!.type!, "rest-hook")
		XCTAssertEqual(inst!.channel!.url!.absoluteString!, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst!.criteria!, "/Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst!.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst!.status!, "requested")
	}
}
