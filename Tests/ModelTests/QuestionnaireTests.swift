//
//  QuestionnaireTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRQuestionnaire = SwiftFHIR.Questionnaire


class QuestionnaireTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRQuestionnaire {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRQuestionnaire {
		return try SwiftFHIRQuestionnaire(json: json)
	}
	
	func testQuestionnaire1() {
		do {
			let instance = try runQuestionnaire1()
			try runQuestionnaire1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runQuestionnaire1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRQuestionnaire {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-bluebook.json")
		
		XCTAssertEqual(inst.date?.description, "2013-02-19")
		XCTAssertEqual(inst.id, "bb")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].linkId, "nameOfChild")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].text, "Name of child")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].linkId, "sex")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].option?[0].valueCoding?.code, "F")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].option?[1].valueCoding?.code, "M")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].text, "Sex")
		XCTAssertEqual(inst.item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].linkId, "group")
		XCTAssertEqual(inst.item?[0].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].linkId, "birthWeight")
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].text, "Birth weight (kg)")
		XCTAssertEqual(inst.item?[0].item?[1].item?[0].type, QuestionnaireItemType(rawValue: "decimal")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].linkId, "birthLength")
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].text, "Birth length (cm)")
		XCTAssertEqual(inst.item?[0].item?[1].item?[1].type, QuestionnaireItemType(rawValue: "decimal")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].enableWhen?[0].hasAnswer, true)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].enableWhen?[0].question, "vitaminKgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].linkId, "vitaminiKDose1")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].text, "1st dose")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "dateTime")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].linkId, "vitaminiKDose2")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].text, "2nd dose")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "dateTime")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].linkId, "vitaminKgivenDoses")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].linkId, "vitaminKgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[0].valueCoding?.code, "INJECTION")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[1].valueCoding?.code, "INTRAVENOUS")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].option?[2].valueCoding?.code, "ORAL")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].text, "Vitamin K given")
		XCTAssertEqual(inst.item?[0].item?[1].item?[2].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].linkId, "hepBgivenDate")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].text, "Date given")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].item?[0].type, QuestionnaireItemType(rawValue: "date")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].linkId, "hepBgiven")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].text, "Hep B given y / n")
		XCTAssertEqual(inst.item?[0].item?[1].item?[3].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].linkId, "abnormalitiesAtBirth")
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].text, "Abnormalities noted at birth")
		XCTAssertEqual(inst.item?[0].item?[1].item?[4].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[0].item?[1].linkId, "neonatalInformation")
		XCTAssertEqual(inst.item?[0].item?[1].text, "Neonatal Information")
		XCTAssertEqual(inst.item?[0].item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].linkId, "birthDetails")
		XCTAssertEqual(inst.item?[0].text, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "AU")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.publisher, "New South Wales Department of Health")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/bb")
		
		return inst
	}
	
	func testQuestionnaire2() {
		do {
			let instance = try runQuestionnaire2()
			try runQuestionnaire2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runQuestionnaire2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRQuestionnaire {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.code?[0].code, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.code?[0].display, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.code?[0].system?.absoluteString, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.date?.description, "2010")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.item?[0].linkId, "1")
		XCTAssertEqual(inst.item?[0].text, "Do you have allergies?")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[1].item?[0].linkId, "2.1")
		XCTAssertEqual(inst.item?[1].item?[0].text, "What is your gender?")
		XCTAssertEqual(inst.item?[1].item?[0].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].item?[1].linkId, "2.2")
		XCTAssertEqual(inst.item?[1].item?[1].text, "What is your date of birth?")
		XCTAssertEqual(inst.item?[1].item?[1].type, QuestionnaireItemType(rawValue: "date")!)
		XCTAssertEqual(inst.item?[1].item?[2].linkId, "2.3")
		XCTAssertEqual(inst.item?[1].item?[2].text, "What is your country of birth?")
		XCTAssertEqual(inst.item?[1].item?[2].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].item?[3].linkId, "2.4")
		XCTAssertEqual(inst.item?[1].item?[3].text, "What is your marital status?")
		XCTAssertEqual(inst.item?[1].item?[3].type, QuestionnaireItemType(rawValue: "string")!)
		XCTAssertEqual(inst.item?[1].linkId, "2")
		XCTAssertEqual(inst.item?[1].text, "General questions")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[2].item?[0].linkId, "3.1")
		XCTAssertEqual(inst.item?[2].item?[0].text, "Do you smoke?")
		XCTAssertEqual(inst.item?[2].item?[0].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[2].item?[1].linkId, "3.2")
		XCTAssertEqual(inst.item?[2].item?[1].text, "Do you drink alchohol?")
		XCTAssertEqual(inst.item?[2].item?[1].type, QuestionnaireItemType(rawValue: "boolean")!)
		XCTAssertEqual(inst.item?[2].linkId, "3")
		XCTAssertEqual(inst.item?[2].text, "Intoxications")
		XCTAssertEqual(inst.item?[2].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/f201")
		
		return inst
	}
	
	func testQuestionnaire3() {
		do {
			let instance = try runQuestionnaire3()
			try runQuestionnaire3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runQuestionnaire3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRQuestionnaire {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example-gcs.json")
		
		XCTAssertEqual(inst.code?[0].code, "9269-2")
		XCTAssertEqual(inst.code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contained?[0].id, "motor")
		XCTAssertEqual(inst.contained?[1].id, "verbal")
		XCTAssertEqual(inst.contained?[2].id, "eye")
		XCTAssertEqual(inst.date?.description, "2015-08-03")
		XCTAssertEqual(inst.id, "gcs")
		XCTAssertEqual(inst.item?[0].code?[0].code, "9270-0")
		XCTAssertEqual(inst.item?[0].code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item?[0].linkId, "1.1")
		XCTAssertEqual(inst.item?[0].options?.reference, "#verbal")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[1].code?[0].code, "9268-4")
		XCTAssertEqual(inst.item?[1].code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item?[1].linkId, "1.2")
		XCTAssertEqual(inst.item?[1].options?.reference, "#motor")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[2].code?[0].code, "9267-6")
		XCTAssertEqual(inst.item?[2].code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item?[2].linkId, "1.3")
		XCTAssertEqual(inst.item?[2].options?.reference, "#eye")
		XCTAssertEqual(inst.item?[2].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.publisher, "FHIR Project team")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Glasgow Coma Score")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/gcs")
		
		return inst
	}
	
	func testQuestionnaire4() {
		do {
			let instance = try runQuestionnaire4()
			try runQuestionnaire4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Questionnaire successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runQuestionnaire4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRQuestionnaire {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaire-example.json")
		
		XCTAssertEqual(inst.date?.description, "2012-01")
		XCTAssertEqual(inst.id, "3141")
		XCTAssertEqual(inst.item?[0].code?[0].code, "COMORBIDITY")
		XCTAssertEqual(inst.item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[0].item?[0].code?[0].code, "COMORB")
		XCTAssertEqual(inst.item?[0].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].code?[0].code, "CARDIAL")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].answerCoding?.code, "Y")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].answerCoding?.system?.absoluteString, "http://hl7.org/fhir/v2/0136")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].enableWhen?[0].question, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].code?[0].code, "COMORBCAR")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].code, "COMCAR00")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].display, "Angina Pectoris")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].code, "194828000")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].display, "Angina (disorder)")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].code?[1].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].linkId, "1.1.1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].prefix, "1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].code, "22298006")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].display, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].code?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].linkId, "1.1.1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].prefix, "1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].linkId, "1.1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].prefix, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].code?[0].code, "COMORBVAS")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].code?[0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].linkId, "1.1.1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].prefix, "1.2")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].item?[1].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].linkId, "1.1.1")
		XCTAssertEqual(inst.item?[0].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[0].item?[0].linkId, "1.1")
		XCTAssertEqual(inst.item?[0].item?[0].options?.reference, "http://hl7.org/fhir/ValueSet/yesnodontknow")
		XCTAssertEqual(inst.item?[0].item?[0].prefix, "1")
		XCTAssertEqual(inst.item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[0].linkId, "1")
		XCTAssertEqual(inst.item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[1].code?[0].code, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.item?[1].code?[0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[1].item?[0].code?[0].code, "ABDOMINAL")
		XCTAssertEqual(inst.item?[1].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].code, "STADPT")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].display, "pT category")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].code?[0].system?.absoluteString, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].linkId, "2.1.2")
		XCTAssertEqual(inst.item?[1].item?[0].item?[0].type, QuestionnaireItemType(rawValue: "choice")!)
		XCTAssertEqual(inst.item?[1].item?[0].linkId, "2.1")
		XCTAssertEqual(inst.item?[1].item?[0].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.item?[1].linkId, "2")
		XCTAssertEqual(inst.item?[1].type, QuestionnaireItemType(rawValue: "group")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.subjectType?[0], "Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Questionnaire/3141")
		
		return inst
	}
}
