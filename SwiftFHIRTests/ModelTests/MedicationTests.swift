//
//  MedicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MedicationTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Medication {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Medication {
		let instance = Medication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedication1() {
		let instance = try? runMedication1()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication1(instance!.asJSON())
	}
	
	func runMedication1(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f001-combivent.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "320442002")
		XCTAssertEqual(inst.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "420317006")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.unit!, "ml")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.product!.ingredient![0].item!.display!, "Combivent")
		XCTAssertEqual(inst.product!.ingredient![0].item!.reference!, "Medication/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication2() {
		let instance = try? runMedication2()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication2(instance!.asJSON())
	}
	
	func runMedication2(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f002-crestor.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "408036003")
		XCTAssertEqual(inst.code!.coding![0].display!, "Rosuvastatin 10mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication3() {
		let instance = try? runMedication3()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication3(instance!.asJSON())
	}
	
	func runMedication3(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f003-tolbutamide.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "325267004")
		XCTAssertEqual(inst.code!.coding![0].display!, "Tolbutamide 500mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication4() {
		let instance = try? runMedication4()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication4(instance!.asJSON())
	}
	
	func runMedication4(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f004-metoprolol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "318475005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Metoprolol tartrate 50mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication5() {
		let instance = try? runMedication5()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication5(instance!.asJSON())
	}
	
	func runMedication5(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f005-enalapril.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "318851002")
		XCTAssertEqual(inst.code!.coding![0].display!, "Enalapril maleate 5mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f005")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication6() {
		let instance = try? runMedication6()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication6(instance!.asJSON())
	}
	
	func runMedication6(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f201-salmeterol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "411106009")
		XCTAssertEqual(inst.code!.coding![0].display!, "25ug Flutacisone + 250ug Salmeterol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "421606006")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Aerosol spray")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.system!.absoluteString, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "25"))
		XCTAssertEqual(inst.product!.ingredient![0].item!.display!, "flutacisone")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.system!.absoluteString, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.value!, NSDecimalNumber(string: "250"))
		XCTAssertEqual(inst.product!.ingredient![1].item!.display!, "salmeterol")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication7() {
		let instance = try? runMedication7()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication7(instance!.asJSON())
	}
	
	func runMedication7(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f202-flucloxacilline.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "387544009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Flucloxacillin")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "385218009")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Injection")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication8() {
		let instance = try? runMedication8()
		XCTAssertNotNil(instance, "Must instantiate Medication")
		try! runMedication8(instance!.asJSON())
	}
	
	func runMedication8(json: FHIRJSON? = nil) throws -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medication-example-f203-paracetamol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "387517004")
		XCTAssertEqual(inst.code!.coding![0].display!, "Paracetamol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "385055001")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Tablet")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
