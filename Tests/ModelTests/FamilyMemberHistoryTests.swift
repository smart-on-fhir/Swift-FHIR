//
//  FamilyMemberHistoryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FamilyMemberHistoryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.FamilyMemberHistory {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.FamilyMemberHistory {
		let instance = SwiftFHIR.FamilyMemberHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyMemberHistory1() {
		do {
			let instance = try runFamilyMemberHistory1()
			try runFamilyMemberHistory1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test FamilyMemberHistory successfully, but threw")
		}
	}
	
	@discardableResult
	func runFamilyMemberHistory1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example-mother.json")
		
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "371041009")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Embolic Stroke")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Stroke")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.unit, "a")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.value, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.id, "mother")
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/100")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "mother")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.text?.div, "<div>Mother died of a stroke aged 56</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testFamilyMemberHistory2() {
		do {
			let instance = try runFamilyMemberHistory2()
			try runFamilyMemberHistory2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test FamilyMemberHistory successfully, but threw")
		}
	}
	
	@discardableResult
	func runFamilyMemberHistory2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example.json")
		
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].code, "315619001")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].display, "Myocardial Infarction")
		XCTAssertEqual(inst.condition?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition?[0].code?.text, "Heart Attack")
		XCTAssertEqual(inst.condition?[0].note?.text, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.unit, "a")
		XCTAssertEqual(inst.condition?[0].onsetQuantity?.value, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.date?.description, "2011-03-18")
		XCTAssertEqual(inst.id, "father")
		XCTAssertEqual(inst.patient?.display, "Peter Patient")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.relationship?.coding?[0].code, "father")
		XCTAssertEqual(inst.relationship?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.text?.div, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
