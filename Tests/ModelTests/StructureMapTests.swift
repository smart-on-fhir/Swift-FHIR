//
//  StructureMapTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11599 on 2017-03-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRStructureMap = Models.StructureMap
#else
import SwiftFHIR
typealias SwiftFHIRStructureMap = SwiftFHIR.StructureMap
#endif


class StructureMapTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRStructureMap {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRStructureMap {
		return try SwiftFHIRStructureMap(json: json)
	}
	
	func testStructureMap1() {
		do {
			let instance = try runStructureMap1()
			try runStructureMap1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test StructureMap successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runStructureMap1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRStructureMap {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "structuremap-example.json")
		
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2017-03-09")
		XCTAssertEqual(inst.description_fhir, "Example Structure Map")
		XCTAssertEqual(inst.group?[0].documentation, "test -> testValue")
		XCTAssertEqual(inst.group?[0].input?[0].mode, StructureMapInputMode(rawValue: "source")!)
		XCTAssertEqual(inst.group?[0].input?[0].name, "test")
		XCTAssertEqual(inst.group?[0].name, "Examples")
		XCTAssertEqual(inst.group?[0].rule?[0].name, "rule1")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].context, "Source")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].element, "test")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].type, "SourceClassA")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].variable, "t")
		XCTAssertEqual(inst.group?[0].rule?[0].target?[0].context, "Destination")
		XCTAssertEqual(inst.group?[0].rule?[0].target?[0].contextType, StructureMapContextType(rawValue: "variable")!)
		XCTAssertEqual(inst.group?[0].rule?[0].target?[0].element, "testValue")
		XCTAssertEqual(inst.group?[0].rule?[0].target?[0].transform, StructureMapTransform(rawValue: "copy")!)
		XCTAssertEqual(inst.group?[0].typeMode, StructureMapGroupTypeMode(rawValue: "none")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:37843577-95fb-4adb-84c0-8837188a7bf3")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "009")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].display, "Oceania")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "http://unstats.un.org/unsd/methods/m49/m49.htm")
		XCTAssertEqual(inst.name, "ExampleMap")
		XCTAssertEqual(inst.publisher, "HL7 FHIR Standard")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Map")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureMap/example")
		XCTAssertEqual(inst.version, "0.1")
		
		return inst
	}
}
