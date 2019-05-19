//
//  SubstanceSpecificationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancesourcematerial-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substanceprotein-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancepolymer-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSubstanceSpecification4() {
		do {
			let instance = try runSubstanceSpecification4()
			try runSubstanceSpecification4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancespecification-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSubstanceSpecification5() {
		do {
			let instance = try runSubstanceSpecification5()
			try runSubstanceSpecification5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancereferenceinformation-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSubstanceSpecification6() {
		do {
			let instance = try runSubstanceSpecification6()
			try runSubstanceSpecification6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SubstanceSpecification successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSubstanceSpecification6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSubstanceSpecification {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "substancenucleicacid-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
