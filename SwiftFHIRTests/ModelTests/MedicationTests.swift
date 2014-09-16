//
//  MedicationTests.swift
//  MedicationTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
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
		let inst = instantiateFrom("medication-example-f001-combivent.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "320442002")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertTrue(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Combivent")	
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "420317006")	
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Inhaler (qualifier value)")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.value!, 1)	
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.code!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.system!, NSURL(string: "http://unitsofmeasure.org"))	
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.units!, "ml")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.value!, 100)	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Combivent\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 320442002}\">Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler</span>\n      </p>\n      <p>\n        <b>isBrand</b>: true\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>product</b>\n        </p>\n        <p>\n          <b>form</b>: \n          <span title=\"Codes: {http://snomed.info/sct 420317006}\">Inhaler (qualifier value)</span>\n        </p>\n        <h3>Ingredients</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Item</b>\n            </td>\n            <td>\n              <b>Amount</b>\n            </td>\n          </tr>\n          <tr>\n            <td>Combivent</td>\n            <td>100 ml/1 null</td>\n          </tr>\n        </table>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication2() {
		let inst = instantiateFrom("medication-example-f002-crestor.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "408036003")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Rosuvastatin 10mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertTrue(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Crestor")	
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")	
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Crestor\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 408036003}\">Rosuvastatin 10mg tablet</span>\n      </p>\n      <p>\n        <b>isBrand</b>: true\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>package</b>\n        </p>\n        <p>\n          <b>container</b>: \n          <span title=\"Codes: {http://snomed.info/sct 398124009}\">drug container</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication3() {
		let inst = instantiateFrom("medication-example-f003-tolbutamide.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "325267004")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Tolbutamide 500mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertTrue(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Tolbutamide")	
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")	
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Tolbutamide\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 325267004}\">Tolbutamide 500mg tablet</span>\n      </p>\n      <p>\n        <b>isBrand</b>: true\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>package</b>\n        </p>\n        <p>\n          <b>container</b>: \n          <span title=\"Codes: {http://snomed.info/sct 398124009}\">drug container</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication4() {
		let inst = instantiateFrom("medication-example-f004-metoprolol.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "318475005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Metoprolol tartrate 50mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertTrue(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Metoprolol")	
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")	
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Metoprolol\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 318475005}\">Metoprolol tartrate 50mg tablet</span>\n      </p>\n      <p>\n        <b>isBrand</b>: true\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>package</b>\n        </p>\n        <p>\n          <b>container</b>: \n          <span title=\"Codes: {http://snomed.info/sct 398124009}\">drug container</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication5() {
		let inst = instantiateFrom("medication-example-f005-enalapril.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "318851002")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Enalapril maleate 5mg tablet")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertTrue(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Enalapril")	
		XCTAssertEqual(inst!.package!.container!.coding![0].code!, "398124009")	
		XCTAssertEqual(inst!.package!.container!.coding![0].display!, "drug container")
		XCTAssertEqual(inst!.package!.container!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Enalapril\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 318851002}\">Enalapril maleate 5mg tablet</span>\n      </p>\n      <p>\n        <b>isBrand</b>: true\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>package</b>\n        </p>\n        <p>\n          <b>container</b>: \n          <span title=\"Codes: {http://snomed.info/sct 398124009}\">drug container</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication6() {
		let inst = instantiateFrom("medication-example-f201-salmeterol.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "411106009")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "25ug Flutacisone + 250ug Salmeterol")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertFalse(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Salmeterol/fluticason")	
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "421606006")	
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Aerosol spray")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.system!, NSURL(string: "http://hl7.org/fhir/v3/orderableDrugForm"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.denominator!.value!, 1)	
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.system!, NSURL(string: "http://unitsofmeasure.org"))
		XCTAssertEqual(inst!.product!.ingredient![0].amount!.numerator!.value!, 25)	
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.denominator!.code!, "PUFF")
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.denominator!.system!, NSURL(string: "http://hl7.org/fhir/v3/orderableDrugForm"))
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.denominator!.value!, 1)	
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.numerator!.code!, "ug")
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.numerator!.system!, NSURL(string: "http://unitsofmeasure.org"))
		XCTAssertEqual(inst!.product!.ingredient![1].amount!.numerator!.value!, 250)	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Salmeterol/fluticason\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 411106009}\">25ug Flutacisone + 250ug Salmeterol</span>\n      </p>\n      <p>\n        <b>isBrand</b>: false\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>product</b>\n        </p>\n        <p>\n          <b>form</b>: \n          <span title=\"Codes: {http://snomed.info/sct 421606006}\">Aerosol spray</span>\n        </p>\n        <h3>Ingredients</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Item</b>\n            </td>\n            <td>\n              <b>Amount</b>\n            </td>\n          </tr>\n          <tr>\n            <td>flutacisone</td>\n            <td>25 ug/1 PUFF</td>\n          </tr>\n          <tr>\n            <td>salmeterol</td>\n            <td>250 ug/1 PUFF</td>\n          </tr>\n        </table>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication7() {
		let inst = instantiateFrom("medication-example-f202-flucloxacilline.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "387544009")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Flucloxacillin")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertFalse(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Flucloxacillin")	
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "385218009")	
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Injection")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Flucloxacillin\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 387544009}\">Flucloxacillin</span>\n      </p>\n      <p>\n        <b>isBrand</b>: false\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>product</b>\n        </p>\n        <p>\n          <b>form</b>: \n          <span title=\"Codes: {http://snomed.info/sct 385218009}\">Injection</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testMedication8() {
		let inst = instantiateFrom("medication-example-f203-paracetamol.json")
		XCTAssertNotNil(inst, "Must have instantiated a Medication instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "387517004")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Paracetamol")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertFalse(inst!.isBrand!)	
		XCTAssertEqual(inst!.kind!, "product")	
		XCTAssertEqual(inst!.name!, "Paracetamol")	
		XCTAssertEqual(inst!.product!.form!.coding![0].code!, "385055001")	
		XCTAssertEqual(inst!.product!.form!.coding![0].display!, "Tablet")
		XCTAssertEqual(inst!.product!.form!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Paracetamol\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 387517004}\">Paracetamol</span>\n      </p>\n      <p>\n        <b>isBrand</b>: false\n      </p>\n      <p>\n        <b>kind</b>: product\n      </p>\n      <blockquote>\n        <p>\n          <b>product</b>\n        </p>\n        <p>\n          <b>form</b>: \n          <span title=\"Codes: {http://snomed.info/sct 385055001}\">Tablet</span>\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
