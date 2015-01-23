//
//  EpisodeOfCareTests.swift
//  EpisodeOfCareTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class EpisodeOfCareTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> EpisodeOfCare {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> EpisodeOfCare {
		let instance = EpisodeOfCare(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEpisodeOfCare1() {
		let instance = testEpisodeOfCare1_impl()
		testEpisodeOfCare1_impl(json: instance.asJSON())
	}
	
	func testEpisodeOfCare1_impl(json: JSONDictionary? = nil) -> EpisodeOfCare {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "episodeofcare-example.canonical.json")
		
		XCTAssertEqual(inst.careManager!.display!, "Amanda Assigned")
		XCTAssertEqual(inst.careManager!.reference!, "Practitioner/14")
		XCTAssertEqual(inst.careTeam![0].member!.display!, "Henry Seven")
		XCTAssertEqual(inst.careTeam![0].member!.reference!, "Practitioner/13")
		XCTAssertEqual(inst.careTeam![0].period!.end!.description, "2014-09-16")
		XCTAssertEqual(inst.careTeam![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].code!, "AO")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].display!, "Assessment Worker")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Role")
		XCTAssertEqual(inst.currentStatus!, "active")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/hl7")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].period!.end!.description, "2014-09-14")
		XCTAssertEqual(inst.statusHistory![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].status!, "planned")
		XCTAssertEqual(inst.statusHistory![1].period!.end!.description, "2014-09-21")
		XCTAssertEqual(inst.statusHistory![1].period!.start!.description, "2014-09-15")
		XCTAssertEqual(inst.statusHistory![1].status!, "active")
		XCTAssertEqual(inst.statusHistory![2].period!.end!.description, "2014-09-24")
		XCTAssertEqual(inst.statusHistory![2].period!.start!.description, "2014-09-22")
		XCTAssertEqual(inst.statusHistory![2].status!, "onhold")
		XCTAssertEqual(inst.statusHistory![3].period!.start!.description, "2014-09-25")
		XCTAssertEqual(inst.statusHistory![3].status!, "active")
		XCTAssertEqual(inst.type![0].coding![0].code!, "HACC")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Home and Community Care Package")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Type")
		
		return inst
	}
	
	func testEpisodeOfCare2() {
		let instance = testEpisodeOfCare2_impl()
		testEpisodeOfCare2_impl(json: instance.asJSON())
	}
	
	func testEpisodeOfCare2_impl(json: JSONDictionary? = nil) -> EpisodeOfCare {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "episodeofcare-example.canonical.json")
		
		XCTAssertEqual(inst.careManager!.display!, "Amanda Assigned")
		XCTAssertEqual(inst.careManager!.reference!, "Practitioner/14")
		XCTAssertEqual(inst.careTeam![0].member!.display!, "Henry Seven")
		XCTAssertEqual(inst.careTeam![0].member!.reference!, "Practitioner/13")
		XCTAssertEqual(inst.careTeam![0].period!.end!.description, "2014-09-16")
		XCTAssertEqual(inst.careTeam![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].code!, "AO")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].display!, "Assessment Worker")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Role")
		XCTAssertEqual(inst.currentStatus!, "active")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/hl7")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].period!.end!.description, "2014-09-14")
		XCTAssertEqual(inst.statusHistory![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].status!, "planned")
		XCTAssertEqual(inst.statusHistory![1].period!.end!.description, "2014-09-21")
		XCTAssertEqual(inst.statusHistory![1].period!.start!.description, "2014-09-15")
		XCTAssertEqual(inst.statusHistory![1].status!, "active")
		XCTAssertEqual(inst.statusHistory![2].period!.end!.description, "2014-09-24")
		XCTAssertEqual(inst.statusHistory![2].period!.start!.description, "2014-09-22")
		XCTAssertEqual(inst.statusHistory![2].status!, "onhold")
		XCTAssertEqual(inst.statusHistory![3].period!.start!.description, "2014-09-25")
		XCTAssertEqual(inst.statusHistory![3].status!, "active")
		XCTAssertEqual(inst.type![0].coding![0].code!, "HACC")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Home and Community Care Package")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Type")
		
		return inst
	}
	
	func testEpisodeOfCare3() {
		let instance = testEpisodeOfCare3_impl()
		testEpisodeOfCare3_impl(json: instance.asJSON())
	}
	
	func testEpisodeOfCare3_impl(json: JSONDictionary? = nil) -> EpisodeOfCare {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "episodeofcare-example.json")
		
		XCTAssertEqual(inst.careManager!.display!, "Amanda Assigned")
		XCTAssertEqual(inst.careManager!.reference!, "Practitioner/14")
		XCTAssertEqual(inst.careTeam![0].member!.display!, "Henry Seven")
		XCTAssertEqual(inst.careTeam![0].member!.reference!, "Practitioner/13")
		XCTAssertEqual(inst.careTeam![0].period!.end!.description, "2014-09-16")
		XCTAssertEqual(inst.careTeam![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].code!, "AO")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].display!, "Assessment Worker")
		XCTAssertEqual(inst.careTeam![0].role![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Role")
		XCTAssertEqual(inst.currentStatus!, "active")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/hl7")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].period!.end!.description, "2014-09-14")
		XCTAssertEqual(inst.statusHistory![0].period!.start!.description, "2014-09-01")
		XCTAssertEqual(inst.statusHistory![0].status!, "planned")
		XCTAssertEqual(inst.statusHistory![1].period!.end!.description, "2014-09-21")
		XCTAssertEqual(inst.statusHistory![1].period!.start!.description, "2014-09-15")
		XCTAssertEqual(inst.statusHistory![1].status!, "active")
		XCTAssertEqual(inst.statusHistory![2].period!.end!.description, "2014-09-24")
		XCTAssertEqual(inst.statusHistory![2].period!.start!.description, "2014-09-22")
		XCTAssertEqual(inst.statusHistory![2].status!, "onhold")
		XCTAssertEqual(inst.statusHistory![3].period!.start!.description, "2014-09-25")
		XCTAssertEqual(inst.statusHistory![3].status!, "active")
		XCTAssertEqual(inst.type![0].coding![0].code!, "HACC")
		XCTAssertEqual(inst.type![0].coding![0].display!, "Home and Community Care Package")
		XCTAssertEqual(inst.type![0].coding![0].system!.absoluteString!, "http://example.org/EpisodeOfCare/Type")
		
		return inst
	}
}
