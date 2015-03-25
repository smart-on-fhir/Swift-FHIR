//
//  FamilyHistoryTests.swift
//  FamilyHistoryTests
//
//  Generated from FHIR 0.4.0.4879 on 2015-03-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class FamilyHistoryTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> FamilyHistory {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> FamilyHistory {
		let instance = FamilyHistory(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testFamilyHistory1() {
		let instance = testFamilyHistory1_impl()
		testFamilyHistory1_impl(json: instance.asJSON())
	}
	
	func testFamilyHistory1_impl(json: FHIRJSON? = nil) -> FamilyHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familyhistory-example-mother.json")
		
		XCTAssertEqual(inst.id!, "mother")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/100")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].code!, "371041009")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].display!, "Embolic Stroke")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.relation![0].condition![0].type!.text!, "Stroke")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].code!, "mother")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].code!, "190372001")
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].display!, "Type 1 Diabetes, Maturity Onset")
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.relation![1].condition![0].type!.text!, "Diabetes Mellitus")
		XCTAssertEqual(inst.relation![1].relationship!.coding![0].code!, "brother")
		XCTAssertEqual(inst.relation![1].relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Mother died of a stroke aged 56. Brother has diabetes</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyHistory2() {
		let instance = testFamilyHistory2_impl()
		testFamilyHistory2_impl(json: instance.asJSON())
	}
	
	func testFamilyHistory2_impl(json: FHIRJSON? = nil) -> FamilyHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familyhistory-example.json")
		
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "father")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relation![0].condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.relation![0].condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].code!, "father")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/familial-relationship")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testFamilyHistory3() {
		let instance = testFamilyHistory3_impl()
		testFamilyHistory3_impl(json: instance.asJSON())
	}
	
	func testFamilyHistory3_impl(json: FHIRJSON? = nil) -> FamilyHistory {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "familyhistory-qicore-example.json")
		
		XCTAssertEqual(inst.date!.description, "2011-03-18")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Peter Patient")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.relation![0].condition![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/familyhistory-severity")
		XCTAssertEqual(inst.relation![0].condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].code!, "399166001")
		XCTAssertEqual(inst.relation![0].condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Fatal")
		XCTAssertEqual(inst.relation![0].condition![0].extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/vs/condition-severity")
		XCTAssertEqual(inst.relation![0].condition![0].note!, "Was fishing at the time. At least he went doing someting he loved.")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.units!, "a")
		XCTAssertEqual(inst.relation![0].condition![0].onsetAge!.value!, NSDecimalNumber(string: "74"))
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.relation![0].condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.relation![0].condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].code!, "FTH")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].display!, "FATHER")
		XCTAssertEqual(inst.relation![0].relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/vs/FamilyMember")
		XCTAssertEqual(inst.relation![1].condition![0].modifierExtension![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/familyhistory-didNotHave")
		XCTAssertTrue(inst.relation![1].condition![0].modifierExtension![0].valueBoolean!)
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].code!, "315619001")
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].display!, "Myocardial Infarction")
		XCTAssertEqual(inst.relation![1].condition![0].type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.relation![1].condition![0].type!.text!, "Heart Attack")
		XCTAssertEqual(inst.relation![1].relationship!.coding![0].code!, "MTH")
		XCTAssertEqual(inst.relation![1].relationship!.coding![0].display!, "Mother")
		XCTAssertEqual(inst.relation![1].relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/vs/FamilyMember")
		XCTAssertEqual(inst.text!.div!, "<div>Father died of a heart attack aged 74</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
