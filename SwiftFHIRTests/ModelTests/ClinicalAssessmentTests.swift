//
//  ClinicalAssessmentTests.swift
//  ClinicalAssessmentTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class ClinicalAssessmentTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ClinicalAssessment? {
		let json = readJSONFile(filename)
		let instance = ClinicalAssessment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testClinicalAssessment1() {
		let inst = instantiateFrom("clinicalassessment-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClinicalAssessment instance")
	
		XCTAssertEqual(inst!.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-06T22:33:00+11:00")!)
		XCTAssertEqual(inst!.description!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/sid/icd-9")!)
		XCTAssertEqual(inst!.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst!.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst!.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst!.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst!.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst!.problem![0].display!, "MVA")
		XCTAssertEqual(inst!.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
	}
	
	func testClinicalAssessment2() {
		let inst = instantiateFrom("clinicalassessment-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClinicalAssessment instance")
	
		XCTAssertEqual(inst!.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-06T22:33:00+11:00")!)
		XCTAssertEqual(inst!.description!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/sid/icd-9")!)
		XCTAssertEqual(inst!.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst!.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst!.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst!.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst!.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst!.problem![0].display!, "MVA")
		XCTAssertEqual(inst!.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
	}
	
	func testClinicalAssessment3() {
		let inst = instantiateFrom("clinicalassessment-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ClinicalAssessment instance")
	
		XCTAssertEqual(inst!.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.date!, NSDate.dateFromISOString("2014-12-06T22:33:00+11:00")!)
		XCTAssertEqual(inst!.description!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst!.diagnosis![0].item!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/sid/icd-9")!)
		XCTAssertEqual(inst!.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst!.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst!.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst!.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst!.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst!.problem![0].display!, "MVA")
		XCTAssertEqual(inst!.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
	}
}
