//
//  LocalizationTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 1/3/17.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import ModelTests
#else
import SwiftFHIR
#endif


/**
Test the shortcuts for the general translation extensions and for ValueSet concepts.
*/
class LocalizationTests: XCTestCase {
	
	var item: QuestionnaireItem?
	
	var concept1: ValueSetComposeIncludeConcept?
	
	var concept2: ValueSetComposeIncludeConcept?
	
	override func setUp() {
		super.setUp()
		do {
			let json = try readJSONFile("Localization.json", directory: testResourcesDirectory)
			let questionnaire = try Questionnaire(json: json)
			item = questionnaire.item?.first
			// TODO resolve canonical URI
//			let valueSet = item?.answerValueSet?.resolved(ValueSet.self)
			let valueSet: ValueSet? = nil
			concept1 = valueSet?.compose?.include?.first?.concept?.first
			concept2 = valueSet?.compose?.include?.first?.concept?.last
		}
		catch let error {
			XCTAssertTrue(false, "Failed to read bundled resource “Localization.json”: \(error)")
		}
	}
	
	func testManual() {
		XCTAssertNotNil(item)
		XCTAssertEqual("I wish to withdraw because…", item?.text)
		XCTAssertEqual("Ich möchte aus der Studie austreten weil…", item?.text?.localized(in: "de-CH"))
		XCTAssertEqual("Ich möchte aus der Studie austreten weil…", item?.text?.localized(in: "de"))     // will pick the first "de-XX" extension it finds
		XCTAssertEqual("Ich möchte aus der Studie austreten weil…", item?.text?.localized(in: "de-AT"))  // ditto
		XCTAssertEqual("Ich möchte gerne aus der Studie austreten weil ich…", item?.text?.localized(in: "de-DE"))
		XCTAssertEqual("Je veux retirer de l'étude parce que …", item?.text?.localized(in: "fr"))
		XCTAssertEqual("Je veux retirer de l'étude parce que …", item?.text?.localized(in: "fr-CH"))
		XCTAssertEqual("I wish to withdraw because…", item?.text?.localized(in: "es"), "Translation unavailable, must fall back to `text`")
		XCTAssertEqual("I wish to withdraw because…", item?.text?.localized(in: "xy"), "Invalid locale, must fall back to `text`")
	}
	
	func testManualValueSet() {
		XCTAssertNotNil(concept1)
		XCTAssertEqual("Surveys take too much time", concept1?.display)
		XCTAssertEqual("Die Fragebögen sind zu lang", concept1?.display_localized(in: "de-CH"))
		XCTAssertEqual("Die Fragebögen sind zu lang", concept1?.display_localized(in: "de"))
		XCTAssertEqual("Die Fragebögen sind zu lang", concept1?.display_localized(in: "de-AT"))
		XCTAssertEqual("Diese Fragebögen sind viel zu lange", concept1?.display_localized(in: "de-DE"))
		XCTAssertEqual("Les enquêtes prennent trop de temps", concept1?.display_localized(in: "fr"))
		XCTAssertEqual("Les enquêtes prennent trop de temps", concept1?.display_localized(in: "fr-CH"))
		XCTAssertEqual("Surveys take too much time", concept1?.display_localized(in: "es"), "Translation unavailable, must fall back to `display`")
		XCTAssertEqual("Surveys take too much time", concept1?.display_localized(in: "xy"), "Invalid locale, must fall back to `display`")
		
		XCTAssertNotNil(concept2)
		XCTAssertEqual("App is too difficult to use", concept2?.display)
		XCTAssertEqual("Die Bedienung der App ist umständlich", concept2?.display_localized(in: "de-CH"))
		XCTAssertEqual("Die Bedienung der App ist umständlich", concept2?.display_localized(in: "de"))
		XCTAssertEqual("Die Bedienung der App ist umständlich", concept2?.display_localized(in: "de-AT"))
		XCTAssertEqual("Die Bedienung dieser App ist zu umständlich", concept2?.display_localized(in: "de-DE"))
		XCTAssertEqual("Le fonctionnement de l'application est maladroit", concept2?.display_localized(in: "fr"))
		XCTAssertEqual("Le fonctionnement de l'application est maladroit", concept2?.display_localized(in: "fr-CH"))
		XCTAssertEqual("App is too difficult to use", concept2?.display_localized(in: "es"), "Translation unavailable, must fall back to `display`")
		XCTAssertEqual("App is too difficult to use", concept2?.display_localized(in: "xy"), "Invalid locale, must fall back to `display`")
	}
	
	func testAutomatic() {
		XCTAssertNotNil(item)
		XCTAssertEqual("I wish to withdraw because…", item?.text)
		// TODO: mock `Locale` to see if the following works correctly
//		XCTAssertEqual("I wish to withdraw because…", item?.text?.localized)
	}
}

