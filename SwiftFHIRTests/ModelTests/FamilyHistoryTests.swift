//
//  FamilyHistoryTests.swift
//  FamilyHistoryTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class FamilyHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> FamilyHistory? {
		let json = readJSONFile(filename)
		let instance = FamilyHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyHistory1() {
		let inst = instantiateFrom("familyhistory-example-f201-roel.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>note</b>: Both parents, both brothers and both children (twin) are still alive.\n      </p>\n      <blockquote>\n        <p>\n          <b>relation</b>\n        </p>\n        <p>\n          <b>relationship</b>: \n          <span title=\"Codes: {http://snomed.info/sct 72705000}\">Mother</span>\n        </p>\n        <p>\n          <b>deceased[x]</b>: false\n        </p>\n        <h3>Conditions</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Type</b>\n            </td>\n            <td>\n              <b>Outcome</b>\n            </td>\n            <td>\n              <b>Onset[x]</b>\n            </td>\n            <td>\n              <b>Note</b>\n            </td>\n          </tr>\n          <tr>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 39839004}\">Diaphragmatic hernia</span>\n            </td>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n          </tr>\n        </table>\n      </blockquote>\n      <blockquote>\n        <p>\n          <b>relation</b>\n        </p>\n        <p>\n          <b>relationship</b>: \n          <span title=\"Codes: {http://snomed.info/sct 38048003}\">Uncle</span>\n        </p>\n        <p>\n          <b>deceased[x]</b>: true\n        </p>\n        <h3>Conditions</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Type</b>\n            </td>\n            <td>\n              <b>Outcome</b>\n            </td>\n            <td>\n              <b>Onset[x]</b>\n            </td>\n            <td>\n              <b>Note</b>\n            </td>\n          </tr>\n          <tr>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 115665000}\">Atopy</span>\n            </td>\n            <td>\n              <span title=\"Codes: {http://snomed.info/sct 419099009}\">Died</span>\n            </td>\n            <td> </td>\n            <td> </td>\n          </tr>\n        </table>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.note!, "Both parents, both brothers and both children (twin) are still alive.")	
		XCTAssertEqual(inst!.relation![0].deceasedBoolean!, false)	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "39839004")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Diaphragmatic hernia")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "72705000")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].display!, "Mother")	
		XCTAssertEqual(inst!.relation![1].deceasedBoolean!, true)	
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].code!, "419099009")	
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![1].condition![0].outcome!.coding![0].display!, "Died")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "115665000")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Atopy")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "38048003")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].display!, "Uncle")
	}
	
	func testFamilyHistory2() {
		let inst = instantiateFrom("familyhistory-example-mother.json")
		XCTAssertNotNil(inst, "Must have instantiated a FamilyHistory instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>Mother died of a stroke aged 56. Brother has diabetes</div>")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.text!, "Stroke")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].code!, "371041009")	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].code!, "mother")	
		XCTAssertEqual(inst!.relation![0].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship"))	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.text!, "Diabetes Mellitus")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].code!, "190372001")	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].code!, "brother")	
		XCTAssertEqual(inst!.relation![1].relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/familial-relationship"))
	}
}
