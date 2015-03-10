//
//  OtherTests.swift
//  OtherTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OtherTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Other {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Other {
		let instance = Other(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOther1() {
		let instance = testOther1_impl()
		testOther1_impl(json: instance.asJSON())
	}
	
	func testOther1_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "adverseevent-qicore-example.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "ADVEVT")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther2() {
		let instance = testOther2_impl()
		testOther2_impl(json: instance.asJSON())
	}
	
	func testOther2_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "adverseevent-qicore-example.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "ADVEVT")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther3() {
		let instance = testOther3_impl()
		testOther3_impl(json: instance.asJSON())
	}
	
	func testOther3_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "adverseevent-qicore-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "ADVEVT")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther4() {
		let instance = testOther4_impl()
		testOther4_impl(json: instance.asJSON())
	}
	
	func testOther4_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.canonical.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "other-example-narrative")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testOther5() {
		let instance = testOther5_impl()
		testOther5_impl(json: instance.asJSON())
	}
	
	func testOther5_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example-narrative.json")
		
		XCTAssertEqual(inst.code!.text!, "Example Narrative Tester")
		XCTAssertEqual(inst.id!, "other-example-narrative")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testOther6() {
		let instance = testOther6_impl()
		testOther6_impl(json: instance.asJSON())
	}
	
	func testOther6_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#requestingPractitioner")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#notes")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#fulfillingEncounter")
		XCTAssertEqual(inst.extension_fhir![2].valueReference!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.id!, "referral")
		XCTAssertEqual(inst.modifierExtension![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#referredForService")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].code!, "11429006")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].display!, "Consultation")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifierExtension![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#targetDate")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.end!.description, "2013-04-15")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.start!.description, "2013-04-01")
		XCTAssertEqual(inst.modifierExtension![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#status")
		XCTAssertEqual(inst.modifierExtension![2].valueCode!, "complete")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther7() {
		let instance = testOther7_impl()
		testOther7_impl(json: instance.asJSON())
	}
	
	func testOther7_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "REFERRAL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/other-resource-type")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#requestingPractitioner")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#notes")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#fulfillingEncounter")
		XCTAssertEqual(inst.extension_fhir![2].valueReference!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.id!, "referral")
		XCTAssertEqual(inst.modifierExtension![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#referredForService")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].code!, "11429006")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].display!, "Consultation")
		XCTAssertEqual(inst.modifierExtension![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifierExtension![1].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#targetDate")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.end!.description, "2013-04-15")
		XCTAssertEqual(inst.modifierExtension![1].valuePeriod!.start!.description, "2013-04-01")
		XCTAssertEqual(inst.modifierExtension![2].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/referral#status")
		XCTAssertEqual(inst.modifierExtension![2].valueCode!, "complete")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther8() {
		let instance = testOther8_impl()
		testOther8_impl(json: instance.asJSON())
	}
	
	func testOther8_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example2.canonical.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class")
		XCTAssertEqual(inst.id!, "classModel")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOther9() {
		let instance = testOther9_impl()
		testOther9_impl(json: instance.asJSON())
	}
	
	func testOther9_impl(json: JSONDictionary? = nil) -> Other {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "other-example2.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://example.org/do-not-use/fhir-extensions/UML#class")
		XCTAssertEqual(inst.id!, "classModel")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
