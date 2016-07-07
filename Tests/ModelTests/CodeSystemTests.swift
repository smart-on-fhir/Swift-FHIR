//
//  CodeSystemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-07-07.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CodeSystemTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.CodeSystem {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.CodeSystem {
		let instance = SwiftFHIR.CodeSystem(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCodeSystem1() {
		do {
			let instance = try runCodeSystem1()
			try runCodeSystem1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw")
		}
	}
	
	@discardableResult
	func runCodeSystem1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.CodeSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-example.json")
		
		XCTAssertTrue(inst.caseSensitive ?? false)
		XCTAssertEqual(inst.concept?[0].code, "chol-mmol")
		XCTAssertEqual(inst.concept?[0].definition, "Serum Cholesterol, in mmol/L")
		XCTAssertEqual(inst.concept?[0].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[0].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[0].designation?[0].value, "From ACME POC Testing")
		XCTAssertEqual(inst.concept?[0].display, "SChol (mmol/L)")
		XCTAssertEqual(inst.concept?[1].code, "chol-mass")
		XCTAssertEqual(inst.concept?[1].definition, "Serum Cholesterol, in mg/L")
		XCTAssertEqual(inst.concept?[1].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[1].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[1].designation?[0].value, "From Paragon Labs")
		XCTAssertEqual(inst.concept?[1].display, "SChol (mg/L)")
		XCTAssertEqual(inst.concept?[2].code, "chol")
		XCTAssertEqual(inst.concept?[2].definition, "Serum Cholesterol")
		XCTAssertEqual(inst.concept?[2].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[2].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[2].designation?[0].value, "Obdurate Labs uses this with both kinds of units...")
		XCTAssertEqual(inst.concept?[2].display, "SChol")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, "complete")
		XCTAssertEqual(inst.date?.description, "2016-01-28")
		XCTAssertEqual(inst.description_fhir, "This is an example code system that includes all the ACME codes for serum/plasma cholesterol from v2.36.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://acme.com/identifiers/codesystems")
		XCTAssertEqual(inst.identifier?.value, "internal-cholesterol-inl")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/codesystem-shareable-definition")
		XCTAssertEqual(inst.name, "ACME Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/CodeSystem/example")
		XCTAssertEqual(inst.version, "20160128")
		
		return inst
	}
	
	func testCodeSystem2() {
		do {
			let instance = try runCodeSystem2()
			try runCodeSystem2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw")
		}
	}
	
	@discardableResult
	func runCodeSystem2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.CodeSystem {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-list-example-codes.json")
		
		XCTAssertTrue(inst.caseSensitive ?? false)
		XCTAssertEqual(inst.concept?[0].code, "alerts")
		XCTAssertEqual(inst.concept?[0].definition, "A list of alerts for the patient.")
		XCTAssertEqual(inst.concept?[0].display, "Alerts")
		XCTAssertEqual(inst.concept?[1].code, "adverserxns")
		XCTAssertEqual(inst.concept?[1].definition, "A list of part adverse reactions.")
		XCTAssertEqual(inst.concept?[1].display, "Adverse Reactions")
		XCTAssertEqual(inst.concept?[2].code, "allergies")
		XCTAssertEqual(inst.concept?[2].definition, "A list of Allergies for the patient.")
		XCTAssertEqual(inst.concept?[2].display, "Allergies")
		XCTAssertEqual(inst.concept?[3].code, "medications")
		XCTAssertEqual(inst.concept?[3].definition, "A list of medication statements for the patient.")
		XCTAssertEqual(inst.concept?[3].display, "Medication List")
		XCTAssertEqual(inst.concept?[4].code, "problems")
		XCTAssertEqual(inst.concept?[4].definition, "A list of problems that the patient is known of have (or have had in the past).")
		XCTAssertEqual(inst.concept?[4].display, "Problem List")
		XCTAssertEqual(inst.concept?[5].code, "worklist")
		XCTAssertEqual(inst.concept?[5].definition, "A list of items that constitute a set of work to be performed (typically this code would be specialized for more specific uses, such as a ward round list).")
		XCTAssertEqual(inst.concept?[5].display, "Worklist")
		XCTAssertEqual(inst.concept?[6].code, "waiting")
		XCTAssertEqual(inst.concept?[6].definition, "A list of items waiting for an event (perhaps a surgical patient waiting list).")
		XCTAssertEqual(inst.concept?[6].display, "Waiting List")
		XCTAssertEqual(inst.concept?[7].code, "protocols")
		XCTAssertEqual(inst.concept?[7].definition, "A set of protocols to be followed.")
		XCTAssertEqual(inst.concept?[7].display, "Protocols")
		XCTAssertEqual(inst.concept?[8].code, "plans")
		XCTAssertEqual(inst.concept?[8].definition, "A set of care plans that apply in a particular context of care.")
		XCTAssertEqual(inst.concept?[8].display, "Care Plans")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "other")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, "complete")
		XCTAssertEqual(inst.description_fhir, "Example use codes for the List resource - typical kinds of use.")
		XCTAssertTrue(inst.experimental ?? false)
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-oid")
		XCTAssertEqual(inst.extension_fhir?[0].valueUri?.absoluteString, "urn:oid:2.16.840.1.113883.4.642.1.173")
		XCTAssertEqual(inst.id, "list-example-codes")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2016-03-31T08:01:25.570+11:00")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/valueset-shareable-definition")
		XCTAssertEqual(inst.name, "Example Use Codes for List")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/list-example-use-codes")
		XCTAssertEqual(inst.valueSet?.absoluteString, "http://hl7.org/fhir/ValueSet/list-example-codes")
		XCTAssertEqual(inst.version, "1.4.0")
		
		return inst
	}
}
