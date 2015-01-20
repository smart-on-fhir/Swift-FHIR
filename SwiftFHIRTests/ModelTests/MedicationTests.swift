//
//  MedicationTests.swift
//  MedicationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Medication? {
		let json = readJSONFile(filename)
		let instance = Medication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedication1() {
		let inst = instantiateFrom("medication-example-f001-combivent.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "320442002")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Combivent")
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "420317006")
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.units!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.product!.ingredient![0].item!.display!, "Combivent")
		XCTAssertEqual(inst!.product!.ingredient![0].item!.reference!, "Medication/f001")
	}
	
	func testMedication2() {
		let inst = instantiateFrom("medication-example-f001-combivent.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "320442002")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Combivent")
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "420317006")
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.units!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.product!.ingredient![0].item!.display!, "Combivent")
		XCTAssertEqual(inst!.product!.ingredient![0].item!.reference!, "Medication/f001")
	}
	
	func testMedication3() {
		let inst = instantiateFrom("medication-example-f001-combivent.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "320442002")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Combivent")
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "420317006")
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.units!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst!.product!.ingredient![0].item!.display!, "Combivent")
		XCTAssertEqual(inst!.product!.ingredient![0].item!.reference!, "Medication/f001")
	}
	
	func testMedication4() {
		let inst = instantiateFrom("medication-example-f002-crestor.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "408036003")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Rosuvastatin 10mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Crestor")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication5() {
		let inst = instantiateFrom("medication-example-f002-crestor.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "408036003")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Rosuvastatin 10mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Crestor")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication6() {
		let inst = instantiateFrom("medication-example-f003-tolbutamide.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "325267004")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Tolbutamide 500mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Tolbutamide")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication7() {
		let inst = instantiateFrom("medication-example-f003-tolbutamide.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "325267004")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Tolbutamide 500mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Tolbutamide")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication8() {
		let inst = instantiateFrom("medication-example-f004-metoprolol.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "318475005")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Metoprolol tartrate 50mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Metoprolol")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication9() {
		let inst = instantiateFrom("medication-example-f004-metoprolol.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "318475005")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Metoprolol tartrate 50mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Metoprolol")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testMedication10() {
		let inst = instantiateFrom("medication-example-f005-enalapril.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "318851002")
		XCTAssertEqual(inst!.code!.coding![0].display!, "Enalapril maleate 5mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertTrue(inst!.isBrand!)
		XCTAssertEqual(inst!.kind!, "product")
		XCTAssertEqual(inst!.name!, "Enalapril")
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
}
