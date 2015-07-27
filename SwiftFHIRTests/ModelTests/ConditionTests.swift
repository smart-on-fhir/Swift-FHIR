//
//  ConditionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ConditionTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Condition {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Condition {
		let instance = Condition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCondition1() throws {
		let instance = try testCondition1_impl()
		try testCondition1_impl(instance.asJSON())
	}
	
	func testCondition1_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "cond-uslab-example1.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "provisional")
		XCTAssertEqual(inst.code!.coding![0].code!, "39065001")
		XCTAssertEqual(inst.code!.coding![0].display!, "Increased lead level")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.text!, "Increased lead level")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.notes!, "Elevated lead levels on screening")
		XCTAssertEqual(inst.patient!.display!, "Todd Lerr")
		XCTAssertEqual(inst.patient!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition2() throws {
		let instance = try testCondition2_impl()
		try testCondition2_impl(instance.asJSON())
	}
	
	func testCondition2_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "cond-uslab-example2.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].display!, "Diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "provisional")
		XCTAssertEqual(inst.code!.coding![0].code!, "R78.71")
		XCTAssertEqual(inst.code!.coding![0].display!, "Abnormal lead level in blood")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://www.cms.gov/Medicare/Coding/ICD10/index.html")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.patient!.display!, "Todd Lerr")
		XCTAssertEqual(inst.patient!.reference!, "Patient/uslab-example2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition3() throws {
		let instance = try testCondition3_impl()
		try testCondition3_impl(instance.asJSON())
	}
	
	func testCondition3_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f001-heart.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "368009")
		XCTAssertEqual(inst.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2011-10-05")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "426396005")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "40768004")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.text!, "heart structure")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-08-05")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.severity!.coding![0].code!, "6736007")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition4() throws {
		let instance = try testCondition4_impl()
		try testCondition4_impl(instance.asJSON())
	}
	
	func testCondition4_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f002-lung.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "254637007")
		XCTAssertEqual(inst.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-06-03")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169069000")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "51185008")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.text!, "lung")
		XCTAssertEqual(inst.onsetDateTime!.description, "2011-05-05")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage!.summary!.coding![0].code!, "258219007")
		XCTAssertEqual(inst.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst.stage!.summary!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition5() throws {
		let instance = try testCondition5_impl()
		try testCondition5_impl(instance.asJSON())
	}
	
	func testCondition5_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f003-abscess.json")
		
		XCTAssertEqual(inst.asserter!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter!.reference!, "Patient/f001")
		XCTAssertEqual(inst.category!.coding![0].code!, "439401001")
		XCTAssertEqual(inst.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "18099001")
		XCTAssertEqual(inst.code!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-02-20")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "169068008")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "CT of neck")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "280193007")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Entire retropharyngeal area")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2012-02-27")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.severity!.coding![0].code!, "371923003")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild to moderate")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition6() throws {
		let instance = try testCondition6_impl()
		try testCondition6_impl(instance.asJSON())
	}
	
	func testCondition6_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f201-fever.json")
		
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.category!.coding![0].code!, "55607006")
		XCTAssertEqual(inst.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst.category!.coding![1].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "386661006")
		XCTAssertEqual(inst.code!.coding![0].display!, "Fever")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-04-04")
		XCTAssertEqual(inst.dueTo![0].target!.display!, "TPF chemokuur")
		XCTAssertEqual(inst.dueTo![0].target!.reference!, "Procedure/f201")
		XCTAssertEqual(inst.dueTo![1].target!.display!, "bacterial infection")
		XCTAssertEqual(inst.dueTo![1].target!.reference!, "Condition/f205")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f201")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].code!, "258710007")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].display!, "degrees C")
		XCTAssertEqual(inst.evidence![0].code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Temperature")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "Observation/f202")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "38266002")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Entire body as a whole")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.severity!.coding![0].code!, "255604002")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Mild")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition7() throws {
		let instance = try testCondition7_impl()
		try testCondition7_impl(instance.asJSON())
	}
	
	func testCondition7_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f202-malignancy.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "diagnose")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "363346000")
		XCTAssertEqual(inst.code!.coding![0].display!, "Malignant neoplastic disease")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2012-12-01")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Erasmus' diagnostic report of Roel's tumor")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "DiagnosticReport/f201")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "361355005")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Entire head and neck")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetAge!.code!, "258707000")
		XCTAssertEqual(inst.onsetAge!.system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetAge!.units!, "years")
		XCTAssertEqual(inst.onsetAge!.value!, NSDecimalNumber(string: "52"))
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition8() throws {
		let instance = try testCondition8_impl()
		try testCondition8_impl(instance.asJSON())
	}
	
	func testCondition8_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f203-sepsis.json")
		
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.category!.coding![0].code!, "55607006")
		XCTAssertEqual(inst.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category!.coding![1].code!, "finding")
		XCTAssertEqual(inst.category!.coding![1].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "confirmed")
		XCTAssertEqual(inst.code!.coding![0].code!, "10001005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Bacterial sepsis")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-03-11")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f203")
		XCTAssertEqual(inst.evidence![0].detail![0].display!, "Diagnostic report for Roel's sepsis")
		XCTAssertEqual(inst.evidence![0].detail![0].reference!, "DiagnosticReport/f202")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "281158006")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Pulmonary vascular structure")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2013-03-08")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.severity!.coding![0].code!, "371924009")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Moderate to severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition9() throws {
		let instance = try testCondition9_impl()
		try testCondition9_impl(instance.asJSON())
	}
	
	func testCondition9_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f204-renal.json")
		
		XCTAssertEqual(inst.abatementDate!.description, "2013-03-20")
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.category!.coding![0].code!, "55607006")
		XCTAssertEqual(inst.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst.category!.coding![1].system!.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus!, "working")
		XCTAssertEqual(inst.code!.coding![0].code!, "36225005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Acute renal insufficiency specified as due to procedure")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-03-11")
		XCTAssertEqual(inst.dueTo![0].target!.display!, "TPF chemotherapy for the sphenoid bone")
		XCTAssertEqual(inst.dueTo![0].target!.reference!, "Procedure/f201")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f203")
		XCTAssertEqual(inst.id!, "f204")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].code!, "181414000")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].display!, "Kidney")
		XCTAssertEqual(inst.location![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetDateTime!.description, "2013-03-11")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.severity!.coding![0].code!, "24484000")
		XCTAssertEqual(inst.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst.severity!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage!.summary!.coding![0].code!, "14803004")
		XCTAssertEqual(inst.stage!.summary!.coding![0].display!, "Temporary")
		XCTAssertEqual(inst.stage!.summary!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testCondition10() throws {
		let instance = try testCondition10_impl()
		try testCondition10_impl(instance.asJSON())
	}
	
	func testCondition10_impl(json: FHIRJSON? = nil) throws -> Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f205-infection.json")
		
		XCTAssertEqual(inst.asserter!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.clinicalStatus!, "working")
		XCTAssertEqual(inst.code!.coding![0].code!, "87628006")
		XCTAssertEqual(inst.code!.coding![0].display!, "Bacterial infectious disease")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateAsserted!.description, "2013-04-04")
		XCTAssertEqual(inst.id!, "f205")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
