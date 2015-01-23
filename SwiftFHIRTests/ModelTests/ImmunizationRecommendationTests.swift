//
//  ImmunizationRecommendationTests.swift
//  ImmunizationRecommendationTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImmunizationRecommendationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ImmunizationRecommendation {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ImmunizationRecommendation {
		let instance = ImmunizationRecommendation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunizationRecommendation1() {
		let instance = testImmunizationRecommendation1_impl()
		testImmunizationRecommendation1_impl(json: instance.asJSON())
	}
	
	func testImmunizationRecommendation1_impl(json: JSONDictionary? = nil) -> ImmunizationRecommendation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunizationrecommendation-example.canonical.json")
		
		XCTAssertEqual(inst.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testImmunizationRecommendation2() {
		let instance = testImmunizationRecommendation2_impl()
		testImmunizationRecommendation2_impl(json: instance.asJSON())
	}
	
	func testImmunizationRecommendation2_impl(json: JSONDictionary? = nil) -> ImmunizationRecommendation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunizationrecommendation-example.canonical.json")
		
		XCTAssertEqual(inst.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
	
	func testImmunizationRecommendation3() {
		let instance = testImmunizationRecommendation3_impl()
		testImmunizationRecommendation3_impl(json: instance.asJSON())
	}
	
	func testImmunizationRecommendation3_impl(json: JSONDictionary? = nil) -> ImmunizationRecommendation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunizationrecommendation-example.json")
		
		XCTAssertEqual(inst.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		
		return inst
	}
}
