//
//  OperationDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIROperationDefinition = Models.OperationDefinition
#else
import SwiftFHIR
typealias SwiftFHIROperationDefinition = SwiftFHIR.OperationDefinition
#endif


class OperationDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIROperationDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIROperationDefinition {
		return try SwiftFHIROperationDefinition(json: json)
	}
	
	func testOperationDefinition1() {
		do {
			let instance = try runOperationDefinition1()
			try runOperationDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OperationDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOperationDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIROperationDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "operationdefinition-example.json")
		
		XCTAssertEqual(inst.base?.reference, "OperationDefinition/Questionnaire-populate")
		XCTAssertEqual(inst.code, "populate")
		XCTAssertEqual(inst.comment, "Only implemented for Labs and Medications so far")
		XCTAssertEqual(inst.contact?[0].name, "System Administrator")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "beep@coyote.acme.com")
		XCTAssertEqual(inst.date?.description, "2015-08-04")
		XCTAssertEqual(inst.description_fhir, "Limited implementation of the Populate Questionnaire implemenation")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.instance, true)
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "GB")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].display, "United Kingdom of Great Britain and Northern Ireland (the)")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, OperationKind(rawValue: "operation")!)
		XCTAssertEqual(inst.name, "Populate Questionnaire")
		XCTAssertEqual(inst.overload?[0].parameterName?[0], "subject")
		XCTAssertEqual(inst.overload?[0].parameterName?[1], "local")
		XCTAssertEqual(inst.overload?[1].comment, "local defaults to false when not passed as a parameter")
		XCTAssertEqual(inst.overload?[1].parameterName?[0], "subject")
		XCTAssertEqual(inst.parameter?[0].max, "1")
		XCTAssertEqual(inst.parameter?[0].min, 1)
		XCTAssertEqual(inst.parameter?[0].name, "subject")
		XCTAssertEqual(inst.parameter?[0].type, "Reference")
		XCTAssertEqual(inst.parameter?[0].use, OperationParameterUse(rawValue: "in")!)
		XCTAssertEqual(inst.parameter?[1].documentation, "If the *local* parameter is set to true, server information about the specified subject will be used to populate the instance.")
		XCTAssertEqual(inst.parameter?[1].max, "1")
		XCTAssertEqual(inst.parameter?[1].min, 0)
		XCTAssertEqual(inst.parameter?[1].name, "local")
		XCTAssertEqual(inst.parameter?[1].type, "Reference")
		XCTAssertEqual(inst.parameter?[1].use, OperationParameterUse(rawValue: "in")!)
		XCTAssertEqual(inst.parameter?[2].documentation, "The partially (or fully)-populated set of answers for the specified Questionnaire")
		XCTAssertEqual(inst.parameter?[2].max, "1")
		XCTAssertEqual(inst.parameter?[2].min, 1)
		XCTAssertEqual(inst.parameter?[2].name, "return")
		XCTAssertEqual(inst.parameter?[2].type, "QuestionnaireResponse")
		XCTAssertEqual(inst.parameter?[2].use, OperationParameterUse(rawValue: "out")!)
		XCTAssertEqual(inst.publisher, "Acme Healthcare Services")
		XCTAssertEqual(inst.resource?[0], "Questionnaire")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.system, false)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type, false)
		XCTAssertEqual(inst.url?.absoluteString, "http://h7.org/fhir/OperationDefinition/example")
		XCTAssertEqual(inst.useContext?[0].code?.code, "venue")
		XCTAssertEqual(inst.useContext?[0].code?.display, "Clinical Venue")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://build.fhir.org/codesystem-usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "IMP")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "inpatient encounter")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.version, "B")
		
		return inst
	}
}
