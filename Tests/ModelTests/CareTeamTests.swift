//
//  CareTeamTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CareTeamTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.CareTeam {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.CareTeam {
		let instance = SwiftFHIR.CareTeam(json: json)
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
	
	@discardableResult
	func runCareTeam1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.CareTeam {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "careteam-example.json")
		
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
		XCTAssertEqual(inst.text?.div, "<div>Care Team</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
