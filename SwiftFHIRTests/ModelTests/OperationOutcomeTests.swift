//
//  OperationOutcomeTests.swift
//  OperationOutcomeTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class OperationOutcomeTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> OperationOutcome? {
		let json = readJSONFile(filename)
		let instance = OperationOutcome(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOperationOutcome1() {
		let inst = instantiateFrom("operationoutcome-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a OperationOutcome instance")
		
		XCTAssertEqual(inst!.issue![0].location![0], "/Person[1]/gender[1]")	
		XCTAssertEqual(inst!.issue![0].severity!, "error")	
		XCTAssertEqual(inst!.issue![0].type!.code!, "V15")	
		XCTAssertEqual(inst!.issue![0].type!.display!, "InvalidCode")
		XCTAssertEqual(inst!.issue![0].type!.system!, NSURL(string: "http://test.org/issueCodeSystem")!)	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>W is not a recognized code for Gender.</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "additional")
	}
}
