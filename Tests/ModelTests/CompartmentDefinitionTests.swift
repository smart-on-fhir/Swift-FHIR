//
//  CompartmentDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCompartmentDefinition = Models.CompartmentDefinition
#else
import SwiftFHIR
typealias SwiftFHIRCompartmentDefinition = SwiftFHIR.CompartmentDefinition
#endif


class CompartmentDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCompartmentDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCompartmentDefinition {
		return try SwiftFHIRCompartmentDefinition(json: json)
	}
	
	func testCompartmentDefinition1() {
		do {
			let instance = try runCompartmentDefinition1()
			try runCompartmentDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CompartmentDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCompartmentDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCompartmentDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "compartmentdefinition-example.json")
		
		XCTAssertEqual(inst.code, CompartmentType(rawValue: "Device")!)
		XCTAssertEqual(inst.contact?[0].name, "[string]")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2017-02-24")
		XCTAssertEqual(inst.description_fhir, "The set of resources associated with a particular Device (example with Communication and CommunicationRequest resourses only).")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "EXAMPLE")
		XCTAssertEqual(inst.publisher, "Health Level Seven International (FHIR Infrastructure)")
		XCTAssertEqual(inst.purpose, "Provides an example of a FHIR compartment definition based on the Device resource type.")
		XCTAssertEqual(inst.resource?[0].code, ResourceType(rawValue: "Communication")!)
		XCTAssertEqual(inst.resource?[0].documentation, "The device used as the message sender and recipient")
		XCTAssertEqual(inst.resource?[0].param?[0], "sender")
		XCTAssertEqual(inst.resource?[0].param?[1], "recipient")
		XCTAssertEqual(inst.resource?[1].code, ResourceType(rawValue: "CommunicationRequest")!)
		XCTAssertEqual(inst.resource?[1].documentation, "The device used as the message sender and recipient")
		XCTAssertEqual(inst.resource?[1].param?[0], "sender")
		XCTAssertEqual(inst.resource?[1].param?[1], "recipient")
		XCTAssertEqual(inst.search, true)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/CompartmentDefinition/example")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "Device")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		
		return inst
	}
}
