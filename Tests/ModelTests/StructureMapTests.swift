//
//  StructureMapTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
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
		
		XCTAssertEqual(inst.group?[0].input?[0].mode, StructureMapInputMode(rawValue: "source")!)
		XCTAssertEqual(inst.group?[0].input?[0].name, "test")
		XCTAssertEqual(inst.group?[0].name, "Examples")
		XCTAssertEqual(inst.group?[0].rule?[0].name, "rule1")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].context, "test")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].element, "test")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].variable, "t")
		XCTAssertEqual(inst.group?[0].typeMode, StructureMapGroupTypeMode(rawValue: "none")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Example Map")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureMap/example")
		
		return inst
	}
}
