//
//  CareTeamTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10104 on 2016-11-03.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CareTeamTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.CareTeam {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.CareTeam {
		return try SwiftFHIR.CareTeam(json: json)
	}
	
	func testCareTeam1() {
		do {
			let instance = try runCareTeam1()
			try runCareTeam1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test CareTeam successfully, but threw")
		}
	}
	
	@discardableResult
	func runCareTeam1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.CareTeam {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "careteam-example.json")
		
		XCTAssertEqual(inst.contained?[0].id, "pr1")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participant?[0].member?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].member?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].role?.text, "responsiblePerson")
		XCTAssertEqual(inst.participant?[1].member?.display, "Dorothy Dietition")
		XCTAssertEqual(inst.participant?[1].member?.reference, "#pr1")
		XCTAssertEqual(inst.participant?[1].role?.text, "adviser")
		XCTAssertEqual(inst.period?.end?.description, "2013-01-01")
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Team</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
