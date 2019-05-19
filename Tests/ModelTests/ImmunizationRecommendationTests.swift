//
//  ImmunizationRecommendationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImmunizationRecommendation = Models.ImmunizationRecommendation
#else
import SwiftFHIR
typealias SwiftFHIRImmunizationRecommendation = SwiftFHIR.ImmunizationRecommendation
#endif


class ImmunizationRecommendationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImmunizationRecommendation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImmunizationRecommendation {
		return try SwiftFHIRImmunizationRecommendation(json: json)
	}
	
	func testImmunizationRecommendation1() {
		do {
			let instance = try runImmunizationRecommendation1()
			try runImmunizationRecommendation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImmunizationRecommendation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunizationRecommendation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunizationRecommendation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationrecommendation-example.json")
		
		XCTAssertEqual(inst.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.date?.description, "2015-02-09T11:04:15.817-05:00")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1235")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].code, "earliest")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].display, "Earliest Date")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].system?.absoluteString, "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].code, "recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].display, "Recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].system?.absoluteString, "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].code, "overdue")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].display, "Past Due Date")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].system?.absoluteString, "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].value?.description, "2016-12-28T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].description_fhir, "First sequence in protocol")
		XCTAssertEqual(inst.recommendation?[0].doseNumberPositiveInt, 1)
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.text, "Not Complete")
		XCTAssertEqual(inst.recommendation?[0].series, "Vaccination Series 1")
		XCTAssertEqual(inst.recommendation?[0].seriesDosesPositiveInt, 3)
		XCTAssertEqual(inst.recommendation?[0].supportingImmunization?[0].reference, "Immunization/example")
		XCTAssertEqual(inst.recommendation?[0].supportingPatientInformation?[0].reference, "Observation/example")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?[0].coding?[0].code, "14745005")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?[0].coding?[0].display, "Hepatitis A vaccine")
		XCTAssertEqual(inst.recommendation?[0].vaccineCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testImmunizationRecommendation2() {
		do {
			let instance = try runImmunizationRecommendation2()
			try runImmunizationRecommendation2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImmunizationRecommendation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunizationRecommendation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunizationRecommendation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationrecommendation-example-target-disease.json")
		
		XCTAssertEqual(inst.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.date?.description, "2015-02-09T11:04:15.817-05:00")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1235")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].code, "30981-5")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].display, "Earliest date to give")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[0].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].code, "recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].display, "Recommended")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].code?.coding?[0].system?.absoluteString, "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[1].value?.description, "2015-12-01T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].code, "overdue")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].display, "Past Due Date")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].code?.coding?[0].system?.absoluteString, "http://example.org/fhir/CodeSystem/immunization-recommendation-date-criterion")
		XCTAssertEqual(inst.recommendation?[0].dateCriterion?[2].value?.description, "2016-12-28T00:00:00-05:00")
		XCTAssertEqual(inst.recommendation?[0].description_fhir, "First sequence in protocol")
		XCTAssertEqual(inst.recommendation?[0].doseNumberPositiveInt, 1)
		XCTAssertEqual(inst.recommendation?[0].forecastStatus?.text, "Not Complete")
		XCTAssertEqual(inst.recommendation?[0].series, "Vaccination Series 1")
		XCTAssertEqual(inst.recommendation?[0].seriesDosesPositiveInt, 3)
		XCTAssertEqual(inst.recommendation?[0].supportingImmunization?[0].reference, "Immunization/example")
		XCTAssertEqual(inst.recommendation?[0].supportingPatientInformation?[0].reference, "Observation/example")
		XCTAssertEqual(inst.recommendation?[0].targetDisease?.coding?[0].code, "40468003")
		XCTAssertEqual(inst.recommendation?[0].targetDisease?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
