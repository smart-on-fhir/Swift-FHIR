//
//  OrderTests.swift
//  OrderTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
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
		
		XCTAssertEqual(inst!.reasonCodeableConcept!.text!, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>date</b>: 5-Mar 2013 12:0\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>source</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>target</b>: Juri van Gelder\n      </p>\n      <p>\n        <b>reason[x]</b>: \n        <span title=\"Codes: \">It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.</span>\n      </p>\n      <h3>Whens</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Schedule</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 394848005}\">Normal priority</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>detail</b>: Consultation, not yet developed\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.when!.code!.coding![0].code!, "394848005")	
		XCTAssertEqual(inst!.when!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.when!.code!.coding![0].display!, "Normal priority")	
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2013-03-05T12:00:00+01:00")!)
	}
}
