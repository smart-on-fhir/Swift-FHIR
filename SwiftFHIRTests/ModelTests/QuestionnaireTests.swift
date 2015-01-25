//
//  QuestionnaireTests.swift
//  QuestionnaireTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class QuestionnaireTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Questionnaire {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Questionnaire {
		let instance = Questionnaire(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaire1() {
		let instance = testQuestionnaire1_impl()
		testQuestionnaire1_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire1_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-bluebook.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2013-02-19")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.publisher!, "New South Wales Department of Health")
		XCTAssertEqual(inst.status!, "draft")
		
		return inst
	}
	
	func testQuestionnaire2() {
		let instance = testQuestionnaire2_impl()
		testQuestionnaire2_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire2_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-bluebook.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2013-02-19")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.publisher!, "New South Wales Department of Health")
		XCTAssertEqual(inst.status!, "draft")
		
		return inst
	}
	
	func testQuestionnaire3() {
		let instance = testQuestionnaire3_impl()
		testQuestionnaire3_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire3_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-bluebook.json")
		
		XCTAssertEqual(inst.date!.description, "2013-02-19")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.publisher!, "New South Wales Department of Health")
		XCTAssertEqual(inst.status!, "draft")
		
		return inst
	}
	
	func testQuestionnaire4() {
		let instance = testQuestionnaire4_impl()
		testQuestionnaire4_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire4_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-f201-lifelines.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2010")
		XCTAssertEqual(inst.group!.concept![0].code!, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.group!.concept![0].display!, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.group!.concept![0].system!.absoluteString!, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "What is your gender?")
		XCTAssertEqual(inst.group!.group![1].question![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.group!.group![1].question![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.group!.group![1].question![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.group!.group![1].text!, "General questions")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.group!.group![2].title!, "Intoxications")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.identifier![0].label!, "Roel's VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.identifier![0].use!, "temp")
		XCTAssertEqual(inst.status!, "published")
		
		return inst
	}
	
	func testQuestionnaire5() {
		let instance = testQuestionnaire5_impl()
		testQuestionnaire5_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire5_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.date!.description, "2010")
		XCTAssertEqual(inst.group!.concept![0].code!, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.group!.concept![0].display!, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.group!.concept![0].system!.absoluteString!, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "What is your gender?")
		XCTAssertEqual(inst.group!.group![1].question![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.group!.group![1].question![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.group!.group![1].question![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.group!.group![1].text!, "General questions")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.group!.group![2].title!, "Intoxications")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.identifier![0].label!, "Roel's VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.identifier![0].use!, "temp")
		XCTAssertEqual(inst.status!, "published")
		
		return inst
	}
	
	func testQuestionnaire6() {
		let instance = testQuestionnaire6_impl()
		testQuestionnaire6_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire6_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2012-01")
		XCTAssertEqual(inst.group!.group![0].concept![0].code!, "COMORBIDITY")
		XCTAssertEqual(inst.group!.group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].code!, "COMORB")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].code!, "CARDIAL")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].code!, "COMORBCAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].code!, "COMCAR00")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].display!, "Angina Pectoris")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].code!, "194828000")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].display!, "Angina (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].code!, "22298006")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].display!, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].code!, "VASCULAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![1].concept![0].code!, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.group!.group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].code!, "ABDOMINAL")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].code!, "STADPT")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].display!, "pT category")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "draft")
		
		return inst
	}
	
	func testQuestionnaire7() {
		let instance = testQuestionnaire7_impl()
		testQuestionnaire7_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire7_impl(json: JSONDictionary? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-01")
		XCTAssertEqual(inst.group!.group![0].concept![0].code!, "COMORBIDITY")
		XCTAssertEqual(inst.group!.group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].code!, "COMORB")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].code!, "CARDIAL")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].code!, "COMORBCAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].code!, "COMCAR00")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].display!, "Angina Pectoris")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].code!, "194828000")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].display!, "Angina (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].code!, "22298006")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].display!, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].code!, "VASCULAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![1].concept![0].code!, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.group!.group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].code!, "ABDOMINAL")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].code!, "STADPT")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].display!, "pT category")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "draft")
		
		return inst
	}
}
