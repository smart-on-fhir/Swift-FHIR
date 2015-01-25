//
//  QuestionnaireAnswersTests.swift
//  QuestionnaireAnswersTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class QuestionnaireAnswersTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> QuestionnaireAnswers {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> QuestionnaireAnswers {
		let instance = QuestionnaireAnswers(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaireAnswers1() {
		let instance = testQuestionnaireAnswers1_impl()
		testQuestionnaireAnswers1_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers1_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example-bluebook.canonical.json")
		
		XCTAssertEqual(inst.author!.reference!, "http://www.hl7.org/fhir/Practitioner/1")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00+10:00")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].answer![0].valueString!, "Cathy Jones")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].answer![0].valueCoding!.code!, "f")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].answer![0].valueDecimal!, NSDecimalNumber(string: "3.25"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].answer![0].valueDecimal!, NSDecimalNumber(string: "44.3"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].answer![0].valueCoding!.code!, "INJECTION")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].answer![0].valueDate!.description, "1972-11-30")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].answer![0].valueDate!.description, "1972-12-11")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertTrue(inst.group!.group![0].group![1].question![3].answer![0].valueBoolean!)
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].answer![0].valueDate!.description, "1972-12-04")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].answer![0].valueString!, "Already able to speak Chinese")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record, january 2013")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "http://www.hl7.org/fhir/Patient/1")
		
		return inst
	}
	
	func testQuestionnaireAnswers2() {
		let instance = testQuestionnaireAnswers2_impl()
		testQuestionnaireAnswers2_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers2_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example-bluebook.canonical.json")
		
		XCTAssertEqual(inst.author!.reference!, "http://www.hl7.org/fhir/Practitioner/1")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00+10:00")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].answer![0].valueString!, "Cathy Jones")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].answer![0].valueCoding!.code!, "f")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].answer![0].valueDecimal!, NSDecimalNumber(string: "3.25"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].answer![0].valueDecimal!, NSDecimalNumber(string: "44.3"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].answer![0].valueCoding!.code!, "INJECTION")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].answer![0].valueDate!.description, "1972-11-30")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].answer![0].valueDate!.description, "1972-12-11")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertTrue(inst.group!.group![0].group![1].question![3].answer![0].valueBoolean!)
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].answer![0].valueDate!.description, "1972-12-04")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].answer![0].valueString!, "Already able to speak Chinese")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record, january 2013")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "http://www.hl7.org/fhir/Patient/1")
		
		return inst
	}
	
	func testQuestionnaireAnswers3() {
		let instance = testQuestionnaireAnswers3_impl()
		testQuestionnaireAnswers3_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers3_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example-bluebook.json")
		
		XCTAssertEqual(inst.author!.reference!, "http://www.hl7.org/fhir/Practitioner/1")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00+10:00")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].answer![0].valueString!, "Cathy Jones")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].answer![0].valueCoding!.code!, "f")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].answer![0].valueDecimal!, NSDecimalNumber(string: "3.25"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].answer![0].valueDecimal!, NSDecimalNumber(string: "44.3"))
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].answer![0].valueCoding!.code!, "INJECTION")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].answer![0].valueDate!.description, "1972-11-30")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].answer![0].valueDate!.description, "1972-12-11")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertTrue(inst.group!.group![0].group![1].question![3].answer![0].valueBoolean!)
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].answer![0].valueDate!.description, "1972-12-04")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].answer![0].valueString!, "Already able to speak Chinese")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record, january 2013")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "http://www.hl7.org/fhir/Patient/1")
		
		return inst
	}
	
	func testQuestionnaireAnswers4() {
		let instance = testQuestionnaireAnswers4_impl()
		testQuestionnaireAnswers4_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers4_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example-f201-lifelines.canonical.json")
		
		XCTAssertEqual(inst.author!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.authored!.description, "2013-06-18T00:00:00+01:00")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueString!, "I am allergic to house dust")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.group!.group![1].question![0].answer![0].valueString!, "Male")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "What is your gender?")
		XCTAssertEqual(inst.group!.group![1].question![1].answer![0].valueDate!.description, "1960-03-13")
		XCTAssertEqual(inst.group!.group![1].question![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.group!.group![1].question![2].answer![0].valueString!, "The Netherlands")
		XCTAssertEqual(inst.group!.group![1].question![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.group!.group![1].question![3].answer![0].valueString!, "married")
		XCTAssertEqual(inst.group!.group![1].question![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.group!.group![1].title!, "General questions")
		XCTAssertEqual(inst.group!.group![2].question![0].answer![0].valueString!, "No")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.group!.group![2].question![1].answer![0].valueString!, "No, but I used to drink")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.group!.group![2].title!, "Intoxications")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testQuestionnaireAnswers5() {
		let instance = testQuestionnaireAnswers5_impl()
		testQuestionnaireAnswers5_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers5_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.author!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.authored!.description, "2013-06-18T00:00:00+01:00")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueString!, "I am allergic to house dust")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.group!.group![1].question![0].answer![0].valueString!, "Male")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "What is your gender?")
		XCTAssertEqual(inst.group!.group![1].question![1].answer![0].valueDate!.description, "1960-03-13")
		XCTAssertEqual(inst.group!.group![1].question![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.group!.group![1].question![2].answer![0].valueString!, "The Netherlands")
		XCTAssertEqual(inst.group!.group![1].question![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.group!.group![1].question![3].answer![0].valueString!, "married")
		XCTAssertEqual(inst.group!.group![1].question![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.group!.group![1].title!, "General questions")
		XCTAssertEqual(inst.group!.group![2].question![0].answer![0].valueString!, "No")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.group!.group![2].question![1].answer![0].valueString!, "No, but I used to drink")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.group!.group![2].title!, "Intoxications")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.source!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testQuestionnaireAnswers6() {
		let instance = testQuestionnaireAnswers6_impl()
		testQuestionnaireAnswers6_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers6_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example.canonical.json")
		
		XCTAssertEqual(inst.author!.reference!, "#questauth")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00-05:00")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.display!, "Yes")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.code!, "0")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "#patsub")
		
		return inst
	}
	
	func testQuestionnaireAnswers7() {
		let instance = testQuestionnaireAnswers7_impl()
		testQuestionnaireAnswers7_impl(json: instance.asJSON())
	}
	
	func testQuestionnaireAnswers7_impl(json: JSONDictionary? = nil) -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaireanswers-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "#questauth")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00-05:00")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.display!, "Yes")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.code!, "0")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.system!.absoluteString!, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "#patsub")
		
		return inst
	}
}
