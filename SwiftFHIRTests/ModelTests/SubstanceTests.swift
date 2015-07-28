//
//  SubstanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SubstanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Substance {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Substance {
		let instance = Substance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubstance1() throws {
		let instance = try runSubstance1()
		try runSubstance1(instance.asJSON())
	}
	
	func runSubstance1(json: FHIRJSON? = nil) throws -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f201-dust.json")
		
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "406466009")
		XCTAssertEqual(inst.type!.coding![0].display!, "House dust allergen")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance2() throws {
		let instance = try runSubstance2()
		try runSubstance2(instance.asJSON())
	}
	
	func runSubstance2(json: FHIRJSON? = nil) throws -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f202-staphylococcus.json")
		
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "3092008")
		XCTAssertEqual(inst.type!.coding![0].display!, "Staphylococcus Aureus")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance3() throws {
		let instance = try runSubstance3()
		try runSubstance3(instance.asJSON())
	}
	
	func runSubstance3(json: FHIRJSON? = nil) throws -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f203-potassium.json")
		
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "88480006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Potassium")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testSubstance4() throws {
		let instance = try runSubstance4()
		try runSubstance4(instance.asJSON())
	}
	
	func runSubstance4(json: FHIRJSON? = nil) throws -> Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.text!.div!, "<div>Apitoxin (known as Honey Bee Venom)</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "apitoxin")
		
		return inst
	}
}
