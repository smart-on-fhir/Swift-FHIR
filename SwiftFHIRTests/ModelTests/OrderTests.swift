//
//  OrderTests.swift
//  OrderTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class OrderTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Order? {
		let json = readJSONFile(filename)
		let instance = Order(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrder1() {
		let inst = instantiateFrom("order-example-f201-physiotherapy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-03-05T12:00:00+01:00")!)	
		XCTAssertEqual(inst!.detail![0].display!, "Consultation, not yet developed")	
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")	
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/f201")	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.target!.display!, "Juri van Gelder")	
		XCTAssertEqual(inst!.target!.reference!, "Practitioner/f203")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>date</b>: 5-Mar 2013 12:0\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>source</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>target</b>: Juri van Gelder\n      </p>\n      <p>\n        <b>reason[x]</b>: \n        <span title=\"Codes: \">It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.</span>\n      </p>\n      <h3>Whens</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Schedule</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 394848005}\">Normal priority</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>detail</b>: Consultation, not yet developed\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "394848005")	
		XCTAssertEqual(inst!.when!.code!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testOrder2() {
		let inst = instantiateFrom("order-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Order instance")
	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2012-12-28T09:03:04+11:00")!)	
		XCTAssertEqual(inst!.detail![0].reference!, "MedicationPrescription/example")	
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "Standard admission testing")	
		XCTAssertEqual(inst!.source!.reference!, "Practitioner/example")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")	
		XCTAssertEqual(inst!.text!.div!, "<div>Request for Prescription (on patient Donald DUCK @ Acme Healthcare, Inc. MR = 654321)</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "today")
		XCTAssertEqual(inst!.when!.code!.coding![0].system!, NSURL(string: "http://acme.com/codes/request-priority")!)
	}
}
