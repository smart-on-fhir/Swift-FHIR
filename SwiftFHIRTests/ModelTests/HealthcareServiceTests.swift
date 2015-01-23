//
//  HealthcareServiceTests.swift
//  HealthcareServiceTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class HealthcareServiceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> HealthcareService {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> HealthcareService {
		let instance = HealthcareService(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testHealthcareService1() {
		let instance = testHealthcareService1_impl()
		testHealthcareService1_impl(json: instance.asJSON())
	}
	
	func testHealthcareService1_impl(json: JSONDictionary? = nil) -> HealthcareService {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "healthcareservice-example.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.serviceName!, "healthcare service")
		
		return inst
	}
	
	func testHealthcareService2() {
		let instance = testHealthcareService2_impl()
		testHealthcareService2_impl(json: instance.asJSON())
	}
	
	func testHealthcareService2_impl(json: JSONDictionary? = nil) -> HealthcareService {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "healthcareservice-example.canonical.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.serviceName!, "healthcare service")
		
		return inst
	}
	
	func testHealthcareService3() {
		let instance = testHealthcareService3_impl()
		testHealthcareService3_impl(json: instance.asJSON())
	}
	
	func testHealthcareService3_impl(json: JSONDictionary? = nil) -> HealthcareService {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "healthcareservice-example.json")
		
		XCTAssertEqual(inst.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.location!.reference!, "Location/1")
		XCTAssertEqual(inst.serviceName!, "healthcare service")
		
		return inst
	}
}
