//
//  CoverageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CoverageTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Coverage {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Coverage {
		let instance = Coverage(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCoverage1() {
		let instance = try? runCoverage1()
		XCTAssertNotNil(instance, "Must instantiate Coverage")
		try! runCoverage1(instance!.asJSON())
	}
	
	func runCoverage1(json: FHIRJSON? = nil) throws -> Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-2.json")
		
		XCTAssertEqual(inst.dependent!, UInt(1))
		XCTAssertEqual(inst.id!, "7546D")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://xyz.com/codes/identifier")
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
		XCTAssertEqual(inst.type!.system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage2() {
		let instance = try? runCoverage2()
		XCTAssertNotNil(instance, "Must instantiate Coverage")
		try! runCoverage2(instance!.asJSON())
	}
	
	func runCoverage2(json: FHIRJSON? = nil) throws -> Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example.json")
		
		XCTAssertEqual(inst.dependent!, UInt(1))
		XCTAssertEqual(inst.id!, "9876B1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://benefitsinc.com/certificate")
		XCTAssertEqual(inst.identifier![0].value!, "12345")
		XCTAssertEqual(inst.issuer!.reference!, "Organization/2")
		XCTAssertEqual(inst.period!.end!.description, "2012-05-23")
		XCTAssertEqual(inst.period!.start!.description, "2011-05-23")
		XCTAssertEqual(inst.plan!, "CBI35")
		XCTAssertEqual(inst.sequence!, UInt(1))
		XCTAssertEqual(inst.subPlan!, "123")
		XCTAssertEqual(inst.subscriber!.reference!, "Patient/4")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.code!, "EHCPOL")
		XCTAssertEqual(inst.type!.display!, "extended healthcare")
		XCTAssertEqual(inst.type!.system!.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
}
