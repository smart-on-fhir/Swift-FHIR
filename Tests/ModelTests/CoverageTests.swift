//
//  CoverageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CoverageTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Coverage {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Coverage {
		let instance = SwiftFHIR.Coverage(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCoverage1() {
		do {
			let instance = try runCoverage1()
			try runCoverage1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw")
		}
	}
	
	@discardableResult
	func runCoverage1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-2.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.dependent, UInt(1))
		XCTAssertEqual(inst.id, "7546D")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://xyz.com/codes/identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB9876")
		XCTAssertEqual(inst.issuer?.reference, "Organization/2")
		XCTAssertEqual(inst.level?[0].code, "WESTAIR")
		XCTAssertEqual(inst.level?[0].display, "Western Airlines")
		XCTAssertEqual(inst.level?[0].system?.absoluteString, "http://xyz.com/codes/group")
		XCTAssertEqual(inst.level?[1].code, "11024")
		XCTAssertEqual(inst.level?[1].display, "Aircraft Maintenance Division")
		XCTAssertEqual(inst.level?[1].system?.absoluteString, "http://xyz.com/codes/plan")
		XCTAssertEqual(inst.level?[2].code, "D15C9")
		XCTAssertEqual(inst.level?[2].display, "Platinum")
		XCTAssertEqual(inst.level?[2].system?.absoluteString, "http://xyz.com/codes/subplan")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.period?.start?.description, "2011-03-17")
		XCTAssertEqual(inst.planholder?.reference, "Patient/5")
		XCTAssertEqual(inst.relationship?.code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "EHCPOL")
		XCTAssertEqual(inst.type?.display, "extended healthcare")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage2() {
		do {
			let instance = try runCoverage2()
			try runCoverage2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw")
		}
	}
	
	@discardableResult
	func runCoverage2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-ehic.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.id, "7547E")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ehic.com/insurer/123456789/member")
		XCTAssertEqual(inst.identifier?[0].value, "A123456780")
		XCTAssertEqual(inst.issuer?.identifier?.system?.absoluteString, "http://ehic.com/insurer")
		XCTAssertEqual(inst.issuer?.identifier?.value, "123456789")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.planholder?.reference, "Patient/5")
		XCTAssertEqual(inst.relationship?.code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the European Health Insurance Card</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "EHCPOL")
		XCTAssertEqual(inst.type?.display, "extended healthcare")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage3() {
		do {
			let instance = try runCoverage3()
			try runCoverage3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw")
		}
	}
	
	@discardableResult
	func runCoverage3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/4")
		XCTAssertEqual(inst.dependent, UInt(1))
		XCTAssertEqual(inst.id, "9876B1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/certificate")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.issuer?.reference, "Organization/2")
		XCTAssertEqual(inst.level?[0].code, "CBI35")
		XCTAssertEqual(inst.level?[0].display, "Corporate Baker's Inc. Plan#35")
		XCTAssertEqual(inst.level?[0].system?.absoluteString, "http://benefitsinc.com/plan")
		XCTAssertEqual(inst.level?[1].code, "123")
		XCTAssertEqual(inst.level?[1].display, "Trainee Part-time Benefits")
		XCTAssertEqual(inst.level?[1].system?.absoluteString, "http://benefitsinc.com/subplan")
		XCTAssertEqual(inst.period?.end?.description, "2012-05-23")
		XCTAssertEqual(inst.period?.start?.description, "2011-05-23")
		XCTAssertEqual(inst.planholder?.reference, "Patient/4")
		XCTAssertEqual(inst.relationship?.code, "self")
		XCTAssertEqual(inst.sequence, UInt(1))
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "EHCPOL")
		XCTAssertEqual(inst.type?.display, "extended healthcare")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
}
