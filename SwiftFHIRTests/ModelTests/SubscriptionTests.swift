//
//  SubscriptionTests.swift
//  SubscriptionTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SubscriptionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Subscription {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Subscription {
		let instance = Subscription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubscription1() {
		let instance = testSubscription1_impl()
		testSubscription1_impl(json: instance.asJSON())
	}
	
	func testSubscription1_impl(json: JSONDictionary? = nil) -> Subscription {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "subscription-example.json")
		
		XCTAssertEqual(inst.channel!.header!, "Authorization: Bearer secret-token-abc-123")
		XCTAssertEqual(inst.channel!.payload!, "application/json")
		XCTAssertEqual(inst.channel!.type!, "rest-hook")
		XCTAssertEqual(inst.channel!.url!.absoluteString!, "https://biliwatch.com/customers/mount-auburn-miu/on-result")
		XCTAssertEqual(inst.criteria!, "/Observation?name=http://loinc.org|1975-2")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.reason!, "Monitor new neonatal function")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
