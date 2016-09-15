//
//  ConditionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ConditionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Condition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Condition {
		let instance = SwiftFHIR.Condition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCondition1() {
		do {
			let instance = try runCondition1()
			try runCondition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f001-heart.json")
		
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "40768004")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Left thorax")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "heart structure")
		XCTAssertEqual(inst.category?.coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?.coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "368009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Heart valve disorder")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2011-10-05")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].code, "426396005")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].display, "Cardiac chest pain")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.onsetDateTime?.description, "2011-08-05")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.severity?.coding?[0].code, "6736007")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Moderate")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition2() {
		do {
			let instance = try runCondition2()
			try runCondition2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f002-lung.json")
		
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "51185008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Thorax")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?.coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "254637007")
		XCTAssertEqual(inst.code?.coding?[0].display, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2012-06-03")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f002")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].code, "169069000")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].display, "CT of thorax")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.onsetDateTime?.description, "2011-05-05")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "258219007")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "stage II")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition3() {
		do {
			let instance = try runCondition3()
			try runCondition3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f003-abscess.json")
		
		XCTAssertEqual(inst.asserter?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.asserter?.reference, "Patient/f001")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "280193007")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "439401001")
		XCTAssertEqual(inst.category?.coding?[0].display, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "18099001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Retropharyngeal abscess")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2012-02-20")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f003")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].code, "169068008")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].display, "CT of neck")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.onsetDateTime?.description, "2012-02-27")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371923003")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild to moderate")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition4() {
		do {
			let instance = try runCondition4()
			try runCondition4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f201-fever.json")
		
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "38266002")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire body as a whole")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?.coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "finding")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "386661006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Fever")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2013-04-04")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f201")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].code, "258710007")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].display, "degrees C")
		XCTAssertEqual(inst.evidence?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Temperature")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "Observation/f202")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-04-02")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.severity?.coding?[0].code, "255604002")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition5() {
		do {
			let instance = try runCondition5()
			try runCondition5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f202-malignancy.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "361355005")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire head and neck")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "363346000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Malignant neoplastic disease")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2012-12-01")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Erasmus' diagnostic report of Roel's tumor")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f201")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.onsetQuantity?.code, "258707000")
		XCTAssertEqual(inst.onsetQuantity?.system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.onsetQuantity?.unit, "years")
		XCTAssertEqual(inst.onsetQuantity?.value, NSDecimalNumber(string: "52"))
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition6() {
		do {
			let instance = try runCondition6()
			try runCondition6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f203-sepsis.json")
		
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "281158006")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Pulmonary vascular structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?.coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "finding")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "10001005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial sepsis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2013-03-11")
		XCTAssertEqual(inst.encounter?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f203")
		XCTAssertEqual(inst.evidence?[0].detail?[0].display, "Diagnostic report for Roel's sepsis")
		XCTAssertEqual(inst.evidence?[0].detail?[0].reference, "DiagnosticReport/f202")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-08")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.severity?.coding?[0].code, "371924009")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Moderate to severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition7() {
		do {
			let instance = try runCondition7()
			try runCondition7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f204-renal.json")
		
		XCTAssertEqual(inst.abatementDateTime?.description, "2013-03-20")
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "181414000")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Kidney")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[0].code, "55607006")
		XCTAssertEqual(inst.category?.coding?[0].display, "Problem")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "finding")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "36225005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Acute renal insufficiency specified as due to procedure")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2013-03-11")
		XCTAssertEqual(inst.encounter?.display, "Roel's encounter on March eleventh")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f203")
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.onsetDateTime?.description, "2013-03-11")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].code, "14803004")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].display, "Temporary")
		XCTAssertEqual(inst.stage?.summary?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "differential")
		
		return inst
	}
	
	func testCondition8() {
		do {
			let instance = try runCondition8()
			try runCondition8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-f205-infection.json")
		
		XCTAssertEqual(inst.asserter?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "87628006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Bacterial infectious disease")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dateRecorded?.description, "2013-04-04")
		XCTAssertEqual(inst.id, "f205")
		XCTAssertEqual(inst.patient?.display, "Roel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "differential")
		
		return inst
	}
	
	func testCondition9() {
		do {
			let instance = try runCondition9()
			try runCondition9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example-stroke.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].display, "Diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.clinicalStatus, "active")
		XCTAssertEqual(inst.code?.coding?[0].code, "422504002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ischemic stroke (disorder)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Stroke")
		XCTAssertEqual(inst.id, "stroke")
		XCTAssertEqual(inst.onsetDateTime?.description, "2010-07-18")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div>Ischemic stroke, July 18, 2010</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
	
	func testCondition10() {
		do {
			let instance = try runCondition10()
			try runCondition10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Condition successfully, but threw")
		}
	}
	
	@discardableResult
	func runCondition10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Condition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "condition-example.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "49521004")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Left external ear structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "Left Ear")
		XCTAssertEqual(inst.category?.coding?[0].code, "diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].display, "Diagnosis")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/condition-category")
		XCTAssertEqual(inst.category?.coding?[1].code, "439401001")
		XCTAssertEqual(inst.category?.coding?[1].display, "Diagnosis")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "39065001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Burn of ear")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Burnt Ear")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.onsetDateTime?.description, "2012-05-24")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.severity?.coding?[0].code, "24484000")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Severe")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.div, "<div>Severe burn of left ear (Date: 24-May 2012)</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.verificationStatus, "confirmed")
		
		return inst
	}
}
