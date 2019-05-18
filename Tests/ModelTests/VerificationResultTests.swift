//
//  VerificationResultTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRVerificationResult = Models.VerificationResult
#else
import SwiftFHIR
typealias SwiftFHIRVerificationResult = SwiftFHIR.VerificationResult
#endif


class VerificationResultTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRVerificationResult {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRVerificationResult {
		return try SwiftFHIRVerificationResult(json: json)
	}
	
	func testVerificationResult1() {
		do {
			let instance = try runVerificationResult1()
			try runVerificationResult1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test VerificationResult successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runVerificationResult1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRVerificationResult {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "verificationresult-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, Status(rawValue: "attested")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>status</b>: attested</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
