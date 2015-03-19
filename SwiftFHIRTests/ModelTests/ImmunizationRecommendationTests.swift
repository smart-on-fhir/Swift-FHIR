//
//  ImmunizationRecommendationTests.swift
//  ImmunizationRecommendationTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunizationrecommendation-example.json")
		
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.recommendation![0].date!.description, "2015-02-09T11:04:15.817-05:00")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![0].code!.coding![0].code!, "earliest")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![0].code!.coding![0].display!, "Earliest Date")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![0].code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![0].value!.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![1].code!.coding![0].code!, "recommended")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![1].code!.coding![0].display!, "Recommended Date")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![1].code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![1].value!.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![2].code!.coding![0].code!, "pastdue")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![2].code!.coding![0].display!, "Past Due Date")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![2].code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation![0].dateCriterion![2].value!.description, "2016-12-28T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation![0].doseNumber!, 1)
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].code!, "Not Complete")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].display!, "Not Complete")
		XCTAssertEqual(inst.recommendation![0].forecastStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/vs/immunization-recommendation-status")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].code!, "14745005")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].display!, "Hepatitis A vaccine")
		XCTAssertEqual(inst.recommendation![0].vaccineType!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.div!, "<div>Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
