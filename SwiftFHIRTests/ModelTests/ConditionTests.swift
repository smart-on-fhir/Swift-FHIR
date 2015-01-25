//
//  ConditionTests.swift
//  ConditionTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ConditionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Condition {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Condition {
		let instance = Condition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCondition1() {
		let instance = testCondition1_impl()
		testCondition1_impl(json: instance.asJSON())
	}
	
	func testCondition1_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f001-heart.canonical.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2011-10-05")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "40768004")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].detail!, "heart structure")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-08-05")
		XCTAssertEqual(inst.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition2() {
		let instance = testCondition2_impl()
		testCondition2_impl(json: instance.asJSON())
	}
	
	func testCondition2_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f001-heart.canonical.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2011-10-05")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "40768004")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].detail!, "heart structure")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-08-05")
		XCTAssertEqual(inst.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition3() {
		let instance = testCondition3_impl()
		testCondition3_impl(json: instance.asJSON())
	}
	
	func testCondition3_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f001-heart.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2011-10-05")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "40768004")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].detail!, "heart structure")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-08-05")
		XCTAssertEqual(inst.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition4() {
		let instance = testCondition4_impl()
		testCondition4_impl(json: instance.asJSON())
	}
	
	func testCondition4_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f002-lung.canonical.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "254637007")
		XCTAssertEqual(inst.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-06-03")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169069000")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "51185008")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].detail!, "lung")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-05-05")
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage!.summary!.coding![0].code!, "258219007")
		XCTAssertEqual(inst.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst.stage!.summary!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition5() {
		let instance = testCondition5_impl()
		testCondition5_impl(json: instance.asJSON())
	}
	
	func testCondition5_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f002-lung.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "254637007")
		XCTAssertEqual(inst.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-06-03")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169069000")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "51185008")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].detail!, "lung")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-05-05")
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage!.summary!.coding![0].code!, "258219007")
		XCTAssertEqual(inst.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst.stage!.summary!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition6() {
		let instance = testCondition6_impl()
		testCondition6_impl(json: instance.asJSON())
	}
	
	func testCondition6_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f003-abscess.canonical.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "18099001")
		XCTAssertEqual(inst.code!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-02-20")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169068008")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of neck")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "280193007")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Entire retropharyngeal area")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2012-02-27")
		XCTAssertEqual(inst.severity!.coding![0].code!, "371923003")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild to moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition7() {
		let instance = testCondition7_impl()
		testCondition7_impl(json: instance.asJSON())
	}
	
	func testCondition7_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f003-abscess.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "18099001")
		XCTAssertEqual(inst.code!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-02-20")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169068008")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of neck")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "280193007")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Entire retropharyngeal area")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2012-02-27")
		XCTAssertEqual(inst.severity!.coding![0].code!, "371923003")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild to moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testCondition8() {
		let instance = testCondition8_impl()
		testCondition8_impl(json: instance.asJSON())
	}
	
	func testCondition8_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f201-fever.canonical.json")
		
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.category!.coding![0].code!, "55607006")
		XCTAssertEqual(inst.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst.category!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.code!.coding![0].code!, "386661006")
		XCTAssertEqual(inst.code!.coding![0].display!, "Fever")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-04-04")
		XCTAssertEqual(inst.dueTo![0].target!.display!, "TPF chemokuur")
		XCTAssertEqual(inst.dueTo![0].target!.reference!, "Procedure/f201")
		XCTAssertEqual(inst.dueTo![1].target!.display!, "bacterial infection")
		XCTAssertEqual(inst.dueTo![1].target!.reference!, "Condition/f205")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "258710007")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "degrees C")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Temperature")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "Observation/f202")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "38266002")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Entire body as a whole")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.severity!.coding![0].code!, "255604002")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testCondition9() {
		let instance = testCondition9_impl()
		testCondition9_impl(json: instance.asJSON())
	}
	
	func testCondition9_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f201-fever.json")
		
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.category!.coding![0].code!, "55607006")
		XCTAssertEqual(inst.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst.category!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.code!.coding![0].code!, "386661006")
		XCTAssertEqual(inst.code!.coding![0].display!, "Fever")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-04-04")
		XCTAssertEqual(inst.dueTo![0].target!.display!, "TPF chemokuur")
		XCTAssertEqual(inst.dueTo![0].target!.reference!, "Procedure/f201")
		XCTAssertEqual(inst.dueTo![1].target!.display!, "bacterial infection")
		XCTAssertEqual(inst.dueTo![1].target!.reference!, "Condition/f205")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "258710007")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "degrees C")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Temperature")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "Observation/f202")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "38266002")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Entire body as a whole")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.severity!.coding![0].code!, "255604002")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testCondition10() {
		let instance = testCondition10_impl()
		testCondition10_impl(json: instance.asJSON())
	}
	
	func testCondition10_impl(json: JSONDictionary? = nil) -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "condition-example-f202-malignancy.canonical.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "diagnose")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.certainty!.coding![0].code!, "17162000")
		XCTAssertEqual(inst.certainty!.coding![0].display!, "Certain")
		XCTAssertEqual(inst.certainty!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.coding![0].code!, "363346000")
		XCTAssertEqual(inst.code!.coding![0].display!, "Malignant neoplastic disease")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-12-01")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Erasmus' diagnostic report of Roel's tumor")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "DiagnosticReport/f201")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.location![0].code!.coding![0].code!, "361355005")
		XCTAssertEqual(inst.location![0].code!.coding![0].display!, "Entire head and neck")
		XCTAssertEqual(inst.location![0].code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetAge!.code!, "258707000")
		XCTAssertEqual(inst.onsetAge!.system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetAge!.units!, "years")
		XCTAssertEqual(inst.onsetAge!.value!, NSDecimalNumber(string: "52"))
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
}
