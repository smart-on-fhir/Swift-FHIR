//
//  ClinicalAssessmentTests.swift
//  ClinicalAssessmentTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ClinicalAssessmentTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ClinicalAssessment {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ClinicalAssessment {
		let instance = ClinicalAssessment(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testClinicalAssessment1() {
		let instance = testClinicalAssessment1_impl()
		testClinicalAssessment1_impl(json: instance.asJSON())
	}
	
	func testClinicalAssessment1_impl(json: JSONDictionary? = nil) -> ClinicalAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "clinicalassessment-example.canonical.json")
		
		XCTAssertEqual(inst.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.date!.description, "2014-12-06T22:33:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst.problem![0].display!, "MVA")
		XCTAssertEqual(inst.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testClinicalAssessment2() {
		let instance = testClinicalAssessment2_impl()
		testClinicalAssessment2_impl(json: instance.asJSON())
	}
	
	func testClinicalAssessment2_impl(json: JSONDictionary? = nil) -> ClinicalAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "clinicalassessment-example.canonical.json")
		
		XCTAssertEqual(inst.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.date!.description, "2014-12-06T22:33:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst.problem![0].display!, "MVA")
		XCTAssertEqual(inst.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testClinicalAssessment3() {
		let instance = testClinicalAssessment3_impl()
		testClinicalAssessment3_impl(json: instance.asJSON())
	}
	
	func testClinicalAssessment3_impl(json: JSONDictionary? = nil) -> ClinicalAssessment {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "clinicalassessment-example.json")
		
		XCTAssertEqual(inst.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.date!.description, "2014-12-06T22:33:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst.diagnosis![0].item!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.plan!.display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst.problem![0].display!, "MVA")
		XCTAssertEqual(inst.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
