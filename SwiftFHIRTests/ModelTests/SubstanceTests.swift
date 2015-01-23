//
//  SubstanceTests.swift
//  SubstanceTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SubstanceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Substance {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Substance {
		let instance = Substance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubstance1() {
		let instance = testSubstance1_impl()
		testSubstance1_impl(json: instance.asJSON())
	}
	
	func testSubstance1_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f201-dust.canonical.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance2() {
		let instance = testSubstance2_impl()
		testSubstance2_impl(json: instance.asJSON())
	}
	
	func testSubstance2_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f201-dust.canonical.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance3() {
		let instance = testSubstance3_impl()
		testSubstance3_impl(json: instance.asJSON())
	}
	
	func testSubstance3_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f201-dust.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance4() {
		let instance = testSubstance4_impl()
		testSubstance4_impl(json: instance.asJSON())
	}
	
	func testSubstance4_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f202-staphylococcus.canonical.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance5() {
		let instance = testSubstance5_impl()
		testSubstance5_impl(json: instance.asJSON())
	}
	
	func testSubstance5_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f202-staphylococcus.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance6() {
		let instance = testSubstance6_impl()
		testSubstance6_impl(json: instance.asJSON())
	}
	
	func testSubstance6_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f203-potassium.canonical.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance7() {
		let instance = testSubstance7_impl()
		testSubstance7_impl(json: instance.asJSON())
	}
	
	func testSubstance7_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f203-potassium.json")
		
		XCTAssertEqual(inst.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance8() {
		let instance = testSubstance8_impl()
		testSubstance8_impl(json: instance.asJSON())
	}
	
	func testSubstance8_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example.canonical.json")
		
		XCTAssertEqual(inst.type!.text!, "apitoxin")
		
		return inst
	}
	
	func testSubstance9() {
		let instance = testSubstance9_impl()
		testSubstance9_impl(json: instance.asJSON())
	}
	
	func testSubstance9_impl(json: JSONDictionary? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example.json")
		
		XCTAssertEqual(inst.type!.text!, "apitoxin")
		
		return inst
	}
}
