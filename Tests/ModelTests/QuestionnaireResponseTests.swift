//
//  QuestionnaireResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class QuestionnaireResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.QuestionnaireResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.QuestionnaireResponse {
		let instance = SwiftFHIR.QuestionnaireResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaireResponse1() {
		do {
			let instance = try runQuestionnaireResponse1()
			try runQuestionnaireResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test QuestionnaireResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runQuestionnaireResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-bluebook.json")
		
		XCTAssertEqual(inst.author?.reference, "http://hl7.org/fhir/Practitioner/example")
		XCTAssertEqual(inst.authored?.description, "2013-02-19T14:15:00+10:00")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[0].answer?[0].valueString, "Cathy Jones")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[0].linkId, "nameOfChild")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[0].text, "Name of child")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[1].answer?[0].valueCoding?.code, "f")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[1].linkId, "sex")
		XCTAssertEqual(inst.group?.group?[0].group?[0].question?[1].text, "Sex")
		XCTAssertEqual(inst.group?.group?[0].group?[1].linkId, "neonatalInformation")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[0].answer?[0].valueDecimal, NSDecimalNumber(string: "3.25"))
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[0].linkId, "birthWeight")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[0].text, "Birth weight (kg)")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[1].answer?[0].valueDecimal, NSDecimalNumber(string: "44.3"))
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[1].linkId, "birthLength")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[1].text, "Birth length (cm)")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].extension_fhir?[0].url?.absoluteString, "http://example.org/Profile/questionnaire#visibilityCondition")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].extension_fhir?[0].valueString, "HAS_VALUE(../choice/code) AND NEQ(../choice/code,'NO')")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].linkId, "vitaminKgivenDoses")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[0].answer?[0].valueDate?.description, "1972-11-30")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[0].linkId, "vitaminiKDose1")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[0].text, "1st dose")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[1].answer?[0].valueDate?.description, "1972-12-11")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[1].linkId, "vitaminiKDose2")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].group?[0].question?[1].text, "2nd dose")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].answer?[0].valueCoding?.code, "INJECTION")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].linkId, "vitaminKgiven")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[2].text, "Vitamin K given")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[3].answer?[0].group?[0].linkId, "hepBgivenDate")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[3].answer?[0].group?[0].question?[0].answer?[0].valueDate?.description, "1972-12-04")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[3].answer?[0].group?[0].question?[0].text, "Date given")
		XCTAssertTrue(inst.group?.group?[0].group?[1].question?[3].answer?[0].valueBoolean ?? false)
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[3].linkId, "hepBgiven")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[3].text, "Hep B given y / n")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[4].answer?[0].valueString, "Already able to speak Chinese")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[4].linkId, "abnormalitiesAtBirth")
		XCTAssertEqual(inst.group?.group?[0].group?[1].question?[4].text, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group?.group?[0].group?[1].title, "Neonatal Information")
		XCTAssertEqual(inst.group?.group?[0].linkId, "birthDetails")
		XCTAssertEqual(inst.group?.group?[0].title, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group?.linkId, "PHR")
		XCTAssertEqual(inst.group?.title, "NSW Government My Personal Health Record, january 2013")
		XCTAssertEqual(inst.id, "bb")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "http://hl7.org/fhir/Patient/1")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testQuestionnaireResponse2() {
		do {
			let instance = try runQuestionnaireResponse2()
			try runQuestionnaireResponse2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test QuestionnaireResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runQuestionnaireResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.authored?.description, "2013-06-18T00:00:00+01:00")
		XCTAssertEqual(inst.group?.group?[0].linkId, "1")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].valueString, "I am allergic to house dust")
		XCTAssertEqual(inst.group?.group?[0].question?[0].linkId, "1.1")
		XCTAssertEqual(inst.group?.group?[0].question?[0].text, "Do you have allergies?")
		XCTAssertEqual(inst.group?.group?[1].linkId, "2")
		XCTAssertEqual(inst.group?.group?[1].question?[0].answer?[0].valueString, "Male")
		XCTAssertEqual(inst.group?.group?[1].question?[0].linkId, "2.1")
		XCTAssertEqual(inst.group?.group?[1].question?[0].text, "What is your gender?")
		XCTAssertEqual(inst.group?.group?[1].question?[1].answer?[0].valueDate?.description, "1960-03-13")
		XCTAssertEqual(inst.group?.group?[1].question?[1].linkId, "2.2")
		XCTAssertEqual(inst.group?.group?[1].question?[1].text, "What is your date of birth?")
		XCTAssertEqual(inst.group?.group?[1].question?[2].answer?[0].valueString, "The Netherlands")
		XCTAssertEqual(inst.group?.group?[1].question?[2].linkId, "2.3")
		XCTAssertEqual(inst.group?.group?[1].question?[2].text, "What is your country of birth?")
		XCTAssertEqual(inst.group?.group?[1].question?[3].answer?[0].valueString, "married")
		XCTAssertEqual(inst.group?.group?[1].question?[3].linkId, "2.4")
		XCTAssertEqual(inst.group?.group?[1].question?[3].text, "What is your marital status?")
		XCTAssertEqual(inst.group?.group?[1].title, "General questions")
		XCTAssertEqual(inst.group?.group?[2].linkId, "3")
		XCTAssertEqual(inst.group?.group?[2].question?[0].answer?[0].valueString, "No")
		XCTAssertEqual(inst.group?.group?[2].question?[0].linkId, "3.1")
		XCTAssertEqual(inst.group?.group?[2].question?[0].text, "Do you smoke?")
		XCTAssertEqual(inst.group?.group?[2].question?[1].answer?[0].valueString, "No, but I used to drink")
		XCTAssertEqual(inst.group?.group?[2].question?[1].linkId, "3.2")
		XCTAssertEqual(inst.group?.group?[2].question?[1].text, "Do you drink alchohol?")
		XCTAssertEqual(inst.group?.group?[2].title, "Intoxications")
		XCTAssertEqual(inst.group?.linkId, "root")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.source?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testQuestionnaireResponse3() {
		do {
			let instance = try runQuestionnaireResponse3()
			try runQuestionnaireResponse3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test QuestionnaireResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runQuestionnaireResponse3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-gcs.json")
		
		XCTAssertEqual(inst.authored?.description, "2014-12-11T04:44:16Z")
		XCTAssertEqual(inst.group?.linkId, "1")
		XCTAssertEqual(inst.group?.question?[0].answer?[0].valueCoding?.code, "LA6560-2")
		XCTAssertEqual(inst.group?.question?[0].answer?[0].valueCoding?.display, "Confused")
		XCTAssertEqual(inst.group?.question?[0].answer?[0].valueCoding?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.group?.question?[0].answer?[0].valueCoding?.extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "4"))
		XCTAssertEqual(inst.group?.question?[0].answer?[0].valueCoding?.system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.group?.question?[0].linkId, "1.1")
		XCTAssertEqual(inst.group?.question?[1].answer?[0].valueCoding?.code, "LA6566-9")
		XCTAssertEqual(inst.group?.question?[1].answer?[0].valueCoding?.display, "Localizing pain")
		XCTAssertEqual(inst.group?.question?[1].answer?[0].valueCoding?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.group?.question?[1].answer?[0].valueCoding?.extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.group?.question?[1].answer?[0].valueCoding?.system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.group?.question?[1].linkId, "1.2")
		XCTAssertEqual(inst.group?.question?[2].answer?[0].valueCoding?.code, "LA6556-0")
		XCTAssertEqual(inst.group?.question?[2].answer?[0].valueCoding?.display, "Eyes open spontaneously")
		XCTAssertEqual(inst.group?.question?[2].answer?[0].valueCoding?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.group?.question?[2].answer?[0].valueCoding?.extension_fhir?[0].valueDecimal, NSDecimalNumber(string: "4"))
		XCTAssertEqual(inst.group?.question?[2].answer?[0].valueCoding?.system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.group?.question?[2].linkId, "1.3")
		XCTAssertEqual(inst.group?.title, "Glasgow Coma Score")
		XCTAssertEqual(inst.id, "gcs")
		XCTAssertEqual(inst.questionnaire?.reference, "Questionnaire/gcs")
		XCTAssertEqual(inst.source?.reference, "Practitioner/f007")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testQuestionnaireResponse4() {
		do {
			let instance = try runQuestionnaireResponse4()
			try runQuestionnaireResponse4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test QuestionnaireResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runQuestionnaireResponse4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example.json")
		
		XCTAssertEqual(inst.author?.reference, "#questauth")
		XCTAssertEqual(inst.authored?.description, "2013-02-19T14:15:00-05:00")
		XCTAssertEqual(inst.contained?[0].id, "patsub")
		XCTAssertEqual(inst.contained?[1].id, "questauth")
		XCTAssertEqual(inst.contained?[2].id, "obs.pt-category")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[0].answer?[0].valueCoding?.code, "1")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[0].answer?[0].valueCoding?.system?.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[1].answer?[0].valueCoding?.code, "1")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[1].answer?[0].valueCoding?.system?.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[2].answer?[0].valueCoding?.code, "0")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].group?[0].question?[2].answer?[0].valueCoding?.system?.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].valueCoding?.code, "1")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].valueCoding?.display, "Yes")
		XCTAssertEqual(inst.group?.group?[0].question?[0].answer?[0].valueCoding?.system?.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group?.title, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id, "3141")
		XCTAssertEqual(inst.status, "completed")
		XCTAssertEqual(inst.subject?.reference, "#patsub")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
