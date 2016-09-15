//
//  SubstanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class SubstanceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Substance {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Substance {
		let instance = SwiftFHIR.Substance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSubstance1() {
		do {
			let instance = try runSubstance1()
			try runSubstance1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-amoxicillin-clavulanate.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "drug")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Drug or Medicament")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "392259005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Amoxicillin + clavulanate potassium 875mg/125mg tablet (product)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "ingr1")
		XCTAssertEqual(inst.contained?[1].id, "ingr2")
		XCTAssertEqual(inst.description_fhir, "Augmentin 875")
		XCTAssertEqual(inst.id, "f205")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.denominator?.value, NSDecimalNumber(string: "1000"))
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[0].quantity?.numerator?.value, NSDecimalNumber(string: "875"))
		XCTAssertEqual(inst.ingredient?[0].substance?.reference, "#ingr1")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.denominator?.value, NSDecimalNumber(string: "1000"))
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.code, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.unit, "mg")
		XCTAssertEqual(inst.ingredient?[1].quantity?.numerator?.value, NSDecimalNumber(string: "125"))
		XCTAssertEqual(inst.ingredient?[1].substance?.reference, "#ingr2")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubstance2() {
		do {
			let instance = try runSubstance2()
			try runSubstance2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f201-dust.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "406466009")
		XCTAssertEqual(inst.code?.coding?[0].display, "House dust allergen")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubstance3() {
		do {
			let instance = try runSubstance3()
			try runSubstance3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f202-staphylococcus.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "3092008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Staphylococcus Aureus")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubstance4() {
		do {
			let instance = try runSubstance4()
			try runSubstance4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-f203-potassium.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "88480006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Potassium")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org/indentifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "1234")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubstance5() {
		do {
			let instance = try runSubstance5()
			try runSubstance5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example-silver-nitrate-product.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Chemical")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "333346007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Silver nitrate 20% solution (product)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.description_fhir, "Solution for silver nitrate stain")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org/indentifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "15970")
		XCTAssertEqual(inst.instance?[0].expiry?.description, "2018-01-01")
		XCTAssertEqual(inst.instance?[0].identifier?.system?.absoluteString, "http://acme.org/indentifiers/substances/lot")
		XCTAssertEqual(inst.instance?[0].identifier?.value, "AB94687")
		XCTAssertEqual(inst.instance?[0].quantity?.code, "mL")
		XCTAssertEqual(inst.instance?[0].quantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.instance?[0].quantity?.unit, "mL")
		XCTAssertEqual(inst.instance?[0].quantity?.value, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testSubstance6() {
		do {
			let instance = try runSubstance6()
			try runSubstance6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Substance successfully, but threw")
		}
	}
	
	@discardableResult
	func runSubstance6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Substance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "substance-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "allergen")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Allergen")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org.fhir/substance-category")
		XCTAssertEqual(inst.code?.text, "apitoxin (Honey Bee Venom)")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org/indentifiers/substances")
		XCTAssertEqual(inst.identifier?[0].value, "1463")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
