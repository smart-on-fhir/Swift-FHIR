//
//  InvoiceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRInvoice = Models.Invoice
#else
import SwiftFHIR
typealias SwiftFHIRInvoice = SwiftFHIR.Invoice
#endif


class InvoiceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRInvoice {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRInvoice {
		return try SwiftFHIRInvoice(json: json)
	}
	
	func testInvoice1() {
		do {
			let instance = try runInvoice1()
			try runInvoice1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Invoice successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runInvoice1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRInvoice {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "invoice-example.json")
		
		XCTAssertEqual(inst.account?.reference, "Account/example")
		XCTAssertEqual(inst.date?.description, "2017-01-25T08:00:00+01:00")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://myHospital.org/Invoices")
		XCTAssertEqual(inst.identifier?[0].value, "654321")
		XCTAssertEqual(inst.issuer?.identifier?.system?.absoluteString, "http://myhospital/NamingSystem/departments")
		XCTAssertEqual(inst.issuer?.identifier?.value, "CARD_INTERMEDIATE_CARE")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].code, "17561000")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].display, "Cardiologist")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status, InvoiceStatus(rawValue: "issued")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example of Invoice</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.totalGross?.currency, "EUR")
		XCTAssertEqual(inst.totalGross?.value, "48")
		XCTAssertEqual(inst.totalNet?.currency, "EUR")
		XCTAssertEqual(inst.totalNet?.value, "40")
		
		return inst
	}
}
