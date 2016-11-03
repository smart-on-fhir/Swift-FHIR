//
//  ImmunizationRecommendationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImmunizationRecommendationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ImmunizationRecommendation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.ImmunizationRecommendation {
		return try SwiftFHIR.ImmunizationRecommendation(json: json)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationrecommendation-example.json")
		
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
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.text, "Not Complete")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.description_fhir, "First sequence in protocol")
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.doseSequence, UInt(1))
		XCTAssertEqual(inst.recommendation?[0].protocol_fhir?.series, "Vaccination Series 1")
		XCTAssertEqual(inst.recommendation?[0].supportingImmunization?[0].reference, "Immunization/example")
		XCTAssertEqual(inst.recommendation?[0].supportingPatientInformation?[0].reference, "Observation/example")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].code, "14745005")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].display, "Hepatitis A vaccine")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
