//
//  RiskAssessmentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRRiskAssessment = Models.RiskAssessment
#else
import SwiftFHIR
typealias SwiftFHIRRiskAssessment = SwiftFHIR.RiskAssessment
#endif


class RiskAssessmentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRRiskAssessment {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRRiskAssessment {
		return try SwiftFHIRRiskAssessment(json: json)
	}
	
	func testRiskAssessment1() {
		do {
			let instance = try runRiskAssessment1()
			try runRiskAssessment1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRiskAssessment1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRiskAssessment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-cardiac.json")
		
		XCTAssertEqual(inst.basis?[0].reference, "Patient/pat2")
		XCTAssertEqual(inst.basis?[1].reference, "DiagnosticReport/lipids")
		XCTAssertEqual(inst.basis?[2].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "cardiac")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://example.org")
		XCTAssertEqual(inst.identifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?.value, "risk-assessment-cardiac")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-07-19T16:04:00Z")
		XCTAssertEqual(inst.performer?.display, "http://cvdrisk.nhlbi.nih.gov/#cholesterol")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "Heart Attack")
		XCTAssertEqual(inst.prediction?[0].probabilityDecimal, "0.02")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.value, "49")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.value, "39")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testRiskAssessment2() {
		do {
			let instance = try runRiskAssessment2()
			try runRiskAssessment2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRiskAssessment2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRiskAssessment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-population.json")
		
		XCTAssertEqual(inst.id, "population")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testRiskAssessment3() {
		do {
			let instance = try runRiskAssessment3()
			try runRiskAssessment3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRiskAssessment3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRiskAssessment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-prognosis.json")
		
		XCTAssertEqual(inst.condition?.display, "Ischemic Stroke")
		XCTAssertEqual(inst.condition?.reference, "Condition/stroke")
		XCTAssertEqual(inst.id, "prognosis")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2010-11-22")
		XCTAssertEqual(inst.prediction?[0].outcome?.coding?[0].code, "249943000:363698007=72098002,260868000=6934004")
		XCTAssertEqual(inst.prediction?[0].outcome?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "permanent weakness of the left arm")
		XCTAssertEqual(inst.prediction?[0].qualitativeRisk?.coding?[0].code, "moderate")
		XCTAssertEqual(inst.prediction?[0].qualitativeRisk?.coding?[0].display, "moderate likelihood")
		XCTAssertEqual(inst.prediction?[0].qualitativeRisk?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/risk-probability")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testRiskAssessment4() {
		do {
			let instance = try runRiskAssessment4()
			try runRiskAssessment4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runRiskAssessment4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRRiskAssessment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example.json")
		
		XCTAssertEqual(inst.basis?[0].reference, "List/prognosis")
		XCTAssertEqual(inst.comment, "High degree of certainty")
		XCTAssertEqual(inst.id, "genetic")
		XCTAssertEqual(inst.method?.coding?[0].code, "BRCAPRO")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2006-01-13T23:01:00Z")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[0].probabilityDecimal, "0.000168")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.value, "53")
		XCTAssertEqual(inst.prediction?[1].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[1].probabilityDecimal, "0.000368")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.value, "57")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.value, "54")
		XCTAssertEqual(inst.prediction?[2].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[2].probabilityDecimal, "0.000594")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.value, "62")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.value, "58")
		XCTAssertEqual(inst.prediction?[3].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[3].probabilityDecimal, "0.000838")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.value, "67")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.value, "63")
		XCTAssertEqual(inst.prediction?[4].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[4].probabilityDecimal, "0.001089")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.value, "72")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.value, "68")
		XCTAssertEqual(inst.prediction?[5].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[5].probabilityDecimal, "0.001327")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.value, "77")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.value, "73")
		XCTAssertEqual(inst.prediction?[6].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[6].probabilityDecimal, "0.00153")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.value, "82")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.value, "78")
		XCTAssertEqual(inst.prediction?[7].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[7].probabilityDecimal, "0.001663")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.value, "88")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.value, "83")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
