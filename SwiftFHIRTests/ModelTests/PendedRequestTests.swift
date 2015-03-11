//
//  PendedRequestTests.swift
//  PendedRequestTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PendedRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> PendedRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> PendedRequest {
		let instance = PendedRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPendedRequest1() {
		let instance = testPendedRequest1_impl()
		testPendedRequest1_impl(json: instance.asJSON())
	}
	
	func testPendedRequest1_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example-eob.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1115")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.phr.com/patient/12345/eobrequest")
		XCTAssertEqual(inst.identifier![0].value!, "115")
		XCTAssertEqual(inst.include![0], "ExplanationOfBenefit")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPendedRequest2() {
		let instance = testPendedRequest2_impl()
		testPendedRequest2_impl(json: instance.asJSON())
	}
	
	func testPendedRequest2_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example-exclusive.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.exclude![0], "SupportingDocumentation")
		XCTAssertEqual(inst.exclude![1], "Reconciliation")
		XCTAssertEqual(inst.id!, "1113")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst.identifier![0].value!, "113")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPendedRequest3() {
		let instance = testPendedRequest3_impl()
		testPendedRequest3_impl(json: instance.asJSON())
	}
	
	func testPendedRequest3_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example-inclusive.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1112")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst.identifier![0].value!, "112")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPendedRequest4() {
		let instance = testPendedRequest4_impl()
		testPendedRequest4_impl(json: instance.asJSON())
	}
	
	func testPendedRequest4_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example-payrec.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1114")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst.identifier![0].value!, "114")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.period!.end!.description, "2014-08-20")
		XCTAssertEqual(inst.period!.start!.description, "2014-08-10")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPendedRequest5() {
		let instance = testPendedRequest5_impl()
		testPendedRequest5_impl(json: instance.asJSON())
	}
	
	func testPendedRequest5_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example-specific.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1111")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst.identifier![0].value!, "111")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://benefitco.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPendedRequest6() {
		let instance = testPendedRequest6_impl()
		testPendedRequest6_impl(json: instance.asJSON())
	}
	
	func testPendedRequest6_impl(json: JSONDictionary? = nil) -> PendedRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pendedrequest-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1110")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/pendedrequest")
		XCTAssertEqual(inst.identifier![0].value!, "110")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the PendedRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
