//
//  ValidationTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 02.11.16.
//  Copyright © 2016 SMART Health IT. All rights reserved.
//

import XCTest
import SwiftFHIR


/**
Test how JSON errors are handled.
*/
class ValidationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Questionnaire {
		let json = try Bundle(for: type(of: self)).fhir_json(from: filename, subdirectory: "TestResources")
		return try SwiftFHIR.Questionnaire(json: json)
	}
	
	func testMissing() {
		do {
			let _ = try instantiateFrom(filename: "ValidationMissing")
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			XCTAssertEqual(5, lines.count)
			XCTAssertTrue(lines[0].hasPrefix("Questionnaire.resourceType: "), lines[0])
			XCTAssertTrue(lines[1].hasPrefix("Questionnaire.item.1.item.0.type: "), lines[1])
			XCTAssertTrue(lines[2].hasPrefix("Questionnaire.item.2.option.1.value[x]: "), lines[2])
			XCTAssertTrue(lines[3].hasPrefix("Questionnaire.item.2.type: "), lines[3])
			XCTAssertTrue(lines[4].hasPrefix("Questionnaire.status: "), lines[4])
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
	
	func testSuperfluousAndWrong() {
		do {
			let _ = try instantiateFrom(filename: "ValidationSuperfluousAndWrong")
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			XCTAssertEqual(5, lines.count)
			XCTAssertTrue(lines[0].hasPrefix("Questionnaire.item.1.item.0.type: "), lines[0])
			XCTAssertTrue(lines[1].hasPrefix("Questionnaire.item.2.option.0.value[x]: "), lines[1])
			XCTAssertTrue(lines[2].hasPrefix("Questionnaire.item.2.option.0.valueNumber: "), lines[2])
			XCTAssertTrue(lines[3].hasPrefix("Questionnaire.item.2.option.1.valueCoding.code: "), lines[3])
			XCTAssertTrue(lines[4].hasPrefix("Questionnaire.versino: "), lines[4])
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
	
	func testSerializationResource() {
		let questionnaire1 = Questionnaire(status: "draft")
		XCTAssertEqual("draft", questionnaire1.status)
		let item = QuestionnaireItem(type: "display")
		item.text = "This is an empty questionnaire"
		questionnaire1.item = [item]
		do {
			let js = try questionnaire1.asJSON()
			XCTAssertEqual(3, js.count)
			XCTAssertEqual("Questionnaire", js["resourceType"] as? String)
			XCTAssertEqual("This is an empty questionnaire", (js["item"] as? [FHIRJSON])?[0]["text"] as? String)
		}
		catch let error {
			XCTAssertNil(error)
		}
	}
	
	func testSerializationElement() {
		let element1 = QuestionnaireItemOption(value: ["a": "Hello"])
		XCTAssertNil(element1.valueString)
		do {
			let js = try element1.asJSON()
			XCTAssertEqual(0, js.count)
		}
		catch let error {
			XCTAssertNil(error)
		}
		
		let element2 = QuestionnaireItemOption(value: "This is a great option")
		XCTAssertEqual("This is a great option", element2.valueString)
		do {
			let js = try element2.asJSON()
			XCTAssertEqual(1, js.count)
			XCTAssertEqual("This is a great option", js["valueString"] as? String)
		}
		catch let error {
			XCTAssertNil(error)
		}
		
		let element3 = QuestionnaireItemOption(value: FHIRDate(string: "2016-03-30"))
		XCTAssertEqual(2016, element3.valueDate?.year)
		do {
			let js = try element3.asJSON()
			XCTAssertEqual(1, js.count)
			print(js)
			XCTAssertEqual("2016-03-30", js["valueDate"] as? String)
		}
		catch let error {
			XCTAssertNil(error)
		}
	}
}

