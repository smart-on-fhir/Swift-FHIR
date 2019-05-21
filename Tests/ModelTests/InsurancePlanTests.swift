//
//  InsurancePlanTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRInsurancePlan = Models.InsurancePlan
#else
import SwiftFHIR
typealias SwiftFHIRInsurancePlan = SwiftFHIR.InsurancePlan
#endif


class InsurancePlanTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRInsurancePlan {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRInsurancePlan {
		return try SwiftFHIRInsurancePlan(json: json)
	}
	
	func testInsurancePlan1() {
		do {
			let instance = try runInsurancePlan1()
			try runInsurancePlan1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test InsurancePlan successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runInsurancePlan1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRInsurancePlan {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "insuranceplan-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name, "foo")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: example</p><p><b>name</b>: foo</p></div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
