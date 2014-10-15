//
//  SubstanceTests.swift
//  SubstanceTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-15.
//  2014, SMART Platforms.
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
		
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 406466009}\">House dust allergen</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "406466009")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testSubstance2() {
		let inst = instantiateFrom("substance-example-f202-staphylococcus.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
		
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 3092008}\">Staphylococcus Aureus</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "3092008")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testSubstance3() {
		let inst = instantiateFrom("substance-example-f203-potassium.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
		
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 88480006}\">Potassium</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "88480006")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
}
