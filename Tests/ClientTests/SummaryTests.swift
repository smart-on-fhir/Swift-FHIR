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
		let json = try Bundle(for: type(of: self)).fhir_json(from: filename, subdirectory: "TestResources")
		return try CapabilityStatement(json: json)
	}
	
	func testFull() {
		do {
			_ = try instantiateFrom(filename: "metadata.full")
		}
		catch {
			XCTAssertNil(error)
		}
	}
	
	func testSummary() {
		do {
			_ = try instantiateFrom(filename: "metadata.summary")
		}
		catch {
			XCTAssertNil(error)
		}
	}
}

