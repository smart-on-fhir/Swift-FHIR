//
//  DataElementTests.swift
//  DataElementTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DataElementTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DataElement {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DataElement {
		let instance = DataElement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDataElement1() {
		let instance = testDataElement1_impl()
		testDataElement1_impl(json: instance.asJSON())
	}
	
	func testDataElement1_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-example.canonical.json")
		
		XCTAssertEqual(inst.binding!.conformance!, "required")
		XCTAssertFalse(inst.binding!.isExtensible!)
		XCTAssertEqual(inst.binding!.valueSet!.reference!, "#2179414")
		XCTAssertEqual(inst.category![0].coding![0].display!, "FBPP Pooled Database")
		XCTAssertEqual(inst.category![0].coding![0].system!.absoluteString!, "http://unknown/FBPP")
		XCTAssertEqual(inst.category![0].coding![1].display!, "Demographics")
		XCTAssertEqual(inst.category![0].coding![1].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![2].display!, "Pt. Administrative")
//		XCTAssertEqual(inst.category![0].coding![2].system!.absoluteString!, "http://unknown/Eligibility Criteria")
		XCTAssertEqual(inst.category![0].coding![3].display!, "UAMS New CDEs")
//		XCTAssertEqual(inst.category![0].coding![3].system!.absoluteString!, "http://unknown/UAMS Clinical Research")
		XCTAssertEqual(inst.category![0].coding![4].display!, "Substance Abuse and ")
		XCTAssertEqual(inst.category![0].coding![4].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![5].display!, "CSAERS Adverse Event")
		XCTAssertEqual(inst.category![0].coding![5].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![6].display!, "Core: Tier 1")
		XCTAssertEqual(inst.category![0].coding![6].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![7].display!, "Case Report Forms")
		XCTAssertEqual(inst.category![0].coding![7].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![8].display!, "CSAERS Review Set")
		XCTAssertEqual(inst.category![0].coding![8].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![9].display!, "CIAF")
		XCTAssertEqual(inst.category![0].coding![9].system!.absoluteString!, "http://unknown/Demonstration%20Applications")
		XCTAssertEqual(inst.definition!, "The code representing the gender of a person.")
		XCTAssertEqual(inst.identifier!.value!, "2179650")
		XCTAssertEqual(inst.name!, "Gender Code")
		XCTAssertEqual(inst.publisher!, "DCP")
		XCTAssertEqual(inst.question!, "Gender")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "CodeableConcept")
		XCTAssertEqual(inst.version!, "1.0")
		
		return inst
	}
	
	func testDataElement2() {
		let instance = testDataElement2_impl()
		testDataElement2_impl(json: instance.asJSON())
	}
	
	func testDataElement2_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-example.canonical.json")
		
		XCTAssertEqual(inst.binding!.conformance!, "required")
		XCTAssertFalse(inst.binding!.isExtensible!)
		XCTAssertEqual(inst.binding!.valueSet!.reference!, "#2179414")
		XCTAssertEqual(inst.category![0].coding![0].display!, "FBPP Pooled Database")
		XCTAssertEqual(inst.category![0].coding![0].system!.absoluteString!, "http://unknown/FBPP")
		XCTAssertEqual(inst.category![0].coding![1].display!, "Demographics")
		XCTAssertEqual(inst.category![0].coding![1].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![2].display!, "Pt. Administrative")
//		XCTAssertEqual(inst.category![0].coding![2].system!.absoluteString!, "http://unknown/Eligibility Criteria")
		XCTAssertEqual(inst.category![0].coding![3].display!, "UAMS New CDEs")
//		XCTAssertEqual(inst.category![0].coding![3].system!.absoluteString!, "http://unknown/UAMS Clinical Research")
		XCTAssertEqual(inst.category![0].coding![4].display!, "Substance Abuse and ")
		XCTAssertEqual(inst.category![0].coding![4].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![5].display!, "CSAERS Adverse Event")
		XCTAssertEqual(inst.category![0].coding![5].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![6].display!, "Core: Tier 1")
		XCTAssertEqual(inst.category![0].coding![6].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![7].display!, "Case Report Forms")
		XCTAssertEqual(inst.category![0].coding![7].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![8].display!, "CSAERS Review Set")
		XCTAssertEqual(inst.category![0].coding![8].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![9].display!, "CIAF")
		XCTAssertEqual(inst.category![0].coding![9].system!.absoluteString!, "http://unknown/Demonstration%20Applications")
		XCTAssertEqual(inst.definition!, "The code representing the gender of a person.")
		XCTAssertEqual(inst.identifier!.value!, "2179650")
		XCTAssertEqual(inst.name!, "Gender Code")
		XCTAssertEqual(inst.publisher!, "DCP")
		XCTAssertEqual(inst.question!, "Gender")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "CodeableConcept")
		XCTAssertEqual(inst.version!, "1.0")
		
		return inst
	}
	
	func testDataElement3() {
		let instance = testDataElement3_impl()
		testDataElement3_impl(json: instance.asJSON())
	}
	
	func testDataElement3_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-example.json")
		
		XCTAssertEqual(inst.binding!.conformance!, "required")
		XCTAssertFalse(inst.binding!.isExtensible!)
		XCTAssertEqual(inst.binding!.valueSet!.reference!, "#2179414")
		XCTAssertEqual(inst.category![0].coding![0].display!, "FBPP Pooled Database")
		XCTAssertEqual(inst.category![0].coding![0].system!.absoluteString!, "http://unknown/FBPP")
		XCTAssertEqual(inst.category![0].coding![1].display!, "Demographics")
		XCTAssertEqual(inst.category![0].coding![1].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![2].display!, "Pt. Administrative")
//		XCTAssertEqual(inst.category![0].coding![2].system!.absoluteString!, "http://unknown/Eligibility Criteria")
		XCTAssertEqual(inst.category![0].coding![3].display!, "UAMS New CDEs")
//		XCTAssertEqual(inst.category![0].coding![3].system!.absoluteString!, "http://unknown/UAMS Clinical Research")
		XCTAssertEqual(inst.category![0].coding![4].display!, "Substance Abuse and ")
		XCTAssertEqual(inst.category![0].coding![4].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![5].display!, "CSAERS Adverse Event")
		XCTAssertEqual(inst.category![0].coding![5].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![6].display!, "Core: Tier 1")
		XCTAssertEqual(inst.category![0].coding![6].system!.absoluteString!, "http://unknown/PhenX")
		XCTAssertEqual(inst.category![0].coding![7].display!, "Case Report Forms")
		XCTAssertEqual(inst.category![0].coding![7].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![8].display!, "CSAERS Review Set")
		XCTAssertEqual(inst.category![0].coding![8].system!.absoluteString!, "http://unknown/Category")
		XCTAssertEqual(inst.category![0].coding![9].display!, "CIAF")
		XCTAssertEqual(inst.category![0].coding![9].system!.absoluteString!, "http://unknown/Demonstration%20Applications")
		XCTAssertEqual(inst.definition!, "The code representing the gender of a person.")
		XCTAssertEqual(inst.identifier!.value!, "2179650")
		XCTAssertEqual(inst.name!, "Gender Code")
		XCTAssertEqual(inst.publisher!, "DCP")
		XCTAssertEqual(inst.question!, "Gender")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.type!, "CodeableConcept")
		XCTAssertEqual(inst.version!, "1.0")
		
		return inst
	}
	
	func testDataElement4() {
		let instance = testDataElement4_impl()
		testDataElement4_impl(json: instance.asJSON())
	}
	
	func testDataElement4_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-labtestmaster-example.canonical.json")
		
		XCTAssertEqual(inst.comments!, "Used to screen the integrity of the extrinsic and common pathways of coagulation and to monitor warfarin anticoagulation. ")
		XCTAssertEqual(inst.definition!, "The PT test evaluates the extrinsic and common pathways of the coagulation cascade.")
		XCTAssertEqual(inst.exampleDecimal!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst.identifier!.assigner!.display!, "Century Hospital Laboratory")
		XCTAssertEqual(inst.identifier!.label!, "Prothrombin Time, PT")
		XCTAssertEqual(inst.identifier!.period!.start!.description, "2011-05-19")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "htpp://www.CenturyHospital/Laboratory/DirectoryofServices")
		XCTAssertEqual(inst.identifier!.value!, "11")
		XCTAssertEqual(inst.mapping![0].comments!, "Version 2.48 or later")
		XCTAssertEqual(inst.mapping![0].map!, "5964-2")
		XCTAssertEqual(inst.mapping![0].name!, "LOINC")
		XCTAssertEqual(inst.mapping![0].uri!.absoluteString!, "http://loinc.org/")
		XCTAssertEqual(inst.name!, "Prothrombin Time")
		XCTAssertEqual(inst.requirements!, "This test is orderable. A plasma specimen in a 3.2% sodium citrate blue top tube is required.")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.synonym![0], "Protime, PT")
		XCTAssertEqual(inst.type!, "Decimal")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].code!, "s")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].display!, "second")
		XCTAssertTrue(inst.unitsCodeableConcept!.coding![0].primary!)
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].system!.absoluteString!, "http:/unitsofmeasure.org")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].valueSet!.display!, "UCUM")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].valueSet!.reference!, "http:/unitsofmeasure.org/vs")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].version!, "1.9")
		XCTAssertEqual(inst.unitsCodeableConcept!.text!, "second")
		
		return inst
	}
	
	func testDataElement5() {
		let instance = testDataElement5_impl()
		testDataElement5_impl(json: instance.asJSON())
	}
	
	func testDataElement5_impl(json: JSONDictionary? = nil) -> DataElement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "dataelement-labtestmaster-example.json")
		
		XCTAssertEqual(inst.comments!, "Used to screen the integrity of the extrinsic and common pathways of coagulation and to monitor warfarin anticoagulation. ")
		XCTAssertEqual(inst.definition!, "The PT test evaluates the extrinsic and common pathways of the coagulation cascade.")
		XCTAssertEqual(inst.exampleDecimal!, NSDecimalNumber(string: "10.0"))
		XCTAssertEqual(inst.identifier!.assigner!.display!, "Century Hospital Laboratory")
		XCTAssertEqual(inst.identifier!.label!, "Prothrombin Time, PT")
		XCTAssertEqual(inst.identifier!.period!.start!.description, "2011-05-19")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "htpp://www.CenturyHospital/Laboratory/DirectoryofServices")
		XCTAssertEqual(inst.identifier!.value!, "11")
		XCTAssertEqual(inst.mapping![0].comments!, "Version 2.48 or later")
		XCTAssertEqual(inst.mapping![0].map!, "5964-2")
		XCTAssertEqual(inst.mapping![0].name!, "LOINC")
		XCTAssertEqual(inst.mapping![0].uri!.absoluteString!, "http://loinc.org/")
		XCTAssertEqual(inst.name!, "Prothrombin Time")
		XCTAssertEqual(inst.requirements!, "This test is orderable. A plasma specimen in a 3.2% sodium citrate blue top tube is required.")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.synonym![0], "Protime, PT")
		XCTAssertEqual(inst.type!, "Decimal")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].code!, "s")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].display!, "second")
		XCTAssertTrue(inst.unitsCodeableConcept!.coding![0].primary!)
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].system!.absoluteString!, "http:/unitsofmeasure.org")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].valueSet!.display!, "UCUM")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].valueSet!.reference!, "http:/unitsofmeasure.org/vs")
		XCTAssertEqual(inst.unitsCodeableConcept!.coding![0].version!, "1.9")
		XCTAssertEqual(inst.unitsCodeableConcept!.text!, "second")
		
		return inst
	}
}
