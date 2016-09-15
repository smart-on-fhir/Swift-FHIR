//
//  ImmunizationRecommendationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImmunizationRecommendationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ImmunizationRecommendation {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ImmunizationRecommendation {
		let instance = SwiftFHIR.ImmunizationRecommendation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunizationRecommendation1() {
		do {
			let instance = try runImmunizationRecommendation1()
			try runImmunizationRecommendation1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ImmunizationRecommendation successfully, but threw")
		}
	}
	
	@discardableResult
	func runImmunizationRecommendation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ImmunizationRecommendation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationrecommendation-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1235")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.recommendation?[0].date?.description, "2015-02-09T11:04:15.817-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].code, "earliest")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].display, "Earliest Date")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].code, "recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].display, "Recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].code, "overdue")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].display, "Past Due Date")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].value?.description, "2016-12-28T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].doseNumber, UInt(1))
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.coding?[0].code, "Not Complete")
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.coding?[0].display, "Not Complete")
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/immunization-recommendation-status")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.description_fhir, "First sequence in protocol")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.doseSequence, 1)
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.series, "Vaccination Series 1")
		XCTAssertEqual(inst.recommendation?[0].supportingImmunization?[0].reference, "Immunization/example")
		XCTAssertEqual(inst.recommendation?[0].supportingPatientInformation?[0].reference, "Observation/example")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].code, "14745005")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].display, "Hepatitis A vaccine")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.div, "<div>Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
