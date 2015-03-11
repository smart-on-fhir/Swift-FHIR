//
//  MedicationTests.swift
//  MedicationTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Medication {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Medication {
		let instance = Medication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedication1() {
		let instance = testMedication1_impl()
		testMedication1_impl(json: instance.asJSON())
	}
	
	func testMedication1_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f001-combivent.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "320442002")
		XCTAssertEqual(inst.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Combivent")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "420317006")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.units!, "ml")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "100"))
		XCTAssertEqual(inst.product!.ingredient![0].item!.display!, "Combivent")
		XCTAssertEqual(inst.product!.ingredient![0].item!.reference!, "Medication/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication2() {
		let instance = testMedication2_impl()
		testMedication2_impl(json: instance.asJSON())
	}
	
	func testMedication2_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f002-crestor.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "408036003")
		XCTAssertEqual(inst.code!.coding![0].display!, "Rosuvastatin 10mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Crestor")
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication3() {
		let instance = testMedication3_impl()
		testMedication3_impl(json: instance.asJSON())
	}
	
	func testMedication3_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f003-tolbutamide.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "325267004")
		XCTAssertEqual(inst.code!.coding![0].display!, "Tolbutamide 500mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Tolbutamide")
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication4() {
		let instance = testMedication4_impl()
		testMedication4_impl(json: instance.asJSON())
	}
	
	func testMedication4_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f004-metoprolol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "318475005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Metoprolol tartrate 50mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Metoprolol")
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication5() {
		let instance = testMedication5_impl()
		testMedication5_impl(json: instance.asJSON())
	}
	
	func testMedication5_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f005-enalapril.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "318851002")
		XCTAssertEqual(inst.code!.coding![0].display!, "Enalapril maleate 5mg tablet")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f005")
		XCTAssertTrue(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Enalapril")
		XCTAssertEqual(inst.package!.container!.coding![0].code!, "398124009")
		XCTAssertEqual(inst.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst.package!.container!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication6() {
		let instance = testMedication6_impl()
		testMedication6_impl(json: instance.asJSON())
	}
	
	func testMedication6_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f201-salmeterol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "411106009")
		XCTAssertEqual(inst.code!.coding![0].display!, "25ug Flutacisone + 250ug Salmeterol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Salmeterol/fluticason")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "421606006")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Aerosol spray")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "25"))
		XCTAssertEqual(inst.product!.ingredient![0].item!.display!, "flutacisone")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.value!, NSDecimalNumber(string: "250"))
		XCTAssertEqual(inst.product!.ingredient![1].item!.display!, "salmeterol")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication7() {
		let instance = testMedication7_impl()
		testMedication7_impl(json: instance.asJSON())
	}
	
	func testMedication7_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f202-flucloxacilline.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "387544009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Flucloxacillin")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Flucloxacillin")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "385218009")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Injection")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication8() {
		let instance = testMedication8_impl()
		testMedication8_impl(json: instance.asJSON())
	}
	
	func testMedication8_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example-f203-paracetamol.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "387517004")
		XCTAssertEqual(inst.code!.coding![0].display!, "Paracetamol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Paracetamol")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "385055001")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Tablet")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication9() {
		let instance = testMedication9_impl()
		testMedication9_impl(json: instance.asJSON())
	}
	
	func testMedication9_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "323418000")
		XCTAssertEqual(inst.code!.coding![0].display!, "Phenoxymethylpenicillin 125mg/5mL oral solution (product)")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![1].code!, "22571011000036102")
		XCTAssertEqual(inst.code!.coding![1].display!, "phenoxymethylpenicillin 125 mg / 5 mL oral liquid, 5 mL measure")
		XCTAssertEqual(inst.code!.coding![1].system!.absoluteString!, "http://nehta.gov.au/amt/v2")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Penicillin VK oral suspension 125mg/5ml")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "37595005")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Suspension")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.div!, "<div>123456789: Penicillin VK oral suspension 125mg/5ml</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedication10() {
		let instance = testMedication10_impl()
		testMedication10_impl(json: instance.asJSON())
	}
	
	func testMedication10_impl(json: JSONDictionary? = nil) -> Medication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medication-qicore-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "411106009")
		XCTAssertEqual(inst.code!.coding![0].display!, "25ug Flutacisone + 250ug Salmeterol")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertFalse(inst.isBrand!)
		XCTAssertEqual(inst.kind!, "product")
		XCTAssertEqual(inst.name!, "Salmeterol/fluticason")
		XCTAssertEqual(inst.product!.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/medication-usualRoute")
		XCTAssertEqual(inst.product!.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "447694001")
		XCTAssertEqual(inst.product!.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Respiratory tract route")
		XCTAssertEqual(inst.product!.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.form!.coding![0].code!, "421606006")
		XCTAssertEqual(inst.product!.form!.coding![0].display!, "Aerosol spray")
		XCTAssertEqual(inst.product!.form!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![0].amount!.numerator!.value!, NSDecimalNumber(string: "25"))
		XCTAssertEqual(inst.product!.ingredient![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/medication-isActiveIngredient")
		XCTAssertTrue(inst.product!.ingredient![0].extension_fhir![0].valueBoolean!)
		XCTAssertEqual(inst.product!.ingredient![0].item!.display!, "flutacisone")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.system!.absoluteString!, "http://hl7.org/fhir/v3/orderableDrugForm")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.denominator!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.product!.ingredient![1].amount!.numerator!.value!, NSDecimalNumber(string: "250"))
		XCTAssertEqual(inst.product!.ingredient![1].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/medication-isActiveIngredient")
		XCTAssertTrue(inst.product!.ingredient![1].extension_fhir![0].valueBoolean!)
		XCTAssertEqual(inst.product!.ingredient![1].item!.display!, "salmeterol")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
