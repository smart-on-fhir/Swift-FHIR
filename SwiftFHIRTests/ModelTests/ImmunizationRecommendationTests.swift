//
//  ImmunizationRecommendationTests.swift
//  ImmunizationRecommendationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImmunizationRecommendationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ImmunizationRecommendation? {
		let json = readJSONFile(filename)
		let instance = ImmunizationRecommendation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunizationRecommendation1() {
		let inst = instantiateFrom("immunizationrecommendation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
		
		XCTAssertEqual(inst!.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testImmunizationRecommendation2() {
		let inst = instantiateFrom("immunizationrecommendation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
		
		XCTAssertEqual(inst!.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testImmunizationRecommendation3() {
		let inst = instantiateFrom("immunizationrecommendation-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
		
		XCTAssertEqual(inst!.recommendation![0].date!.description, "2013-03-01")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
