//
//  AccountTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-08.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AccountTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Account {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Account {
		return try SwiftFHIR.Account(json: json)
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
	func runAccount1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Account {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example.json")
		
		XCTAssertEqual(inst.active?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.active?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.balance?.code, "USD")
		XCTAssertEqual(inst.balance?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.balance?.unit, "USD")
		XCTAssertEqual(inst.balance?.value, "-1200")
		XCTAssertEqual(inst.coverage?[0].reference, "Coverage/9876B1")
		XCTAssertEqual(inst.coveragePeriod?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.coveragePeriod?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.currency?.code, "USD")
		XCTAssertEqual(inst.currency?.display, "US Dollar")
		XCTAssertEqual(inst.currency?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.description_fhir, "Hospital charges")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].value, "654321")
		XCTAssertEqual(inst.name, "HACC Funded Billing for Peter James Chalmers")
		XCTAssertEqual(inst.owner?.reference, "Organization/hl7")
		XCTAssertEqual(inst.status, AccountStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">HACC Funded Billing for Peter James Chalmers</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.text, "patient")
		
		return inst
	}
}
