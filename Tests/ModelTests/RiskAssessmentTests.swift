//
//  RiskAssessmentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class RiskAssessmentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.RiskAssessment {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.RiskAssessment {
		let instance = SwiftFHIR.RiskAssessment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testRiskAssessment1() {
		do {
			let instance = try runRiskAssessment1()
			try runRiskAssessment1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw")
		}
	}
	
	@discardableResult
	func runRiskAssessment1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RiskAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-cardiac.json")
		
		XCTAssertEqual(inst.basis?[0].reference, "Patient/example")
		XCTAssertEqual(inst.basis?[1].reference, "DiagnosticReport/lipids")
		XCTAssertEqual(inst.basis?[2].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.date?.description, "2014-07-19T16:04:00Z")
		XCTAssertEqual(inst.id, "cardiac")
		XCTAssertEqual(inst.performer?.display, "http://cvdrisk.nhlbi.nih.gov/#cholesterol")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "Heart Attack")
		XCTAssertEqual(inst.prediction?[0].probabilityDecimal, NSDecimalNumber(string: "0.02"))
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.value, NSDecimalNumber(string: "49"))
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.low?.value, NSDecimalNumber(string: "39"))
		XCTAssertEqual(inst.text?.status, "additional")
		
		return inst
	}
	
	func testRiskAssessment2() {
		do {
			let instance = try runRiskAssessment2()
			try runRiskAssessment2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw")
		}
	}
	
	@discardableResult
	func runRiskAssessment2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RiskAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-population.json")
		
		XCTAssertEqual(inst.id, "population")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testRiskAssessment3() {
		do {
			let instance = try runRiskAssessment3()
			try runRiskAssessment3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw")
		}
	}
	
	@discardableResult
	func runRiskAssessment3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RiskAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example-prognosis.json")
		
		XCTAssertEqual(inst.condition?.display, "Ischemic Stroke")
		XCTAssertEqual(inst.condition?.reference, "Condition/stroke")
		XCTAssertEqual(inst.date?.description, "2010-11-22")
		XCTAssertEqual(inst.id, "prognosis")
		XCTAssertEqual(inst.prediction?[0].outcome?.coding?[0].code, "249943000:363698007=72098002,260868000=6934004")
		XCTAssertEqual(inst.prediction?[0].outcome?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "permanent weakness of the left arm")
		XCTAssertEqual(inst.prediction?[0].probabilityCodeableConcept?.coding?[0].code, "moderate")
		XCTAssertEqual(inst.prediction?[0].probabilityCodeableConcept?.coding?[0].display, "moderate likelihood")
		XCTAssertEqual(inst.prediction?[0].probabilityCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/risk-probability")
		XCTAssertEqual(inst.text?.status, "additional")
		
		return inst
	}
	
	func testRiskAssessment4() {
		do {
			let instance = try runRiskAssessment4()
			try runRiskAssessment4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test RiskAssessment successfully, but threw")
		}
	}
	
	@discardableResult
	func runRiskAssessment4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.RiskAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "riskassessment-example.json")
		
		XCTAssertEqual(inst.basis?[0].reference, "List/prognosis")
		XCTAssertEqual(inst.date?.description, "2006-01-13T23:01:00Z")
		XCTAssertEqual(inst.id, "genetic")
		XCTAssertEqual(inst.method?.coding?[0].code, "BRCAPRO")
		XCTAssertEqual(inst.prediction?[0].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[0].probabilityDecimal, NSDecimalNumber(string: "0.000168"))
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[0].whenRange?.high?.value, NSDecimalNumber(string: "53"))
		XCTAssertEqual(inst.prediction?[1].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[1].probabilityDecimal, NSDecimalNumber(string: "0.000368"))
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[1].whenRange?.high?.value, NSDecimalNumber(string: "57"))
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[1].whenRange?.low?.value, NSDecimalNumber(string: "54"))
		XCTAssertEqual(inst.prediction?[2].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[2].probabilityDecimal, NSDecimalNumber(string: "0.000594"))
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[2].whenRange?.high?.value, NSDecimalNumber(string: "62"))
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[2].whenRange?.low?.value, NSDecimalNumber(string: "58"))
		XCTAssertEqual(inst.prediction?[3].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[3].probabilityDecimal, NSDecimalNumber(string: "0.000838"))
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[3].whenRange?.high?.value, NSDecimalNumber(string: "67"))
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[3].whenRange?.low?.value, NSDecimalNumber(string: "63"))
		XCTAssertEqual(inst.prediction?[4].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[4].probabilityDecimal, NSDecimalNumber(string: "0.001089"))
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[4].whenRange?.high?.value, NSDecimalNumber(string: "72"))
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[4].whenRange?.low?.value, NSDecimalNumber(string: "68"))
		XCTAssertEqual(inst.prediction?[5].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[5].probabilityDecimal, NSDecimalNumber(string: "0.001327"))
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[5].whenRange?.high?.value, NSDecimalNumber(string: "77"))
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[5].whenRange?.low?.value, NSDecimalNumber(string: "73"))
		XCTAssertEqual(inst.prediction?[6].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[6].probabilityDecimal, NSDecimalNumber(string: "0.00153"))
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[6].whenRange?.high?.value, NSDecimalNumber(string: "82"))
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[6].whenRange?.low?.value, NSDecimalNumber(string: "78"))
		XCTAssertEqual(inst.prediction?[7].outcome?.text, "Breast Cancer")
		XCTAssertEqual(inst.prediction?[7].probabilityDecimal, NSDecimalNumber(string: "0.001663"))
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.code, "a")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.unit, "years")
		XCTAssertEqual(inst.prediction?[7].whenRange?.high?.value, NSDecimalNumber(string: "88"))
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.code, "a")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.unit, "years")
		XCTAssertEqual(inst.prediction?[7].whenRange?.low?.value, NSDecimalNumber(string: "83"))
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
