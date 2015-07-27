//
//  QuestionnaireAnswersTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class QuestionnaireAnswersTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> QuestionnaireAnswers {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> QuestionnaireAnswers {
		let instance = QuestionnaireAnswers(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaireAnswers1() throws {
		let instance = try testQuestionnaireAnswers1_impl()
		try testQuestionnaireAnswers1_impl(instance.asJSON())
	}
	
	func testQuestionnaireAnswers1_impl(json: FHIRJSON? = nil) throws -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireanswers-example-bluebook.json")
		
		XCTAssertEqual(inst.author!.reference!, "http://hl7.org/fhir/Practitioner/1")
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
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].extension_fhir![0].url!.absoluteString, "http://example.org/Profile/questionnaire#visibilityCondition")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].extension_fhir![0].valueString!, "HAS_VALUE(../choice/code) AND NEQ(../choice/code,'NO')")
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
		XCTAssertEqual(inst.subject!.reference!, "http://hl7.org/fhir/Patient/1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaireAnswers2() throws {
		let instance = try testQuestionnaireAnswers2_impl()
		try testQuestionnaireAnswers2_impl(instance.asJSON())
	}
	
	func testQuestionnaireAnswers2_impl(json: FHIRJSON? = nil) throws -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireanswers-example-f201-lifelines.json")
		
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
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaireAnswers3() throws {
		let instance = try testQuestionnaireAnswers3_impl()
		try testQuestionnaireAnswers3_impl(instance.asJSON())
	}
	
	func testQuestionnaireAnswers3_impl(json: FHIRJSON? = nil) throws -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireanswers-example.json")
		
		XCTAssertEqual(inst.author!.reference!, "#questauth")
		XCTAssertEqual(inst.authored!.description, "2013-02-19T14:15:00-05:00")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.display!, "Yes")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.code!, "0")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].answer![0].valueCoding!.system!.absoluteString, "http://cancer.questionnaire.org/system/code/yesno")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "#patsub")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaireAnswers4() throws {
		let instance = try testQuestionnaireAnswers4_impl()
		try testQuestionnaireAnswers4_impl(instance.asJSON())
	}
	
	func testQuestionnaireAnswers4_impl(json: FHIRJSON? = nil) throws -> QuestionnaireAnswers {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "questionnaireanswers-sdc-profile-example.json")
		
		XCTAssertEqual(inst.authored!.description, "2014-01-21")
		XCTAssertEqual(inst.group!.group![0].linkId!, "3921053v1.0")
		XCTAssertEqual(inst.group!.group![0].question![0].answer![0].valueDate!.description, "2003-02-18")
		XCTAssertEqual(inst.group!.group![0].question![0].linkId!, "3921059v1.0")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Date of Current Pathologic Diagnosis")
		XCTAssertEqual(inst.group!.group![0].question![1].answer![0].valueCoding!.code!, "1")
		XCTAssertEqual(inst.group!.group![0].question![1].answer![0].valueCoding!.display!, "Primary Diagnosis")
		XCTAssertEqual(inst.group!.group![0].question![1].answer![0].valueCoding!.system!.absoluteString, "http://nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3921060v1.0-cs")
		XCTAssertEqual(inst.group!.group![0].question![1].linkId!, "3921060v1.0")
		XCTAssertEqual(inst.group!.group![0].question![1].text!, "Diagnosis Type")
		XCTAssertEqual(inst.group!.group![0].question![2].answer![0].valueString!, "Left Ovary")
		XCTAssertEqual(inst.group!.group![0].question![2].linkId!, "3921053v1.0")
		XCTAssertEqual(inst.group!.group![0].question![2].text!, "Primary Site")
		XCTAssertEqual(inst.group!.group![0].text!, "These items must be included when this data is collected for reporting.")
		XCTAssertEqual(inst.group!.group![0].title!, "Mandatory Diagnosis Questions")
		XCTAssertEqual(inst.group!.group![1].linkId!, "3921066v1.0")
		XCTAssertEqual(inst.group!.group![1].question![0].answer![0].valueCoding!.code!, "3")
		XCTAssertEqual(inst.group!.group![1].question![0].answer![0].valueCoding!.display!, "Restaging")
		XCTAssertEqual(inst.group!.group![1].question![0].answer![0].valueCoding!.system!.absoluteString, "http://nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3921066v1.0-cs")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "Diagnosis Time Point")
		XCTAssertEqual(inst.group!.group![1].text!, "There are business rules to indicate situations under which these elements should be used on a case report form.")
		XCTAssertEqual(inst.group!.group![1].title!, "Conditional Diagnosis Questions")
		XCTAssertEqual(inst.group!.group![2].linkId!, "3921077v1.0")
		XCTAssertEqual(inst.group!.group![2].question![0].answer![0].valueString!, "Harold Ornada")
		XCTAssertEqual(inst.group!.group![2].question![0].linkId!, "3921079v1.0")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Reviewing Pathologist")
		XCTAssertEqual(inst.group!.group![2].question![1].linkId!, "3921080v1.0")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "MedDRA disease code")
		XCTAssertEqual(inst.group!.group![2].question![2].answer![0].valueCoding!.code!, "2")
		XCTAssertEqual(inst.group!.group![2].question![2].answer![0].valueCoding!.display!, "Histological Procedure")
		XCTAssertEqual(inst.group!.group![2].question![2].answer![0].valueCoding!.system!.absoluteString, "http://nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3921081v1.0-cs")
		XCTAssertEqual(inst.group!.group![2].question![2].linkId!, "3921081v1.0")
		XCTAssertEqual(inst.group!.group![2].question![2].text!, "Assessment Method")
		XCTAssertEqual(inst.group!.group![2].question![3].answer![0].valueCoding!.code!, "2")
		XCTAssertEqual(inst.group!.group![2].question![3].answer![0].valueCoding!.display!, "Moderately Differentiated")
		XCTAssertEqual(inst.group!.group![2].question![3].answer![0].valueCoding!.system!.absoluteString, "http://nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3921085v1.0-cs")
		XCTAssertEqual(inst.group!.group![2].question![3].linkId!, "3921085v1.0")
		XCTAssertEqual(inst.group!.group![2].question![3].text!, "Tumor grade")
		XCTAssertEqual(inst.group!.group![2].title!, "Optional Diagnosis Questions")
		XCTAssertEqual(inst.group!.title!, "Diagnosis NCI Standard Template")
		XCTAssertEqual(inst.id!, "sdc")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
