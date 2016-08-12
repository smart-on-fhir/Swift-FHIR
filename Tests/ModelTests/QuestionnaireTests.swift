//
//  QuestionnaireTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class QuestionnaireTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> Questionnaire {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Questionnaire {
		let instance = Questionnaire(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaire1() {
		do {
			let instance = try runQuestionnaire1()
			try runQuestionnaire1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw")
		}
	}
	
	func runQuestionnaire1(json: FHIRJSON? = nil) throws -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-bluebook.json")
		
		XCTAssertEqual(inst.date?.description, "2013-02-19")
		XCTAssertEqual(inst.id, "bb")
		XCTAssertEqual(inst.item![0].item![0].item![0].linkId, "nameOfChild")
		XCTAssertEqual(inst.item![0].item![0].item![0].text, "Name of child")
		XCTAssertEqual(inst.item![0].item![0].item![0].type, "string")
		XCTAssertEqual(inst.item![0].item![0].item![1].linkId, "sex")
		XCTAssertEqual(inst.item![0].item![0].item![1].option![0].valueCoding!.code, "F")
		XCTAssertEqual(inst.item![0].item![0].item![1].option![1].valueCoding!.code, "M")
		XCTAssertEqual(inst.item![0].item![0].item![1].text, "Sex")
		XCTAssertEqual(inst.item![0].item![0].item![1].type, "choice")
		XCTAssertEqual(inst.item![0].item![0].type, "group")
		XCTAssertEqual(inst.item![0].item![1].item![0].linkId, "birthWeight")
		XCTAssertEqual(inst.item![0].item![1].item![0].text, "Birth weight (kg)")
		XCTAssertEqual(inst.item![0].item![1].item![0].type, "decimal")
		XCTAssertEqual(inst.item![0].item![1].item![1].linkId, "birthLength")
		XCTAssertEqual(inst.item![0].item![1].item![1].text, "Birth length (cm)")
		XCTAssertEqual(inst.item![0].item![1].item![1].type, "decimal")
		XCTAssertTrue(inst.item![0].item![1].item![2].item![0].enableWhen![0].hasAnswer ?? false)
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].enableWhen![0].question, "vitaminKgiven")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![0].linkId, "vitaminiKDose1")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![0].text, "1st dose")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![0].type, "dateTime")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![1].linkId, "vitaminiKDose2")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![1].text, "2nd dose")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].item![1].type, "dateTime")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].linkId, "vitaminKgivenDoses")
		XCTAssertEqual(inst.item![0].item![1].item![2].item![0].type, "group")
		XCTAssertEqual(inst.item![0].item![1].item![2].linkId, "vitaminKgiven")
		XCTAssertEqual(inst.item![0].item![1].item![2].option![0].valueCoding!.code, "INJECTION")
		XCTAssertEqual(inst.item![0].item![1].item![2].option![1].valueCoding!.code, "INTRAVENOUS")
		XCTAssertEqual(inst.item![0].item![1].item![2].option![2].valueCoding!.code, "ORAL")
		XCTAssertEqual(inst.item![0].item![1].item![2].text, "Vitamin K given")
		XCTAssertEqual(inst.item![0].item![1].item![2].type, "choice")
		XCTAssertEqual(inst.item![0].item![1].item![3].item![0].linkId, "hepBgivenDate")
		XCTAssertEqual(inst.item![0].item![1].item![3].item![0].text, "Date given")
		XCTAssertEqual(inst.item![0].item![1].item![3].item![0].type, "date")
		XCTAssertEqual(inst.item![0].item![1].item![3].linkId, "hepBgiven")
		XCTAssertEqual(inst.item![0].item![1].item![3].text, "Hep B given y / n")
		XCTAssertEqual(inst.item![0].item![1].item![3].type, "boolean")
		XCTAssertEqual(inst.item![0].item![1].item![4].linkId, "abnormalitiesAtBirth")
		XCTAssertEqual(inst.item![0].item![1].item![4].text, "Abnormalities noted at birth")
		XCTAssertEqual(inst.item![0].item![1].item![4].type, "string")
		XCTAssertEqual(inst.item![0].item![1].linkId, "neonatalInformation")
		XCTAssertEqual(inst.item![0].item![1].text, "Neonatal Information")
		XCTAssertEqual(inst.item![0].item![1].type, "group")
		XCTAssertEqual(inst.item![0].linkId, "birthDetails")
		XCTAssertEqual(inst.item![0].text, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.item![0].type, "group")
		XCTAssertEqual(inst.publisher, "New South Wales Department of Health")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.subjectType![0], "Patient")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.title, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/bb")
		
		return inst
	}
	
	func testQuestionnaire2() {
		do {
			let instance = try runQuestionnaire2()
			try runQuestionnaire2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw")
		}
	}
	
	func runQuestionnaire2(json: FHIRJSON? = nil) throws -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.concept![0].code, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.concept![0].display, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.concept![0].system?.absoluteString, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.date?.description, "2010")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.item![0].linkId, "1")
		XCTAssertEqual(inst.item![0].text, "Do you have allergies?")
		XCTAssertEqual(inst.item![0].type, "boolean")
		XCTAssertEqual(inst.item![1].item![0].linkId, "2.1")
		XCTAssertEqual(inst.item![1].item![0].text, "What is your gender?")
		XCTAssertEqual(inst.item![1].item![0].type, "string")
		XCTAssertEqual(inst.item![1].item![1].linkId, "2.2")
		XCTAssertEqual(inst.item![1].item![1].text, "What is your date of birth?")
		XCTAssertEqual(inst.item![1].item![1].type, "date")
		XCTAssertEqual(inst.item![1].item![2].linkId, "2.3")
		XCTAssertEqual(inst.item![1].item![2].text, "What is your country of birth?")
		XCTAssertEqual(inst.item![1].item![2].type, "string")
		XCTAssertEqual(inst.item![1].item![3].linkId, "2.4")
		XCTAssertEqual(inst.item![1].item![3].text, "What is your marital status?")
		XCTAssertEqual(inst.item![1].item![3].type, "string")
		XCTAssertEqual(inst.item![1].linkId, "2")
		XCTAssertEqual(inst.item![1].text, "General questions")
		XCTAssertEqual(inst.item![1].type, "group")
		XCTAssertEqual(inst.item![2].item![0].linkId, "3.1")
		XCTAssertEqual(inst.item![2].item![0].text, "Do you smoke?")
		XCTAssertEqual(inst.item![2].item![0].type, "boolean")
		XCTAssertEqual(inst.item![2].item![1].linkId, "3.2")
		XCTAssertEqual(inst.item![2].item![1].text, "Do you drink alchohol?")
		XCTAssertEqual(inst.item![2].item![1].type, "boolean")
		XCTAssertEqual(inst.item![2].linkId, "3")
		XCTAssertEqual(inst.item![2].text, "Intoxications")
		XCTAssertEqual(inst.item![2].type, "group")
		XCTAssertEqual(inst.status, "published")
		XCTAssertEqual(inst.subjectType![0], "Patient")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/f201")
		
		return inst
	}
	
	func testQuestionnaire3() {
		do {
			let instance = try runQuestionnaire3()
			try runQuestionnaire3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw")
		}
	}
	
	func runQuestionnaire3(json: FHIRJSON? = nil) throws -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-gcs.json")
		
		XCTAssertEqual(inst.concept![0].code, "9269-2")
		XCTAssertEqual(inst.concept![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contained![0].id, "motor")
		XCTAssertEqual(inst.contained![1].id, "verbal")
		XCTAssertEqual(inst.contained![2].id, "eye")
		XCTAssertEqual(inst.date?.description, "2015-08-03")
		XCTAssertEqual(inst.id, "gcs")
		XCTAssertEqual(inst.item![0].concept![0].code, "9270-0")
		XCTAssertEqual(inst.item![0].concept![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].linkId, "1.1")
		XCTAssertEqual(inst.item![0].options!.reference, "#verbal")
		XCTAssertEqual(inst.item![0].type, "choice")
		XCTAssertEqual(inst.item![1].concept![0].code, "9268-4")
		XCTAssertEqual(inst.item![1].concept![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![1].linkId, "1.2")
		XCTAssertEqual(inst.item![1].options!.reference, "#motor")
		XCTAssertEqual(inst.item![1].type, "choice")
		XCTAssertEqual(inst.item![2].concept![0].code, "9267-6")
		XCTAssertEqual(inst.item![2].concept![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![2].linkId, "1.3")
		XCTAssertEqual(inst.item![2].options!.reference, "#eye")
		XCTAssertEqual(inst.item![2].type, "choice")
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.subjectType![0], "Patient")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.title, "Glasgow Coma Score")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/gcs")
		
		return inst
	}
	
	func testQuestionnaire4() {
		do {
			let instance = try runQuestionnaire4()
			try runQuestionnaire4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw")
		}
	}
	
	func runQuestionnaire4(json: FHIRJSON? = nil) throws -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example.json")
		
		XCTAssertEqual(inst.date?.description, "2012-01")
		XCTAssertEqual(inst.id, "3141")
		XCTAssertEqual(inst.item![0].concept![0].code, "COMORBIDITY")
		XCTAssertEqual(inst.item![0].concept![0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item![0].item![0].concept![0].code, "COMORB")
		XCTAssertEqual(inst.item![0].item![0].concept![0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item![0].item![0].item![0].concept![0].code, "CARDIAL")
		XCTAssertEqual(inst.item![0].item![0].item![0].concept![0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![0].concept![0].code, "COMORBCAR")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![0].concept![0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![0].linkId, "1.1.1.1")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![0].options!.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![0].type, "choice")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![0].code, "COMCAR00")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![0].display, "Angina Pectoris")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![1].code, "194828000")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![1].display, "Angina (disorder)")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].concept![1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].linkId, "1.1.1.2")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].options!.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![1].type, "choice")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].concept![0].code, "22298006")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].concept![0].display, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].concept![0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].linkId, "1.1.1.3")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].options!.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item![0].item![0].item![0].item![2].type, "choice")
		XCTAssertEqual(inst.item![0].item![0].item![0].linkId, "1.1.1")
		XCTAssertEqual(inst.item![0].item![0].item![0].type, "group")
		XCTAssertEqual(inst.item![0].item![0].linkId, "1.1")
		XCTAssertEqual(inst.item![0].item![0].options!.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item![0].item![0].type, "choice")
		XCTAssertEqual(inst.item![0].linkId, "1")
		XCTAssertEqual(inst.item![0].type, "group")
		XCTAssertEqual(inst.item![1].concept![0].code, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.item![1].concept![0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item![1].item![0].concept![0].code, "ABDOMINAL")
		XCTAssertEqual(inst.item![1].item![0].concept![0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item![1].item![0].item![0].concept![0].code, "STADPT")
		XCTAssertEqual(inst.item![1].item![0].item![0].concept![0].display, "pT category")
		XCTAssertEqual(inst.item![1].item![0].item![0].concept![0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item![1].item![0].item![0].linkId, "2.1.2")
		XCTAssertEqual(inst.item![1].item![0].item![0].type, "choice")
		XCTAssertEqual(inst.item![1].item![0].linkId, "2.1")
		XCTAssertEqual(inst.item![1].item![0].type, "group")
		XCTAssertEqual(inst.item![1].linkId, "2")
		XCTAssertEqual(inst.item![1].type, "group")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.subjectType![0], "Patient")
		XCTAssertEqual(inst.text!.status, "generated")
		XCTAssertEqual(inst.title, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/3141")
		
		return inst
	}
}
