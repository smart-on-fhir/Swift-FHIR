//
//  SummaryTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 23.02.17.
//  Copyright © 2017 SMART Health IT. All rights reserved.
//

import XCTest
import SwiftFHIR


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
		}
		catch {
			XCTAssertNil(error)
		}
	}
	
	func testSummary() {
		do {
			_ = try instantiateFrom(filename: "metadata.summary.json")
		}
		catch {
			XCTAssertNil(error)
		}
	}
}

