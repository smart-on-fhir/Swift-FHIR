//
//  SubstanceSpecificationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSubstanceSpecification = Models.SubstanceSpecification
#else
import SwiftFHIR
typealias SwiftFHIRSubstanceSpecification = SwiftFHIR.SubstanceSpecification
#endif


class SubstanceSpecificationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSubstanceSpecification {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSubstanceSpecification {
		return try SwiftFHIRSubstanceSpecification(json: json)
	}
	
	func testSubstanceSpecification1() {
		do {
			let instance = try runSubstanceSpecification1()
			try runSubstanceSpecification1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancepolymer-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSubstanceSpecification2() {
		do {
			let instance = try runSubstanceSpecification2()
			try runSubstanceSpecification2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancespecification-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSubstanceSpecification3() {
		do {
			let instance = try runSubstanceSpecification3()
			try runSubstanceSpecification3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancereferenceinformation-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
