//
//  SubstanceTests.swift
//  SubstanceTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class SubstanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Substance? {
		let json = readJSONFile(filename)
		let instance = Substance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubstance1() {
		let inst = instantiateFrom("substance-example-f201-dust.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 406466009}\">House dust allergen</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "406466009")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "House dust allergen")
	}
	
	func testSubstance2() {
		let inst = instantiateFrom("substance-example-f202-staphylococcus.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 3092008}\">Staphylococcus Aureus</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "3092008")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Staphylococcus Aureus")
	}
	
	func testSubstance3() {
		let inst = instantiateFrom("substance-example-f203-potassium.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 88480006}\">Potassium</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "88480006")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Potassium")
	}
}
