//
//  AccountTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AccountTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Account {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Account {
		let instance = SwiftFHIR.Account(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAccount1() {
		do {
			let instance = try runAccount1()
			try runAccount1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Account successfully, but threw")
		}
	}
	
	@discardableResult
	func runAccount1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Account {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "account-example.json")
		
		XCTAssertEqual(inst.active?.end?.description, "2016-06-30")
		XCTAssertEqual(inst.active?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.balance?.code, "USD")
		XCTAssertEqual(inst.balance?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.balance?.unit, "USD")
		XCTAssertEqual(inst.balance?.value, NSDecimalNumber(string: "-1200"))
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
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">HACC Funded Billing for Peter James Chalmers</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.text, "patient")
		
		return inst
	}
}
