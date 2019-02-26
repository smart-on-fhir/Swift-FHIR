//
//  ImmunizationEvaluationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImmunizationEvaluation = Models.ImmunizationEvaluation
#else
import SwiftFHIR
typealias SwiftFHIRImmunizationEvaluation = SwiftFHIR.ImmunizationEvaluation
#endif


class ImmunizationEvaluationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImmunizationEvaluation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImmunizationEvaluation {
		return try SwiftFHIRImmunizationEvaluation(json: json)
	}
	
	func testImmunizationEvaluation1() {
		do {
			let instance = try runImmunizationEvaluation1()
			try runImmunizationEvaluation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImmunizationEvaluation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunizationEvaluation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunizationEvaluation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationevaluation-example.json")
		
		XCTAssertEqual(inst.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.date?.description, "2013-01-10")
		XCTAssertEqual(inst.doseNumberPositiveInt, 1)
		XCTAssertEqual(inst.doseStatus?.coding?[0].code, "valid")
		XCTAssertEqual(inst.doseStatus?.coding?[0].display, "Valid")
		XCTAssertEqual(inst.doseStatus?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.immunizationEvent?.reference, "Immunization/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.series, "Vaccination Series 1")
		XCTAssertEqual(inst.seriesDosesPositiveInt, 3)
		XCTAssertEqual(inst.status, MedicationAdministrationStatusCodes(rawValue: "completed")!)
		XCTAssertEqual(inst.targetDisease?.coding?[0].code, "1857005")
		XCTAssertEqual(inst.targetDisease?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testImmunizationEvaluation2() {
		do {
			let instance = try runImmunizationEvaluation2()
			try runImmunizationEvaluation2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImmunizationEvaluation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunizationEvaluation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunizationEvaluation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunizationevaluation-example-notvalid.json")
		
		XCTAssertEqual(inst.authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.date?.description, "2013-01-10")
		XCTAssertEqual(inst.doseNumberPositiveInt, 2)
		XCTAssertEqual(inst.doseStatus?.coding?[0].code, "notvalid")
		XCTAssertEqual(inst.doseStatus?.coding?[0].display, "Not Valid")
		XCTAssertEqual(inst.doseStatus?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status")
		XCTAssertEqual(inst.doseStatusReason?[0].coding?[0].code, "outsidesched")
		XCTAssertEqual(inst.doseStatusReason?[0].coding?[0].display, "Administered outside recommended schedule")
		XCTAssertEqual(inst.doseStatusReason?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/immunization-evaluation-dose-status-reason")
		XCTAssertEqual(inst.id, "notValid")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.immunizationEvent?.reference, "Immunization/example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.series, "Vaccination Series 1")
		XCTAssertEqual(inst.seriesDosesPositiveInt, 3)
		XCTAssertEqual(inst.status, MedicationAdministrationStatusCodes(rawValue: "completed")!)
		XCTAssertEqual(inst.targetDisease?.coding?[0].code, "1857005")
		XCTAssertEqual(inst.targetDisease?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
