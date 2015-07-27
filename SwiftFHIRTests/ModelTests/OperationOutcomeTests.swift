//
//  OperationOutcomeTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OperationOutcomeTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> OperationOutcome {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> OperationOutcome {
		let instance = OperationOutcome(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOperationOutcome1() throws {
		let instance = try testOperationOutcome1_impl()
		try testOperationOutcome1_impl(instance.asJSON())
	}
	
	func testOperationOutcome1_impl(json: FHIRJSON? = nil) throws -> OperationOutcome {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "operationoutcome-example.json")
		
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.issue![0].code!.coding![0].code!, "code-unknown")
		XCTAssertEqual(inst.issue![0].code!.coding![0].display!, "Code Unknown")
		XCTAssertEqual(inst.issue![0].code!.coding![0].system!.absoluteString, "http://hl7.org/fhir/issue-type")
		XCTAssertEqual(inst.issue![0].code!.text!, "Unknown code")
		XCTAssertEqual(inst.issue![0].details!, "The code \"W\" in the system \"http://acme.com/intranet/fhir/codesystems/gender\" is not known (source = Acme.Interop.FHIRProcessors.Patient.processGender)")
		XCTAssertEqual(inst.issue![0].location![0], "/Person[1]/gender[1]")
		XCTAssertEqual(inst.issue![0].severity!, "error")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
