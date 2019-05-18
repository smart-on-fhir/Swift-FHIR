//
//  FamilyMemberHistoryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRFamilyMemberHistory = Models.FamilyMemberHistory
#else
import SwiftFHIR
typealias SwiftFHIRFamilyMemberHistory = SwiftFHIR.FamilyMemberHistory
#endif


class FamilyMemberHistoryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRFamilyMemberHistory {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRFamilyMemberHistory {
		return try SwiftFHIRFamilyMemberHistory(json: json)
	}
	
	func testFamilyMemberHistory1() {
		do {
			let instance = try runFamilyMemberHistory1()
			try runFamilyMemberHistory1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test FamilyMemberHistory successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runFamilyMemberHistory1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRFamilyMemberHistory {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example.json")
		
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "315619001")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Myocardial Infarction")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Heart Attack")
		XCTAssertEqual(inst.condition?[0].contributedToDeath, true)
		XCTAssertEqual(inst.condition?[0].note?[0].text, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition?[0].onsetAge?.code, "a")
		XCTAssertEqual(inst.condition?[0].onsetAge?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetAge?.unit, "yr")
		XCTAssertEqual(inst.condition?[0].onsetAge?.value, "74")
		XCTAssertEqual(inst.date?.description, "2011-03-18")
		XCTAssertEqual(inst.id, "father")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.instantiatesUri?[0].absoluteString, "http://example.org/family-member-history-questionnaire")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "FTH")
		XCTAssertEqual(inst.relationship?.coding?[0].display, "father")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.sex?.coding?[0].code, "male")
		XCTAssertEqual(inst.sex?.coding?[0].display, "Male")
		XCTAssertEqual(inst.sex?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/administrative-gender")
		XCTAssertEqual(inst.status, FamilyHistoryStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testFamilyMemberHistory2() {
		do {
			let instance = try runFamilyMemberHistory2()
			try runFamilyMemberHistory2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test FamilyMemberHistory successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runFamilyMemberHistory2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRFamilyMemberHistory {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example-mother.json")
		
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "371041009")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Embolic Stroke")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Stroke")
		XCTAssertEqual(inst.condition?[0].onsetAge?.code, "a")
		XCTAssertEqual(inst.condition?[0].onsetAge?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetAge?.unit, "yr")
		XCTAssertEqual(inst.condition?[0].onsetAge?.value, "56")
		XCTAssertEqual(inst.id, "mother")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/100")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "MTH")
		XCTAssertEqual(inst.relationship?.coding?[0].display, "mother")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.status, FamilyHistoryStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mother died of a stroke aged 56</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
