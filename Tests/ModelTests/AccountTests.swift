//
//  AccountTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRAccount = Models.Account
#else
import SwiftFHIR
typealias SwiftFHIRAccount = SwiftFHIR.Account
#endif


class AccountTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRAccount {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRAccount {
		return try SwiftFHIRAccount(json: json)
	}
	
	func testAccount1() {
		do {
			let instance = try runAccount1()
			try runAccount1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Account successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAccount1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAccount {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example-with-guarantor.json")
		
		XCTAssertEqual(inst.active?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.active?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.balance?.code, "USD")
		XCTAssertEqual(inst.balance?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.balance?.unit, "USD")
		XCTAssertEqual(inst.balance?.value, "-1200")
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.coverage?[0].priority, 1)
		XCTAssertEqual(inst.coverage?[1].coverage?.reference, "Coverage/7546D")
		XCTAssertEqual(inst.coverage?[1].priority, 2)
		XCTAssertEqual(inst.description_fhir, "Hospital charges")
		XCTAssertEqual(inst.guarantor?[0].onHold, false)
		XCTAssertEqual(inst.guarantor?[0].party?.display, "Bénédicte du Marché")
		XCTAssertEqual(inst.guarantor?[0].party?.reference, "RelatedPerson/benedicte")
		XCTAssertEqual(inst.guarantor?[0].period?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.id, "ewg")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].value, "654321")
		XCTAssertEqual(inst.name, "Inpatient: Peter James Chalmers")
		XCTAssertEqual(inst.owner?.display, "Burgers University Medical Center")
		XCTAssertEqual(inst.owner?.reference, "Organization/f001")
		XCTAssertEqual(inst.period?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.period?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.status, AccountStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Inpatient Admission for Peter James Chalmers Account</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "PBILLACCT")
		XCTAssertEqual(inst.type?.coding?[0].display, "patient billing account")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.type?.text, "patient")
		
		return inst
	}
	
	func testAccount2() {
		do {
			let instance = try runAccount2()
			try runAccount2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Account successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAccount2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAccount {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example.json")
		
		XCTAssertEqual(inst.active?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.active?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.balance?.code, "USD")
		XCTAssertEqual(inst.balance?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.balance?.unit, "USD")
		XCTAssertEqual(inst.balance?.value, "-1200")
		XCTAssertEqual(inst.coverage?[0].coverage?.reference, "Coverage/7546D")
		XCTAssertEqual(inst.coverage?[0].priority, 1)
		XCTAssertEqual(inst.description_fhir, "Hospital charges")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].value, "654321")
		XCTAssertEqual(inst.name, "HACC Funded Billing for Peter James Chalmers")
		XCTAssertEqual(inst.owner?.reference, "Organization/hl7")
		XCTAssertEqual(inst.period?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.period?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.status, AccountStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">HACC Funded Billing for Peter James Chalmers</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "PBILLACCT")
		XCTAssertEqual(inst.type?.coding?[0].display, "patient billing account")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.type?.text, "patient")
		
		return inst
	}
}
