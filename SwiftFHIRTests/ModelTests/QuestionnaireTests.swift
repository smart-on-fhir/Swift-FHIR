//
//  QuestionnaireTests.swift
//  QuestionnaireTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class QuestionnaireTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Questionnaire? {
		let json = readJSONFile(filename)
		let instance = Questionnaire(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaire1() {
		let inst = instantiateFrom("questionnaire-example-bluebook.json")
		XCTAssertNotNil(inst, "Must have instantiated a Questionnaire instance")
	
		XCTAssertEqual(inst!.authored!, NSDate.dateFromISOString("2013-02-19T14:15:00")!)	
		XCTAssertEqual(inst!.group!.name!.text!, "NSW Government My Personal Health Record, january 2013")	
		XCTAssertEqual(inst!.status!, "completed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <pre>\n        Cathy Jones, female. Birth weight 3.25 kg at 44.3 cm. \n        Injection of Vitamin K given on 1972-11-30 (first dose) and 1972-12-11 (second dose)\n        Note: Was able to speak Chinese at birth.\n      </pre>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testQuestionnaire2() {
		let inst = instantiateFrom("questionnaire-example-f201-lifelines.json")
		XCTAssertNotNil(inst, "Must have instantiated a Questionnaire instance")
	
		XCTAssertEqual(inst!.authored!, NSDate.dateFromISOString("2013-06-18T00:00:00+01:00")!)	
		XCTAssertEqual(inst!.identifier![0].label!, "Roel's VL 1-1, 18-65_1.2.2")	
		XCTAssertEqual(inst!.identifier![0].use!, "temp")	
		XCTAssertEqual(inst!.name!.coding![0].code!, "VL 1-1, 18-65_1.2.2")	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "https://lifelines.nl"))	
		XCTAssertEqual(inst!.status!, "completed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>status</b>: completed\n      </p>\n      <p>\n        <b>authored</b>: 18-Jun 2013 0:0\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>author</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>source</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {https://lifelines.nl VL 1-1, 18-65_1.2.2}\">Lifelines Questionnaire 1 part 1</span>\n      </p>\n      <p>\n        <b>identifier</b>: Roel's VL 1-1, 18-65_1.2.2 = ?? (temp)\n      </p>\n      <blockquote>\n        <p>\n          <b>group</b>\n        </p>\n        <blockquote>\n          <p>\n            <b>group</b>\n          </p>\n        </blockquote>\n        <blockquote>\n          <p>\n            <b>group</b>\n          </p>\n        </blockquote>\n        <blockquote>\n          <p>\n            <b>group</b>\n          </p>\n        </blockquote>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
