//
//  CoverageTests.swift
//  CoverageTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CoverageTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Coverage {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Coverage {
		let instance = Coverage(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCoverage1() {
		let instance = testCoverage1_impl()
		testCoverage1_impl(json: instance.asJSON())
	}
	
	func testCoverage1_impl(json: JSONDictionary? = nil) -> Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "coverage-example-2.json")
		
		XCTAssertEqual(inst.dependent!, 1)
		XCTAssertEqual(inst.id!, "7546D")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://xyz.com/codes/identifier")
		XCTAssertEqual(inst.identifier![0].value!, "AB9876")
		XCTAssertEqual(inst.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst.period!.end!.description, "2012-03-17")
		XCTAssertEqual(inst.period!.start!.description, "2011-03-17")
		XCTAssertEqual(inst.plan!, "11024")
		XCTAssertEqual(inst.subPlan!, "D15C9")
		XCTAssertEqual(inst.subscriber!.reference!, "Patient/5")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.code!, "EHCPOL")
		XCTAssertEqual(inst.type!.display!, "extended healthcare")
		XCTAssertEqual(inst.type!.system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage2() {
		let instance = testCoverage2_impl()
		testCoverage2_impl(json: instance.asJSON())
	}
	
	func testCoverage2_impl(json: JSONDictionary? = nil) -> Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "coverage-example.json")
		
		XCTAssertEqual(inst.dependent!, 0)
		XCTAssertEqual(inst.id!, "9876B1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://benefitsinc.com/certificate")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
		XCTAssertEqual(inst.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst.period!.end!.description, "2012-05-23")
		XCTAssertEqual(inst.period!.start!.description, "2011-05-23")
		XCTAssertEqual(inst.plan!, "CBI35")
		XCTAssertEqual(inst.sequence!, 1)
		XCTAssertEqual(inst.subPlan!, "123")
		XCTAssertEqual(inst.subscriber!.reference!, "Patient/4")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.code!, "EHCPOL")
		XCTAssertEqual(inst.type!.display!, "extended healthcare")
		XCTAssertEqual(inst.type!.system!.absoluteString!, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
}
