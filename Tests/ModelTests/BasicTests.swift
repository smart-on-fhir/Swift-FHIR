//
//  BasicTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BasicTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Basic {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Basic {
		let instance = SwiftFHIR.Basic(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBasic1() {
		do {
			let instance = try runBasic1()
			try runBasic1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Basic successfully, but threw")
		}
	}
	
	@discardableResult
	func runBasic1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "basic-example-narrative.json")
		
		XCTAssertEqual(inst.code?.text, "Example Narrative Tester")
		XCTAssertEqual(inst.id, "basic-example-narrative")
		XCTAssertEqual(inst.text?.status, "additional")
		
		return inst
	}
	
	func testBasic2() {
		do {
			let instance = try runBasic2()
			try runBasic2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Basic successfully, but threw")
		}
	}
	
	@discardableResult
	func runBasic2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "basic-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/example")
		XCTAssertEqual(inst.code?.coding?[0].code, "referral")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/basic-resource-type")
		XCTAssertEqual(inst.created?.description, "2013-05-14")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#requestingPractitioner")
		XCTAssertEqual(inst.extension_fhir?[0].valueReference?.display, "Dokter Bronsig")
		XCTAssertEqual(inst.extension_fhir?[0].valueReference?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#notes")
		XCTAssertEqual(inst.extension_fhir?[1].valueString, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")
		XCTAssertEqual(inst.extension_fhir?[2].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#fulfillingEncounter")
		XCTAssertEqual(inst.extension_fhir?[2].valueReference?.reference, "Encounter/f201")
		XCTAssertEqual(inst.id, "referral")
		XCTAssertEqual(inst.modifierExtension?[0].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#referredForService")
		XCTAssertEqual(inst.modifierExtension?[0].valueCodeableConcept?.coding?[0].code, "11429006")
		XCTAssertEqual(inst.modifierExtension?[0].valueCodeableConcept?.coding?[0].display, "Consultation")
		XCTAssertEqual(inst.modifierExtension?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifierExtension?[1].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#targetDate")
		XCTAssertEqual(inst.modifierExtension?[1].valuePeriod?.end?.description, "2013-04-15")
		XCTAssertEqual(inst.modifierExtension?[1].valuePeriod?.start?.description, "2013-04-01")
		XCTAssertEqual(inst.modifierExtension?[2].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/referral#status")
		XCTAssertEqual(inst.modifierExtension?[2].valueCode, "complete")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testBasic3() {
		do {
			let instance = try runBasic3()
			try runBasic3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Basic successfully, but threw")
		}
	}
	
	@discardableResult
	func runBasic3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Basic {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "basic-example2.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "UMLCLASSMODEL")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://example.org/do-not-use/fhir-codes#resourceTypes")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "name")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueString, "Class1")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[0].url?.absoluteString, "name")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[0].valueString, "attribute1")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[1].url?.absoluteString, "minOccurs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[1].valueInteger, 1)
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[2].url?.absoluteString, "maxOccurs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].extension_fhir?[2].valueCode, "*")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[1].url?.absoluteString, "attribute")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[0].url?.absoluteString, "name")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[0].valueString, "attribute2")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[1].url?.absoluteString, "minOccurs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[1].valueInteger, 0)
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[2].url?.absoluteString, "maxOccurs")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].extension_fhir?[2].valueInteger, 1)
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[2].url?.absoluteString, "attribute")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://example.org/do-not-use/fhir-extensions/UMLclass")
		XCTAssertEqual(inst.id, "classModel")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
