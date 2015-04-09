//
//  FamilyMemberHistoryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class FamilyMemberHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> FamilyMemberHistory {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> FamilyMemberHistory {
		let instance = FamilyMemberHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyMemberHistory1() {
		let instance = testFamilyMemberHistory1_impl()
		testFamilyMemberHistory1_impl(json: instance.asJSON())
	}
	
	func testFamilyMemberHistory1_impl(json: FHIRJSON? = nil) -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familymemberhistory-example-mother.json")
		
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst.id!, "mother")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Mother died of a stroke aged 56. Brother has diabetes</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyMemberHistory2() {
		let instance = testFamilyMemberHistory2_impl()
		testFamilyMemberHistory2_impl(json: instance.asJSON())
	}
	
	func testFamilyMemberHistory2_impl(json: FHIRJSON? = nil) -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familymemberhistory-example.json")
		
		XCTAssertEqual(inst.condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "father")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyMemberHistory3() {
		let instance = testFamilyMemberHistory3_impl()
		testFamilyMemberHistory3_impl(json: instance.asJSON())
	}
	
	func testFamilyMemberHistory3_impl(json: FHIRJSON? = nil) -> FamilyMemberHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familymemberhistory-qicore-example.json")
		
		XCTAssertEqual(inst.condition![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "399166001")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Fatal")
		XCTAssertEqual(inst.condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/vs/condition-severity")
		XCTAssertEqual(inst.condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "FTH")
		XCTAssertEqual(inst.relationship!.coding![0].display!, "FATHER")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/vs/FamilyMember")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
