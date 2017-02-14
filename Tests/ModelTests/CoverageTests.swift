//
//  CoverageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCoverage = Models.Coverage
#else
import SwiftFHIR
typealias SwiftFHIRCoverage = SwiftFHIR.Coverage
#endif


class CoverageTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCoverage {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCoverage {
		return try SwiftFHIRCoverage(json: json)
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
	func runCoverage1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example-2.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.contract?[0].reference, "Contract/563818")
		XCTAssertEqual(inst.dependent, "1")
		XCTAssertEqual(inst.grouping?.group, "WESTAIR")
		XCTAssertEqual(inst.grouping?.groupDisplay, "Western Airlines")
		XCTAssertEqual(inst.grouping?.plan, "WESTAIR")
		XCTAssertEqual(inst.grouping?.planDisplay, "Western Airlines")
		XCTAssertEqual(inst.grouping?.subPlan, "D15C9")
		XCTAssertEqual(inst.grouping?.subPlanDisplay, "Platinum")
		XCTAssertEqual(inst.id, "7546D")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://xyz.com/codes/identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB98761")
		XCTAssertEqual(inst.network, "5")
		XCTAssertEqual(inst.order, 2)
		XCTAssertEqual(inst.payor?[0].reference, "Organization/2")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-17")
		XCTAssertEqual(inst.period?.start?.description, "2011-03-17")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subscriber?.reference, "Patient/5")
		XCTAssertEqual(inst.subscriberId, "AB9876")
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
	func runCoverage2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverage {
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
	func runCoverage3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverage {
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
	func runCoverage4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCoverage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "coverage-example.json")
		
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/4")
		XCTAssertEqual(inst.dependent, "0")
		XCTAssertEqual(inst.grouping?.`class`, "SILVER")
		XCTAssertEqual(inst.grouping?.classDisplay, "Silver: Family Plan spouse only")
		XCTAssertEqual(inst.grouping?.group, "CBI35")
		XCTAssertEqual(inst.grouping?.groupDisplay, "Corporate Baker's Inc. Local #35")
		XCTAssertEqual(inst.grouping?.plan, "B37FC")
		XCTAssertEqual(inst.grouping?.planDisplay, "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC")
		XCTAssertEqual(inst.grouping?.subClass, "Tier2")
		XCTAssertEqual(inst.grouping?.subClassDisplay, "Low deductable, max $20 copay")
		XCTAssertEqual(inst.grouping?.subGroup, "123")
		XCTAssertEqual(inst.grouping?.subGroupDisplay, "Trainee Part-time Benefits")
		XCTAssertEqual(inst.grouping?.subPlan, "P7")
		XCTAssertEqual(inst.grouping?.subPlanDisplay, "Includes afterlife benefits")
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
