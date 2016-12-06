//
//  CoverageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CoverageTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Coverage {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Coverage {
		return try SwiftFHIR.Coverage(json: json)
	}
	
	func testCoverage1() {
		do {
			let instance = try runCoverage1()
			try runCoverage1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverage1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-2.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.dependent, "1")
		XCTAssertEqual(inst.group?.group, "WESTAIR")
		XCTAssertEqual(inst.group?.groupDisplay, "Western Airlines")
		XCTAssertEqual(inst.group?.plan, "WESTAIR")
		XCTAssertEqual(inst.group?.planDisplay, "Western Airlines")
		XCTAssertEqual(inst.group?.subPlan, "D15C9")
		XCTAssertEqual(inst.group?.subPlanDisplay, "Platinum")
		XCTAssertEqual(inst.id, "7546D")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://xyz.com/codes/identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB9876")
		XCTAssertEqual(inst.payor?[0].reference, "Organization/2")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.period?.start?.description, "2011-03-17")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subscriber?.reference, "Patient/5")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "EHCPOL")
		XCTAssertEqual(inst.type?.coding?[0].display, "extended healthcare")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage2() {
		do {
			let instance = try runCoverage2()
			try runCoverage2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverage2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-ehic.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.id, "7547E")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://ehic.com/insurer/123456789/member")
		XCTAssertEqual(inst.identifier?[0].value, "A123456780")
		XCTAssertEqual(inst.payor?[0].identifier?.system?.absoluteString, "http://ehic.com/insurer")
		XCTAssertEqual(inst.payor?[0].identifier?.value, "123456789")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subscriber?.reference, "Patient/5")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the European Health Insurance Card</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "EHCPOL")
		XCTAssertEqual(inst.type?.coding?[0].display, "extended healthcare")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
	
	func testCoverage3() {
		do {
			let instance = try runCoverage3()
			try runCoverage3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverage3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-selfpay.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.id, "SP1234")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://hospitalx.com/selfpayagreement")
		XCTAssertEqual(inst.identifier?[0].value, "SP12345678")
		XCTAssertEqual(inst.payor?[0].reference, "Patient/5")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subscriber?.reference, "Patient/5")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of a Self Pay Agreement.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "pay")
		XCTAssertEqual(inst.type?.coding?[0].display, "PAY")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/coverage-selfpay")
		
		return inst
	}
	
	func testCoverage4() {
		do {
			let instance = try runCoverage4()
			try runCoverage4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Coverage successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCoverage4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Coverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/4")
		XCTAssertEqual(inst.dependent, "0")
		XCTAssertEqual(inst.group?.`class`, "SILVER")
		XCTAssertEqual(inst.group?.classDisplay, "Silver: Family Plan spouse only")
		XCTAssertEqual(inst.group?.group, "CBI35")
		XCTAssertEqual(inst.group?.groupDisplay, "Corporate Baker's Inc. Local #35")
		XCTAssertEqual(inst.group?.plan, "B37FC")
		XCTAssertEqual(inst.group?.planDisplay, "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC")
		XCTAssertEqual(inst.group?.subClass, "Tier2")
		XCTAssertEqual(inst.group?.subClassDisplay, "Low deductable, max $20 copay")
		XCTAssertEqual(inst.group?.subGroup, "123")
		XCTAssertEqual(inst.group?.subGroupDisplay, "Trainee Part-time Benefits")
		XCTAssertEqual(inst.group?.subPlan, "P7")
		XCTAssertEqual(inst.group?.subPlanDisplay, "Includes afterlife benefits")
		XCTAssertEqual(inst.id, "9876B1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/certificate")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payor?[0].reference, "Organization/2")
		XCTAssertEqual(inst.period?.end?.description, "2012-05-23")
		XCTAssertEqual(inst.period?.start?.description, "2011-05-23")
		XCTAssertEqual(inst.policyHolder?.reference, "http://benefitsinc.com/FHIR/Organization/CBI35")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
		XCTAssertEqual(inst.sequence, "9")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subscriber?.reference, "Patient/4")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the coverage</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "EHCPOL")
		XCTAssertEqual(inst.type?.coding?[0].display, "extended healthcare")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		
		return inst
	}
}
