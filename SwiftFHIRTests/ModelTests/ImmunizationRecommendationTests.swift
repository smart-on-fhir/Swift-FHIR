//
//  ImmunizationRecommendationTests.swift
//  ImmunizationRecommendationTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
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
	
		XCTAssertEqual(inst!.recommendation![0].date!, NSDate.dateFromISOString("2013-03-01")!)
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/immunization-recommendation-status")!)
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testImmunizationRecommendation2() {
		let inst = instantiateFrom("immunizationrecommendation-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
	
		XCTAssertEqual(inst!.recommendation![0].date!, NSDate.dateFromISOString("2013-03-01")!)
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/immunization-recommendation-status")!)
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
	
	func testImmunizationRecommendation3() {
		let inst = instantiateFrom("immunizationrecommendation-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
	
		XCTAssertEqual(inst!.recommendation![0].date!, NSDate.dateFromISOString("2013-03-01")!)
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/immunization-recommendation-status")!)
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].code!, "396427003")
		XCTAssertEqual(inst!.recommendation![0].vaccineType!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")
	}
}
