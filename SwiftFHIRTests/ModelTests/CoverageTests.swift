//
//  CoverageTests.swift
//  CoverageTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CoverageTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Coverage? {
		let json = readJSONFile(filename)
		let instance = Coverage(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCoverage1() {
		let inst = instantiateFrom("coverage-example-2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Coverage instance")
	
		XCTAssertEqual(inst!.dependent!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://xyz.com/codes/identifier")!)
		XCTAssertEqual(inst!.identifier![0].value!, "AB9876")
		XCTAssertEqual(inst!.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2012-03-17")!)
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-03-17")!)
		XCTAssertEqual(inst!.plan!, "11024")
		XCTAssertEqual(inst!.subplan!, "D15C9")
		XCTAssertEqual(inst!.subscriber!.reference!, "Patient/5")
		XCTAssertEqual(inst!.type!.code!, "EHCPOL")
		XCTAssertEqual(inst!.type!.display!, "extended healthcare")
		XCTAssertEqual(inst!.type!.system!, NSURL(string: "http://hl7.org/fhir/v3/ActCode")!)
	}
	
	func testCoverage2() {
		let inst = instantiateFrom("coverage-example-2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Coverage instance")
	
		XCTAssertEqual(inst!.dependent!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://xyz.com/codes/identifier")!)
		XCTAssertEqual(inst!.identifier![0].value!, "AB9876")
		XCTAssertEqual(inst!.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2012-03-17")!)
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-03-17")!)
		XCTAssertEqual(inst!.plan!, "11024")
		XCTAssertEqual(inst!.subplan!, "D15C9")
		XCTAssertEqual(inst!.subscriber!.reference!, "Patient/5")
		XCTAssertEqual(inst!.type!.code!, "EHCPOL")
		XCTAssertEqual(inst!.type!.display!, "extended healthcare")
		XCTAssertEqual(inst!.type!.system!, NSURL(string: "http://hl7.org/fhir/v3/ActCode")!)
	}
	
	func testCoverage3() {
		let inst = instantiateFrom("coverage-example-2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Coverage instance")
	
		XCTAssertEqual(inst!.dependent!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://xyz.com/codes/identifier")!)
		XCTAssertEqual(inst!.identifier![0].value!, "AB9876")
		XCTAssertEqual(inst!.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2012-03-17")!)
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-03-17")!)
		XCTAssertEqual(inst!.plan!, "11024")
		XCTAssertEqual(inst!.subplan!, "D15C9")
		XCTAssertEqual(inst!.subscriber!.reference!, "Patient/5")
		XCTAssertEqual(inst!.type!.code!, "EHCPOL")
		XCTAssertEqual(inst!.type!.display!, "extended healthcare")
		XCTAssertEqual(inst!.type!.system!, NSURL(string: "http://hl7.org/fhir/v3/ActCode")!)
	}
	
	func testCoverage4() {
		let inst = instantiateFrom("coverage-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Coverage instance")
	
		XCTAssertEqual(inst!.dependent!, 0)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://benefitsinc.com/certificate")!)
		XCTAssertEqual(inst!.identifier![0].value!, "12345")
		XCTAssertEqual(inst!.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2012-05-23")!)
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-05-23")!)
		XCTAssertEqual(inst!.plan!, "CBI35")
		XCTAssertEqual(inst!.sequence!, 1)
		XCTAssertEqual(inst!.subplan!, "123")
		XCTAssertEqual(inst!.subscriber!.reference!, "Patient/4")
		XCTAssertEqual(inst!.type!.code!, "EHCPOL")
		XCTAssertEqual(inst!.type!.display!, "extended healthcare")
		XCTAssertEqual(inst!.type!.system!, NSURL(string: "http://hl7.org/fhir/v3/ActCode")!)
	}
	
	func testCoverage5() {
		let inst = instantiateFrom("coverage-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Coverage instance")
	
		XCTAssertEqual(inst!.dependent!, 0)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://benefitsinc.com/certificate")!)
		XCTAssertEqual(inst!.identifier![0].value!, "12345")
		XCTAssertEqual(inst!.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst!.period!.end!, NSDate.dateFromISOString("2012-05-23")!)
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-05-23")!)
		XCTAssertEqual(inst!.plan!, "CBI35")
		XCTAssertEqual(inst!.sequence!, 1)
		XCTAssertEqual(inst!.subplan!, "123")
		XCTAssertEqual(inst!.subscriber!.reference!, "Patient/4")
		XCTAssertEqual(inst!.type!.code!, "EHCPOL")
		XCTAssertEqual(inst!.type!.display!, "extended healthcare")
		XCTAssertEqual(inst!.type!.system!, NSURL(string: "http://hl7.org/fhir/v3/ActCode")!)
	}
}
