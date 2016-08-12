//
//  CareTeamTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CareTeamTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> CareTeam {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> CareTeam {
		let instance = CareTeam(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
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
	
	func runCareTeam1(json: FHIRJSON? = nil) throws -> CareTeam {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "careteam-example.json")
		
		XCTAssertEqual(inst.contained![0].id, "pr1")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participant![0].member!.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].member!.reference, "Patient/example")
		XCTAssertEqual(inst.participant![0].role!.text, "responsiblePerson")
		XCTAssertEqual(inst.participant![1].member!.display, "Dorothy Dietition")
		XCTAssertEqual(inst.participant![1].member!.reference, "#pr1")
		XCTAssertEqual(inst.participant![1].role!.text, "adviser")
		XCTAssertEqual(inst.period!.end?.description, "2013-01-01")
		XCTAssertEqual(inst.subject!.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject!.reference, "Patient/example")
		XCTAssertEqual(inst.text!.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Team</div>")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
