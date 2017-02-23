//
//  ExpansionProfileTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRExpansionProfile = Models.ExpansionProfile
#else
import SwiftFHIR
typealias SwiftFHIRExpansionProfile = SwiftFHIR.ExpansionProfile
#endif


class ExpansionProfileTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRExpansionProfile {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRExpansionProfile {
		return try SwiftFHIRExpansionProfile(json: json)
	}
	
	func testExpansionProfile1() {
		do {
			let instance = try runExpansionProfile1()
			try runExpansionProfile1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ExpansionProfile successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runExpansionProfile1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRExpansionProfile {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "expansionprofile-example.json")
		
		XCTAssertEqual(inst.excludeNested, true)
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[ Provide Rendering ]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
