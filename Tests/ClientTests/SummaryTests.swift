//
//  SummaryTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 23.02.17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import ModelTests
#else
import SwiftFHIR
#endif


/**
Test how the _summary flag and resource validation interplays.
*/
class SummaryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> CapabilityStatement {
		let json = try readJSONFile(filename, directory: testResourcesDirectory)
		return try CapabilityStatement(json: json)
	}
	
	func testFull() {
		do {
			_ = try instantiateFrom(filename: "metadata.full.json")
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			XCTAssertEqual(1, lines.count)
			XCTAssertEqual(lines[0], "CapabilityStatement.rest.0.operation.23.definition: problem with property “definition”: “not done yet” is not a valid URI")
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
	
	func testSummary() {
		do {
			_ = try instantiateFrom(filename: "metadata.summary.json")
			XCTAssertTrue(false, "Should have thrown but am still here")
		}
		catch let error as FHIRValidationError {
			let lines = error.description.components(separatedBy: CharacterSet.newlines)
			XCTAssertEqual(1, lines.count)
			XCTAssertEqual(lines[0], "CapabilityStatement.rest.0.operation.23.definition: problem with property “definition”: “not done yet” is not a valid URI")
		}
		catch let error {
			XCTAssertNil(error, "Should not have gotten this error")
		}
	}
}

