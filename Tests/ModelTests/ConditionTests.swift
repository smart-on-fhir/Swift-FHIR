//
//  ConditionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCondition = Models.Condition
#else
import SwiftFHIR
typealias SwiftFHIRCondition = SwiftFHIR.Condition
#endif


class ConditionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCondition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCondition {
		return try SwiftFHIRCondition(json: json)
	}
	
	func testCondition1() {
		do {
			let instance = try runCondition1()
			try runCondition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f001-heart.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2011-10-05")
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "40768004")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Left thorax")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "heart structure")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "368009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Heart valve disorder")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f001")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "426396005")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.onsetDateTime?.description, "2011-08-05")
		XCTAssertEqual(inst.severity?.coding?[0].code, "6736007")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Moderate")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition2() {
		do {
			let instance = try runCondition2()
			try runCondition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f002-lung.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2012-06-03")
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "51185008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Thorax")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "254637007")
		XCTAssertEqual(inst.code?.coding?[0].display, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f002")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "169069000")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "CT of thorax")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.onsetDateTime?.description, "2011-05-05")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "258219007")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "stage II")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition3() {
		do {
			let instance = try runCondition3()
			try runCondition3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f003-abscess.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2012-02-20")
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "280193007")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "18099001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "169068008")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "CT of neck")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.onsetDateTime?.description, "2012-02-27")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371923003")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild to moderate")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition4() {
		do {
			let instance = try runCondition4()
			try runCondition4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f201-fever.json")
		
		XCTAssertEqual(inst.abatementString, "around April 9, 2013")
		XCTAssertEqual(inst.assertedDate?.description, "2013-04-04")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "38266002")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire body as a whole")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "resolved")
		XCTAssertEqual(inst.code?.coding?[0].code, "386661006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Fever")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f201")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].code, "258710007")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].display, "degrees C")
		XCTAssertEqual(inst.evidence?[0].code?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Temperature")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "Observation/f202")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-04-02")
		XCTAssertEqual(inst.severity?.coding?[0].code, "255604002")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition5() {
		do {
			let instance = try runCondition5()
			try runCondition5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f202-malignancy.json")
		
		XCTAssertEqual(inst.abatementAge?.code, "a")
		XCTAssertEqual(inst.abatementAge?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.abatementAge?.unit, "years")
		XCTAssertEqual(inst.abatementAge?.value, "54")
		XCTAssertEqual(inst.assertedDate?.description, "2012-12-01")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "361355005")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire head and neck")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "encounter-diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "resolved")
		XCTAssertEqual(inst.code?.coding?[0].code, "363346000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Malignant neoplastic disease")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Erasmus' diagnostic report of Roel's tumor")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f201")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.meta?.security?[0].code, "TBOO")
		XCTAssertEqual(inst.meta?.security?[0].display, "taboo")
		XCTAssertEqual(inst.meta?.security?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.onsetAge?.code, "a")
		XCTAssertEqual(inst.onsetAge?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.onsetAge?.unit, "years")
		XCTAssertEqual(inst.onsetAge?.value, "52")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition6() {
		do {
			let instance = try runCondition6()
			try runCondition6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f203-sepsis.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2013-03-11")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "281158006")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Pulmonary vascular structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "10001005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial sepsis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.context?.reference, "Encounter/f203")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Diagnostic report for Roel's sepsis")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f202")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-08")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371924009")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Moderate to severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
	
	func testCondition7() {
		do {
			let instance = try runCondition7()
			try runCondition7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f204-renal.json")
		
		XCTAssertEqual(inst.abatementDateTime?.description, "2013-03-20")
		XCTAssertEqual(inst.assertedDate?.description, "2013-03-11")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "181414000")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Kidney")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "36225005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Acute renal insufficiency specified as due to procedure")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.context?.reference, "Encounter/f203")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.note?[0].text, "The patient is anuric.")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-11")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.assessment?[0].display, "Genetic analysis master panel")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "14803004")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "Temporary")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "differential")!)
		
		return inst
	}
	
	func testCondition8() {
		do {
			let instance = try runCondition8()
			try runCondition8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f205-infection.json")
		
		XCTAssertEqual(inst.assertedDate?.description, "2013-04-04")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "87628006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial infectious disease")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f205")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "differential")!)
		
		return inst
	}
	
	func testCondition9() {
		do {
			let instance = try runCondition9()
			try runCondition9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-family-history.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "problem-list-item")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Problem List Item")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "312824007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Family history of cancer of colon")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "family-history")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Family history of cancer of colon</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCondition10() {
		do {
			let instance = try runCondition10()
			try runCondition10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCondition10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCondition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-stroke.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "encounter-diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Encounter Diagnosis")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "422504002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ischemic stroke (disorder)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Stroke")
		XCTAssertEqual(inst.id, "stroke")
		XCTAssertEqual(inst.onsetDateTime?.description, "2010-07-18")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ischemic stroke, July 18, 2010</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.verificationStatus, ConditionVerificationStatus(rawValue: "confirmed")!)
		
		return inst
	}
}
