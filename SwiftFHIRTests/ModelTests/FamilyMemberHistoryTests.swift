//
//  FamilyMemberHistoryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FamilyMemberHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> FamilyMemberHistory {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> FamilyMemberHistory {
		let instance = FamilyMemberHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyMemberHistory1() throws {
		let instance = try runFamilyMemberHistory1()
		try runFamilyMemberHistory1(instance.asJSON())
	}
	
	func runFamilyMemberHistory1(json: FHIRJSON? = nil) throws -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example-mother.json")
		
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst.id!, "mother")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Mother died of a stroke aged 56. Brother has diabetes</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyMemberHistory2() throws {
		let instance = try runFamilyMemberHistory2()
		try runFamilyMemberHistory2(instance.asJSON())
	}
	
	func runFamilyMemberHistory2(json: FHIRJSON? = nil) throws -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-example.json")
		
		XCTAssertEqual(inst.condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "father")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyMemberHistory3() throws {
		let instance = try runFamilyMemberHistory3()
		try runFamilyMemberHistory3(instance.asJSON())
	}
	
	func runFamilyMemberHistory3(json: FHIRJSON? = nil) throws -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "familymemberhistory-qicore-example.json")
		
		XCTAssertEqual(inst.condition![0].extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "399166001")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Fatal")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/vs/condition-severity")
		XCTAssertEqual(inst.condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "FTH")
		XCTAssertEqual(inst.relationship!.coding![0].display!, "FATHER")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/vs/FamilyMember")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
