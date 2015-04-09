//
//  SubstanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SubstanceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Substance {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Substance {
		let instance = Substance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubstance1() {
		let instance = testSubstance1_impl()
		testSubstance1_impl(json: instance.asJSON())
	}
	
	func testSubstance1_impl(json: FHIRJSON? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f201-dust.json")
		
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance2() {
		let instance = testSubstance2_impl()
		testSubstance2_impl(json: instance.asJSON())
	}
	
	func testSubstance2_impl(json: FHIRJSON? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f202-staphylococcus.json")
		
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance3() {
		let instance = testSubstance3_impl()
		testSubstance3_impl(json: instance.asJSON())
	}
	
	func testSubstance3_impl(json: FHIRJSON? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example-f203-potassium.json")
		
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance4() {
		let instance = testSubstance4_impl()
		testSubstance4_impl(json: instance.asJSON())
	}
	
	func testSubstance4_impl(json: FHIRJSON? = nil) -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "substance-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>Apitoxin (known as Honey Bee Venom)</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "apitoxin")
		
		return inst
	}
}
