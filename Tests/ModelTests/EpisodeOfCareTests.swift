//
//  EpisodeOfCareTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EpisodeOfCareTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.EpisodeOfCare {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.EpisodeOfCare {
		let instance = SwiftFHIR.EpisodeOfCare(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEpisodeOfCare1() {
		do {
			let instance = try runEpisodeOfCare1()
			try runEpisodeOfCare1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test EpisodeOfCare successfully, but threw")
		}
	}
	
	@discardableResult
	func runEpisodeOfCare1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.EpisodeOfCare {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "episodeofcare-example.json")
		
		XCTAssertEqual(inst.careManager?.display, "Amanda Assigned")
		XCTAssertEqual(inst.careManager?.reference, "Practitioner/14")
		XCTAssertEqual(inst.careTeam?[0].member?.display, "Henry Seven")
		XCTAssertEqual(inst.careTeam?[0].member?.reference, "Practitioner/13")
		XCTAssertEqual(inst.careTeam?[0].period?.end?.description, "2014-09-16")
		XCTAssertEqual(inst.careTeam?[0].period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.careTeam?[0].role?[0].coding?[0].code, "AO")
		XCTAssertEqual(inst.careTeam?[0].role?[0].coding?[0].display, "Assessment Worker")
		XCTAssertEqual(inst.careTeam?[0].role?[0].coding?[0].system?.absoluteString, "http://example.org/EpisodeOfCare/Role")
		XCTAssertEqual(inst.condition?[0].display, "Severe burn of left ear")
		XCTAssertEqual(inst.condition?[0].reference, "Condition/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleepisodeofcare-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.referralRequest?[0].display, "Referral from Example Aged Care Services")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.statusHistory?[0].period?.end?.description, "2014-09-14")
		XCTAssertEqual(inst.statusHistory?[0].period?.start?.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory?[0].status, "planned")
		XCTAssertEqual(inst.statusHistory?[1].period?.end?.description, "2014-09-21")
		XCTAssertEqual(inst.statusHistory?[1].period?.start?.description, "2014-09-15")
		XCTAssertEqual(inst.statusHistory?[1].status, "active")
		XCTAssertEqual(inst.statusHistory?[2].period?.end?.description, "2014-09-24")
		XCTAssertEqual(inst.statusHistory?[2].period?.start?.description, "2014-09-22")
		XCTAssertEqual(inst.statusHistory?[2].status, "onhold")
		XCTAssertEqual(inst.statusHistory?[3].period?.start?.description, "2014-09-25")
		XCTAssertEqual(inst.statusHistory?[3].status, "active")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?[0].coding?[0].code, "HACC")
		XCTAssertEqual(inst.type?[0].coding?[0].display, "Home and Community Care Package")
		XCTAssertEqual(inst.type?[0].coding?[0].system?.absoluteString, "http://example.org/EpisodeOfCare/Type")
		
		return inst
	}
}
