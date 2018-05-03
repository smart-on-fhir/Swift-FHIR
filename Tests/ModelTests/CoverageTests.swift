//
//  CoverageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
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
		
		XCTAssertEqual(inst.`class`?[0].name, "Western Airlines")
		XCTAssertEqual(inst.`class`?[0].type?.code, "group")
		XCTAssertEqual(inst.`class`?[0].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-class")
		XCTAssertEqual(inst.`class`?[0].value, "WESTAIR")
		XCTAssertEqual(inst.`class`?[1].name, "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC")
		XCTAssertEqual(inst.`class`?[1].type?.code, "plan")
		XCTAssertEqual(inst.`class`?[1].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-class")
		XCTAssertEqual(inst.`class`?[1].value, "BG4352")
		XCTAssertEqual(inst.`class`?[2].name, "Platinum")
		XCTAssertEqual(inst.`class`?[2].type?.code, "subplan")
		XCTAssertEqual(inst.`class`?[2].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-class")
		XCTAssertEqual(inst.`class`?[2].value, "D15C9")
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/5")
		XCTAssertEqual(inst.contract?[0].reference, "Contract/INS-101")
		XCTAssertEqual(inst.dependent, "1")
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
		
		XCTAssertEqual(inst.`class`?[0].name, "Corporate Baker's Inc. Local #35")
		XCTAssertEqual(inst.`class`?[0].type?.code, "group")
		XCTAssertEqual(inst.`class`?[0].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[0].value, "CB135")
		XCTAssertEqual(inst.`class`?[1].name, "Trainee Part-time Benefits")
		XCTAssertEqual(inst.`class`?[1].type?.code, "subgroup")
		XCTAssertEqual(inst.`class`?[1].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[1].value, "123")
		XCTAssertEqual(inst.`class`?[2].name, "Full Coverage: Medical, Dental, Pharmacy, Vision, EHC")
		XCTAssertEqual(inst.`class`?[2].type?.code, "plan")
		XCTAssertEqual(inst.`class`?[2].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[2].value, "B37FC")
		XCTAssertEqual(inst.`class`?[3].name, "Includes afterlife benefits")
		XCTAssertEqual(inst.`class`?[3].type?.code, "subplan")
		XCTAssertEqual(inst.`class`?[3].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[3].value, "P7")
		XCTAssertEqual(inst.`class`?[4].name, "Silver: Family Plan spouse only")
		XCTAssertEqual(inst.`class`?[4].type?.code, "class")
		XCTAssertEqual(inst.`class`?[4].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[4].value, "SILVER")
		XCTAssertEqual(inst.`class`?[5].name, "Low deductable, max $20 copay")
		XCTAssertEqual(inst.`class`?[5].type?.code, "subclass")
		XCTAssertEqual(inst.`class`?[5].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[5].value, "Tier2")
		XCTAssertEqual(inst.`class`?[6].type?.code, "sequence")
		XCTAssertEqual(inst.`class`?[6].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[6].value, "9")
		XCTAssertEqual(inst.`class`?[7].type?.code, "rxid")
		XCTAssertEqual(inst.`class`?[7].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[7].value, "MDF12345")
		XCTAssertEqual(inst.`class`?[8].type?.code, "rxbin")
		XCTAssertEqual(inst.`class`?[8].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[8].value, "987654")
		XCTAssertEqual(inst.`class`?[9].type?.code, "rxgroup")
		XCTAssertEqual(inst.`class`?[9].type?.system?.absoluteString, "http://hl7.org/fhir/coverage-level")
		XCTAssertEqual(inst.`class`?[9].value, "M35PT")
		XCTAssertEqual(inst.beneficiary?.reference, "Patient/4")
		XCTAssertEqual(inst.dependent, "0")
		XCTAssertEqual(inst.id, "9876B1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://benefitsinc.com/certificate")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payor?[0].reference, "Organization/2")
		XCTAssertEqual(inst.period?.end?.description, "2012-05-23")
		XCTAssertEqual(inst.period?.start?.description, "2011-05-23")
		XCTAssertEqual(inst.policyHolder?.reference, "http://benefitsinc.com/FHIR/Organization/CBI35")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "self")
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
