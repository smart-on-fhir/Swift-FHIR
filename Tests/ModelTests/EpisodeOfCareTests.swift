//
//  EpisodeOfCareTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREpisodeOfCare = Models.EpisodeOfCare
#else
import SwiftFHIR
typealias SwiftFHIREpisodeOfCare = SwiftFHIR.EpisodeOfCare
#endif


class EpisodeOfCareTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREpisodeOfCare {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREpisodeOfCare {
		return try SwiftFHIREpisodeOfCare(json: json)
	}
	
	func testEpisodeOfCare1() {
		do {
			let instance = try runEpisodeOfCare1()
			try runEpisodeOfCare1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EpisodeOfCare successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEpisodeOfCare1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREpisodeOfCare {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "episodeofcare-example.json")
		
		XCTAssertEqual(inst.account?[0].display, "example account")
		XCTAssertEqual(inst.account?[0].reference, "Account/example")
		XCTAssertEqual(inst.careManager?.display, "Amanda Assigned")
		XCTAssertEqual(inst.careManager?.reference, "Practitioner/14")
		XCTAssertEqual(inst.condition?[0].display, "Severe burn of left ear")
		XCTAssertEqual(inst.condition?[0].reference, "Condition/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleepisodeofcare-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.referralRequest?[0].display, "Referral from Example Aged Care Services")
		XCTAssertEqual(inst.status, EpisodeOfCareStatus(rawValue: "active")!)
		XCTAssertEqual(inst.statusHistory?[0].period?.end?.description, "2014-09-14")
		XCTAssertEqual(inst.statusHistory?[0].period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory?[0].status, EpisodeOfCareStatus(rawValue: "planned")!)
		XCTAssertEqual(inst.statusHistory?[1].period?.end?.description, "2014-09-21")
		XCTAssertEqual(inst.statusHistory?[1].period?.start?.description, "2014-09-15")
		XCTAssertEqual(inst.statusHistory?[1].status, EpisodeOfCareStatus(rawValue: "active")!)
		XCTAssertEqual(inst.statusHistory?[2].period?.end?.description, "2014-09-24")
		XCTAssertEqual(inst.statusHistory?[2].period?.start?.description, "2014-09-22")
		XCTAssertEqual(inst.statusHistory?[2].status, EpisodeOfCareStatus(rawValue: "onhold")!)
		XCTAssertEqual(inst.statusHistory?[3].period?.start?.description, "2014-09-25")
		XCTAssertEqual(inst.statusHistory?[3].status, EpisodeOfCareStatus(rawValue: "active")!)
		XCTAssertEqual(inst.team?[0].display, "example care team")
		XCTAssertEqual(inst.team?[0].reference, "CareTeam/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?[0].coding?[0].code, "HACC")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Home and Community Care Package")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://example.org/EpisodeOfCare/Type")
		
		return inst
	}
}
