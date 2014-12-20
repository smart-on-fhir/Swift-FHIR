//
//  HealthcareServiceTests.swift
//  HealthcareServiceTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class HealthcareServiceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> HealthcareService? {
		let json = readJSONFile(filename)
		let instance = HealthcareService(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testHealthcareService1() {
		let inst = instantiateFrom("healthcareservice-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a HealthcareService instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.serviceName!, "healthcare service")
	}
	
	func testHealthcareService2() {
		let inst = instantiateFrom("healthcareservice-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a HealthcareService instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.serviceName!, "healthcare service")
	}
	
	func testHealthcareService3() {
		let inst = instantiateFrom("healthcareservice-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a HealthcareService instance")
	
		XCTAssertEqual(inst!.comment!, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst!.location!.reference!, "Location/1")
		XCTAssertEqual(inst!.serviceName!, "healthcare service")
	}
}
