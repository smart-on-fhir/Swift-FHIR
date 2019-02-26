//
//  EpisodeOfCareTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
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
		XCTAssertEqual(inst.diagnosis?[0].condition?.reference, "Condition/stroke")
		XCTAssertEqual(inst.diagnosis?[0].rank, 1)
		XCTAssertEqual(inst.diagnosis?[0].role?.coding?[0].code, "CC")
		XCTAssertEqual(inst.diagnosis?[0].role?.coding?[0].display, "Chief complaint")
		XCTAssertEqual(inst.diagnosis?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/diagnosis-role")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleepisodeofcare-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
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
		XCTAssertEqual(inst.type?[0].coding?[0].code, "hacc")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Home and Community Care")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/episodeofcare-type")
		
		return inst
	}
}
