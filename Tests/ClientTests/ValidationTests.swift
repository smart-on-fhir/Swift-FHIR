//
//  ValidationTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 02.11.16.
//  2016, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import ModelTests
#else
import SwiftFHIR
#endif


/**
Test how JSON errors are handled.
*/
class ValidationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> Questionnaire {
		let json = try Bundle(for: type(of: self)).fhir_json(from: filename, subdirectory: "TestResources")
		return try Questionnaire(json: json)
	}
	
	func testMissing() {
		do {
			let json = try readJSONFile("ValidationMissing.json", directory: testResourcesDirectory)
			let _ = try Questionnaire(json: json)
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			//print(lines.joined(separator: "\n"))
			XCTAssertEqual(6, lines.count)
			XCTAssertTrue(lines[0].hasPrefix("Questionnaire.resourceType: "), lines[0])
			XCTAssertTrue(lines[1].hasPrefix("Questionnaire.item.1.item.0.linkId: "), lines[1])
			XCTAssertTrue(lines[2].hasPrefix("Questionnaire.item.1.item.0.type: "), lines[2])
			XCTAssertTrue(lines[3].hasPrefix("Questionnaire.item.2.answerOption.1.value[x]: "), lines[3])
			XCTAssertTrue(lines[4].hasPrefix("Questionnaire.item.2.linkId: "), lines[4])
			XCTAssertTrue(lines[5].hasPrefix("Questionnaire.status: "), lines[5])
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
	
	func testSuperfluousAndWrong() {
		do {
			let json = try readJSONFile("ValidationSuperfluousAndWrong.json", directory: testResourcesDirectory)
			let _ = try Questionnaire(json: json)
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			//print(lines.joined(separator: "\n"))
			XCTAssertEqual(7, lines.count)
			XCTAssertTrue(lines[0].hasPrefix("Questionnaire.item.1.item.0.type: "), lines[0])                 // expecting property “type” to be `String`, but is `__NSSingleObjectArrayI`
			XCTAssertTrue(lines[1].hasPrefix("Questionnaire.item.1.item.1.type: "), lines[1])                 // problem with property “type”: “invalid” is not valid
			XCTAssertTrue(lines[2].hasPrefix("Questionnaire.item.2.answerOption.0.value[x]: "), lines[2])           // mandatory property “value[x]” is missing
			XCTAssertTrue(lines[3].hasPrefix("Questionnaire.item.2.answerOption.0.valueNumber: "), lines[3])        // superfluous property “valueNumber” of type `__NSCFString`
			XCTAssertTrue(lines[4].hasPrefix("Questionnaire.item.2.answerOption.1.valueCoding.code: "), lines[4])   // expecting property “code” to be `String`, but is `__NSCFNumber`
			XCTAssertTrue(lines[5].hasPrefix("Questionnaire.status: "), lines[5])                             // problem with property “status”: “punished” is not valid
			XCTAssertTrue(lines[6].hasPrefix("Questionnaire.versino: "), lines[6])                            // superfluous property “versino” of type `NSTaggedPointerString`
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
	
	func testSerializationResource() {
		let questionnaire1 = Questionnaire(status: .draft)
		XCTAssertEqual("draft", questionnaire1.status?.rawValue)
		let item = QuestionnaireItem(linkId: "abc", type: .display)
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
		let element1 = QuestionnaireItemAnswerOption(value: ["a": "Hello"])
		XCTAssertNil(element1.valueString)
		do {
			let _ = try element1.asJSON()
			XCTAssertTrue(false, "Should have thrown when serializing to JSON because of missing value[x]")
		}
		catch let error {
			XCTAssertNotNil(error)
		}
		
		let element2 = QuestionnaireItemAnswerOption(value: FHIRString("This is a great option"))
		XCTAssertEqual("This is a great option", element2.valueString)
		do {
			let js = try element2.asJSON()
			XCTAssertEqual(1, js.count)
			XCTAssertEqual("This is a great option", js["valueString"] as? String)
		}
		catch let error {
			XCTAssertNil(error)
		}
		
		let element3 = QuestionnaireItemAnswerOption(value: FHIRDate(string: "2016-03-30")!)
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

