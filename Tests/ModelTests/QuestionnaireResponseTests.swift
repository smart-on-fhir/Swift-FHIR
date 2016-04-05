//
//  QuestionnaireResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class QuestionnaireResponseTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> QuestionnaireResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> QuestionnaireResponse {
		let instance = QuestionnaireResponse(json: json)
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
	
	func runQuestionnaireResponse1(json: FHIRJSON? = nil) throws -> QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-bluebook.json")
		
		XCTAssertEqual(inst.author!.reference!, "http://hl7.org/fhir/Practitioner/example")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00+10:00")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.item![0].item![0].item![0].answer![0].valueString!, "Cathy Jones")
		XCTAssertEqual(inst.item![0].item![0].item![0].linkId!, "nameOfChild")
		XCTAssertEqual(inst.item![0].item![0].item![0].text!, "Name of child")
		XCTAssertEqual(inst.item![0].item![0].item![1].answer![0].valueCoding!.code!, "f")
		XCTAssertEqual(inst.item![0].item![0].item![1].linkId!, "sex")
		XCTAssertEqual(inst.item![0].item![0].item![1].text!, "Sex")
		XCTAssertEqual(inst.item![0].item![1].item![0].answer![0].valueDecimal!, NSDecimalNumber(string: "3.25"))
		XCTAssertEqual(inst.item![0].item![1].item![0].linkId!, "birthWeight")
		XCTAssertEqual(inst.item![0].item![1].item![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.item![0].item![1].item![1].answer![0].valueDecimal!, NSDecimalNumber(string: "44.3"))
		XCTAssertEqual(inst.item![0].item![1].item![1].linkId!, "birthLength")
		XCTAssertEqual(inst.item![0].item![1].item![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![0].answer![0].valueDate!.description, "1972-11-30")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![0].linkId!, "vitaminKDose1")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![0].text!, "1st dose")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![1].answer![0].valueDate!.description, "1972-12-11")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![1].linkId!, "vitaminKDose2")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].item![1].text!, "2nd dose")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].item![0].linkId!, "vitaminKgivenDoses")
		XCTAssertEqual(inst.item![0].item![1].item![2].answer![0].valueCoding!.code!, "INJECTION")
		XCTAssertEqual(inst.item![0].item![1].item![2].linkId!, "vitaminKgiven")
		XCTAssertEqual(inst.item![0].item![1].item![2].text!, "Vitamin K given")
		XCTAssertEqual(inst.item![0].item![1].item![3].answer![0].item![0].item![0].answer![0].valueDate!.description, "1972-12-04")
		XCTAssertEqual(inst.item![0].item![1].item![3].answer![0].item![0].item![0].text!, "Date given")
		XCTAssertEqual(inst.item![0].item![1].item![3].answer![0].item![0].linkId!, "hepBgivenDate")
		XCTAssertTrue(inst.item![0].item![1].item![3].answer![0].valueBoolean!)
		XCTAssertEqual(inst.item![0].item![1].item![3].linkId!, "hepBgiven")
		XCTAssertEqual(inst.item![0].item![1].item![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.item![0].item![1].item![4].answer![0].valueString!, "Already able to speak Chinese")
		XCTAssertEqual(inst.item![0].item![1].item![4].linkId!, "abnormalitiesAtBirth")
		XCTAssertEqual(inst.item![0].item![1].item![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.item![0].item![1].linkId!, "neonatalInformation")
		XCTAssertEqual(inst.item![0].item![1].text!, "Neonatal Information")
		XCTAssertEqual(inst.item![0].linkId!, "birthDetails")
		XCTAssertEqual(inst.item![0].text!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "http://hl7.org/fhir/Patient/1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
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
	
	func runQuestionnaireResponse2(json: FHIRJSON? = nil) throws -> QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.author!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.authored!.description, "2013-06-18T00:00:00+01:00")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.item![0].item![0].answer![0].valueString!, "I am allergic to house dust")
		XCTAssertEqual(inst.item![0].item![0].linkId!, "1.1")
		XCTAssertEqual(inst.item![0].item![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.item![0].linkId!, "1")
		XCTAssertEqual(inst.item![1].item![0].answer![0].valueString!, "Male")
		XCTAssertEqual(inst.item![1].item![0].linkId!, "2.1")
		XCTAssertEqual(inst.item![1].item![0].text!, "What is your gender?")
		XCTAssertEqual(inst.item![1].item![1].answer![0].valueDate!.description, "1960-03-13")
		XCTAssertEqual(inst.item![1].item![1].linkId!, "2.2")
		XCTAssertEqual(inst.item![1].item![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.item![1].item![2].answer![0].valueString!, "The Netherlands")
		XCTAssertEqual(inst.item![1].item![2].linkId!, "2.3")
		XCTAssertEqual(inst.item![1].item![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.item![1].item![3].answer![0].valueString!, "married")
		XCTAssertEqual(inst.item![1].item![3].linkId!, "2.4")
		XCTAssertEqual(inst.item![1].item![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.item![1].linkId!, "2")
		XCTAssertEqual(inst.item![1].text!, "General questions")
		XCTAssertEqual(inst.item![2].item![0].answer![0].valueString!, "No")
		XCTAssertEqual(inst.item![2].item![0].linkId!, "3.1")
		XCTAssertEqual(inst.item![2].item![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.item![2].item![1].answer![0].valueString!, "No, but I used to drink")
		XCTAssertEqual(inst.item![2].item![1].linkId!, "3.2")
		XCTAssertEqual(inst.item![2].item![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.item![2].linkId!, "3")
		XCTAssertEqual(inst.item![2].text!, "Intoxications")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
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
	
	func runQuestionnaireResponse3(json: FHIRJSON? = nil) throws -> QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example-gcs.json")
		
		XCTAssertEqual(inst.authored!.description, "2014-12-11T04:44:16Z")
		XCTAssertEqual(inst.id!, "gcs")
		XCTAssertEqual(inst.item![0].answer![0].valueCoding!.code!, "LA6560-2")
		XCTAssertEqual(inst.item![0].answer![0].valueCoding!.display!, "Confused")
		XCTAssertEqual(inst.item![0].answer![0].valueCoding!.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.item![0].answer![0].valueCoding!.extension_fhir![0].valueDecimal!, NSDecimalNumber(string: "4"))
		XCTAssertEqual(inst.item![0].answer![0].valueCoding!.system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].linkId!, "1.1")
		XCTAssertEqual(inst.item![1].answer![0].valueCoding!.code!, "LA6566-9")
		XCTAssertEqual(inst.item![1].answer![0].valueCoding!.display!, "Localizing pain")
		XCTAssertEqual(inst.item![1].answer![0].valueCoding!.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.item![1].answer![0].valueCoding!.extension_fhir![0].valueDecimal!, NSDecimalNumber(string: "5"))
		XCTAssertEqual(inst.item![1].answer![0].valueCoding!.system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![1].linkId!, "1.2")
		XCTAssertEqual(inst.item![2].answer![0].valueCoding!.code!, "LA6556-0")
		XCTAssertEqual(inst.item![2].answer![0].valueCoding!.display!, "Eyes open spontaneously")
		XCTAssertEqual(inst.item![2].answer![0].valueCoding!.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/iso21090-CO-value")
		XCTAssertEqual(inst.item![2].answer![0].valueCoding!.extension_fhir![0].valueDecimal!, NSDecimalNumber(string: "4"))
		XCTAssertEqual(inst.item![2].answer![0].valueCoding!.system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![2].linkId!, "1.3")
		XCTAssertEqual(inst.questionnaire!.reference!, "Questionnaire/gcs")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/f007")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
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
	
	func runQuestionnaireResponse4(json: FHIRJSON? = nil) throws -> QuestionnaireResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireresponse-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "#questauth")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00-05:00")
		XCTAssertEqual(inst.contained![0].id!, "patsub")
		XCTAssertEqual(inst.contained![1].id!, "questauth")
		XCTAssertEqual(inst.contained![2].id!, "obs.pt-category")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![0].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![1].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![1].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![2].answer![0].valueCoding!.code!, "0")
		XCTAssertEqual(inst.item![0].item![0].answer![0].item![0].item![2].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.item![0].item![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.item![0].item![0].answer![0].valueCoding!.display!, "Yes")
		XCTAssertEqual(inst.item![0].item![0].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "#patsub")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
