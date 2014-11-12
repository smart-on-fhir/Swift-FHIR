//
//  ImmunizationRecommendationTests.swift
//  ImmunizationRecommendationTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
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
		let inst = instantiateFrom("immunizationrecommendation-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ImmunizationRecommendation instance")
	
		XCTAssertEqual(inst!.recommendation![0].date!, NSDate.dateFromISOString("2013-03-01")!)	
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].code!, "DUE")
		XCTAssertEqual(inst!.recommendation![0].forecastStatus!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/immunization-recommendation-status")!)	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.text!.div!, "<div>Authored by Joginder Madra</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
