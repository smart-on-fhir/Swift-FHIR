//
//  ModuleDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ModuleDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> ModuleDefinition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ModuleDefinition {
		let instance = ModuleDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testModuleDefinition1() {
		do {
			let instance = try runModuleDefinition1()
			try runModuleDefinition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ModuleDefinition successfully, but threw")
		}
	}
	
	func runModuleDefinition1(json: FHIRJSON? = nil) throws -> ModuleDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "moduledefinition-example.json")
		
		XCTAssertEqual(inst.data![0].codeFilter![0].path!, "code")
		XCTAssertEqual(inst.data![0].codeFilter![0].valueSetString!, "Other Female Reproductive Conditions")
		XCTAssertEqual(inst.data![0].type!, "Condition")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "ChalmydiaScreening_Common")
		XCTAssertEqual(inst.model![0].identifier!, "QUICK")
		XCTAssertEqual(inst.text!.div!, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.valueSet![0].identifier!, "2.16.840.1.113883.3.560.100.2")
		XCTAssertEqual(inst.valueSet![0].name!, "Female Administrative Sex")
		XCTAssertEqual(inst.version!, "2.0.0")
		
		return inst
	}
}
