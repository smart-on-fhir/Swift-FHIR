//
//  ExpansionProfileTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRExpansionProfile = Models.ExpansionProfile
#else
import SwiftFHIR
typealias SwiftFHIRExpansionProfile = SwiftFHIR.ExpansionProfile
#endif


class ExpansionProfileTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRExpansionProfile {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRExpansionProfile {
		return try SwiftFHIRExpansionProfile(json: json)
	}
	
	func testExpansionProfile1() {
		do {
			let instance = try runExpansionProfile1()
			try runExpansionProfile1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ExpansionProfile successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runExpansionProfile1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRExpansionProfile {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "expansionprofile-example.json")
		
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2016-12-23")
		XCTAssertEqual(inst.description_fhir, "exanple ExpansionProfile for publication")
		XCTAssertEqual(inst.excludeNested, true)
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://example.org/profiles")
		XCTAssertEqual(inst.identifier?.value, "example")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "001")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].display, "World")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "http://unstats.un.org/unsd/methods/m49/m49.htm")
		XCTAssertEqual(inst.name, "Example Expansion Profile")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[ Provide Rendering ]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/ExpansionProfile/example")
		XCTAssertEqual(inst.version, "0.1")
		
		return inst
	}
}
