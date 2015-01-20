//
//  PendedRequestTests.swift
//  PendedRequestTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PendedRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> PendedRequest? {
		let json = readJSONFile(filename)
		let instance = PendedRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPendedRequest1() {
		let inst = instantiateFrom("pendedrequest-example-eob.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.phr.com/patient/12345/eobrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "115")
		XCTAssertEqual(inst!.include![0], "ExplanationOfBenefit")
	}
	
	func testPendedRequest2() {
		let inst = instantiateFrom("pendedrequest-example-eob.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.phr.com/patient/12345/eobrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "115")
		XCTAssertEqual(inst!.include![0], "ExplanationOfBenefit")
	}
	
	func testPendedRequest3() {
		let inst = instantiateFrom("pendedrequest-example-eob.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://www.phr.com/patient/12345/eobrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "115")
		XCTAssertEqual(inst!.include![0], "ExplanationOfBenefit")
	}
	
	func testPendedRequest4() {
		let inst = instantiateFrom("pendedrequest-example-exclusive.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.exclude![0], "SupportingDocumentation")
		XCTAssertEqual(inst!.exclude![1], "Reconciliation")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "113")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
	}
	
	func testPendedRequest5() {
		let inst = instantiateFrom("pendedrequest-example-exclusive.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.exclude![0], "SupportingDocumentation")
		XCTAssertEqual(inst!.exclude![1], "Reconciliation")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "113")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
	}
	
	func testPendedRequest6() {
		let inst = instantiateFrom("pendedrequest-example-inclusive.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "112")
		XCTAssertEqual(inst!.include![0], "Reconciliation")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
	}
	
	func testPendedRequest7() {
		let inst = instantiateFrom("pendedrequest-example-inclusive.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "112")
		XCTAssertEqual(inst!.include![0], "Reconciliation")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
	}
	
	func testPendedRequest8() {
		let inst = instantiateFrom("pendedrequest-example-payrec.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "114")
		XCTAssertEqual(inst!.include![0], "Reconciliation")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.period!.end!.description, "2014-08-20")
		XCTAssertEqual(inst!.period!.start!.description, "2014-08-10")
	}
	
	func testPendedRequest9() {
		let inst = instantiateFrom("pendedrequest-example-payrec.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "114")
		XCTAssertEqual(inst!.include![0], "Reconciliation")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.period!.end!.description, "2014-08-20")
		XCTAssertEqual(inst!.period!.start!.description, "2014-08-10")
	}
	
	func testPendedRequest10() {
		let inst = instantiateFrom("pendedrequest-example-specific.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PendedRequest instance")
		
		XCTAssertEqual(inst!.created!.description, "2014-08-16")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst!.identifier![0].value!, "111")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.request!.reference!, "http://benefitco.com/oralhealthclaim/12345")
	}
}
