//
//  VerificationResultTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
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
		
		XCTAssertEqual(inst.failureAction, FailureAction(rawValue: "none")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.need, Need(rawValue: "initial")!)
		XCTAssertEqual(inst.status, Status(rawValue: "attested")!)
		XCTAssertEqual(inst.statusDate?.description, "2017-12-18")
		XCTAssertEqual(inst.target?[0].display, "Dr Feelbetter")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.validationProcess?[0].text, "primary")
		XCTAssertEqual(inst.validationType, ValidationType(rawValue: "primary")!)
		
		return inst
	}
}
