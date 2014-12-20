//
//  SubstanceTests.swift
//  SubstanceTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
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
		let inst = instantiateFrom("substance-example-f201-dust.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst!.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance2() {
		let inst = instantiateFrom("substance-example-f201-dust.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst!.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance3() {
		let inst = instantiateFrom("substance-example-f201-dust.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst!.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance4() {
		let inst = instantiateFrom("substance-example-f202-staphylococcus.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance5() {
		let inst = instantiateFrom("substance-example-f202-staphylococcus.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance6() {
		let inst = instantiateFrom("substance-example-f203-potassium.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance7() {
		let inst = instantiateFrom("substance-example-f203-potassium.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
	}
	
	func testSubstance8() {
		let inst = instantiateFrom("substance-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.text!, "apitoxin")
	}
	
	func testSubstance9() {
		let inst = instantiateFrom("substance-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Substance instance")
	
		XCTAssertEqual(inst!.type!.text!, "apitoxin")
	}
}
