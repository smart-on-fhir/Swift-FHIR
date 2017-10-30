//
//  CareTeamTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
import SwiftFHIR
typealias SwiftFHIRCareTeam = SwiftFHIR.CareTeam


class CareTeamTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCareTeam {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCareTeam {
		return try SwiftFHIRCareTeam(json: json)
	}
	
	func testCareTeam1() {
		do {
			let instance = try runCareTeam1()
			try runCareTeam1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CareTeam successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCareTeam1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCareTeam {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "careteam-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "encounter")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/care-team-category")
		XCTAssertEqual(inst.contained?[0].id, "pr1")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.managingOrganization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.name, "Peter James Charlmers Care Plan for Inpatient Encounter")
		XCTAssertEqual(inst.participant?[0].member?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].member?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].role?.text, "responsiblePerson")
		XCTAssertEqual(inst.participant?[1].member?.display, "Dorothy Dietition")
		XCTAssertEqual(inst.participant?[1].member?.reference, "#pr1")
		XCTAssertEqual(inst.participant?[1].onBehalfOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.participant?[1].period?.end?.description, "2013-01-01")
		XCTAssertEqual(inst.participant?[1].role?.text, "adviser")
		XCTAssertEqual(inst.period?.end?.description, "2013-01-01")
		XCTAssertEqual(inst.status, CareTeamStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Team</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
