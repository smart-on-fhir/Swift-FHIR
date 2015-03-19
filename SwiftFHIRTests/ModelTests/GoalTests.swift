//
//  GoalTests.swift
//  GoalTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class GoalTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Goal {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Goal {
		let instance = Goal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGoal1() {
		let instance = testGoal1_impl()
		testGoal1_impl(json: instance.asJSON())
	}
	
	func testGoal1_impl(json: JSONDictionary? = nil) -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "goal-example.json")
		
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].url!.absoluteString!, "measure")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "3141-9")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Weight Measured")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].url!.absoluteString!, "detail")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.units!, "lbs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.high!.value!, NSDecimalNumber(string: "180"))
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.units!, "lbs")
		XCTAssertEqual(inst.extension_fhir![0].extension_fhir![1].valueRange!.low!.value!, NSDecimalNumber(string: "160"))
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/goal-target")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "in-progress")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
	
	func testGoal2() {
		let instance = testGoal2_impl()
		testGoal2_impl(json: instance.asJSON())
	}
	
	func testGoal2_impl(json: JSONDictionary? = nil) -> Goal {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "goal-qicore-example.json")
		
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst.description_fhir!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/goal-category")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "289169006")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "weight loss")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![0].url!.absoluteString!, "measure")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "3141-9")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Weight Measured")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].url!.absoluteString!, "detail")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.high!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.high!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.high!.units!, "lbs")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.high!.value!, NSDecimalNumber(string: "180"))
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.low!.code!, "[lb_av]")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.low!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.low!.units!, "lbs")
		XCTAssertEqual(inst.extension_fhir![1].extension_fhir![1].valueRange!.low!.value!, NSDecimalNumber(string: "160"))
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/goal-target")
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/goal-reasonRejected")
		XCTAssertEqual(inst.extension_fhir![2].valueCodeableConcept!.coding![0].code!, "PREFUS")
		XCTAssertEqual(inst.extension_fhir![2].valueCodeableConcept!.coding![0].display!, "patient refuse")
		XCTAssertEqual(inst.extension_fhir![2].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
