//
//  OperationOutcomeTests.swift
//  OperationOutcomeTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OperationOutcomeTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> OperationOutcome {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> OperationOutcome {
		let instance = OperationOutcome(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOperationOutcome1() {
		let instance = testOperationOutcome1_impl()
		testOperationOutcome1_impl(json: instance.asJSON())
	}
	
	func testOperationOutcome1_impl(json: JSONDictionary? = nil) -> OperationOutcome {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "operationoutcome-example.json")
		
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.issue![0].code!.coding![0].code!, "code-unknown")
		XCTAssertEqual(inst.issue![0].code!.coding![0].display!, "Code Unknown")
		XCTAssertEqual(inst.issue![0].code!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/issue-type")
		XCTAssertEqual(inst.issue![0].code!.text!, "Unknown code")
		XCTAssertEqual(inst.issue![0].details!, "The code \"W\" in the system \"http://acme.com/intranet/fhir/codesystems/gender\" is not known (source = Acme.Interop.FHIRProcessors.Patient.processGender)")
		XCTAssertEqual(inst.issue![0].location![0], "/Person[1]/gender[1]")
		XCTAssertEqual(inst.issue![0].severity!, "error")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}
