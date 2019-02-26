//
//  NamingSystemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRNamingSystem = Models.NamingSystem
#else
import SwiftFHIR
typealias SwiftFHIRNamingSystem = SwiftFHIR.NamingSystem
#endif


class NamingSystemTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRNamingSystem {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRNamingSystem {
		return try SwiftFHIRNamingSystem(json: json)
	}
	
	func testNamingSystem1() {
		do {
			let instance = try runNamingSystem1()
			try runNamingSystem1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NamingSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNamingSystem1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNamingSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "namingsystem-example-id.json")
		
		XCTAssertEqual(inst.contact?[0].name, "HL7 Australia FHIR Team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7-australia.wikispaces.com/FHIR+Australia")
		XCTAssertEqual(inst.date?.description, "2015-08-31")
		XCTAssertEqual(inst.description_fhir, "Australian HI Identifier as established by relevant regulations etc.")
		XCTAssertEqual(inst.id, "example-id")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "AU")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, NamingSystemType(rawValue: "identifier")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "Austalian Healthcare Identifier - Individual")
		XCTAssertEqual(inst.publisher, "HL7 Australia on behalf of NEHTA")
		XCTAssertEqual(inst.responsible, "HI Service Operator / NEHTA")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "NI")
		XCTAssertEqual(inst.type?.coding?[0].display, "National unique individual identifier")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.type?.text, "IHI")
		XCTAssertEqual(inst.uniqueId?[0].comment, "This value is used in Australian CDA documents")
		XCTAssertEqual(inst.uniqueId?[0].type, NamingSystemIdentifierType(rawValue: "oid")!)
		XCTAssertEqual(inst.uniqueId?[0].value, "1.2.36.1.2001.1003.0")
		XCTAssertEqual(inst.uniqueId?[1].period?.start?.description, "2015-08-21")
		XCTAssertEqual(inst.uniqueId?[1].preferred, true)
		XCTAssertEqual(inst.uniqueId?[1].type, NamingSystemIdentifierType(rawValue: "uri")!)
		XCTAssertEqual(inst.uniqueId?[1].value, "http://ns.electronichealth.net.au/id/hi/ihi/1.0")
		XCTAssertEqual(inst.usage, "Used in Australia for identifying patients")
		
		return inst
	}
	
	func testNamingSystem2() {
		do {
			let instance = try runNamingSystem2()
			try runNamingSystem2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test NamingSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runNamingSystem2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRNamingSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "namingsystem-example.json")
		
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2014-12-13")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.kind, NamingSystemType(rawValue: "codesystem")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "SNOMED CT")
		XCTAssertEqual(inst.publisher, "HL7 International on behalf of IHTSDO")
		XCTAssertEqual(inst.responsible, "IHTSDO & affiliates")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.uniqueId?[0].type, NamingSystemIdentifierType(rawValue: "oid")!)
		XCTAssertEqual(inst.uniqueId?[0].value, "2.16.840.1.113883.6.96")
		XCTAssertEqual(inst.uniqueId?[1].preferred, true)
		XCTAssertEqual(inst.uniqueId?[1].type, NamingSystemIdentifierType(rawValue: "uri")!)
		XCTAssertEqual(inst.uniqueId?[1].value, "http://snomed.info/sct")
		
		return inst
	}
}
