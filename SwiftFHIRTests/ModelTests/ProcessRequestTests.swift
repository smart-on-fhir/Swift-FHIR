//
//  ProcessRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcessRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ProcessRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> ProcessRequest {
		let instance = ProcessRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessRequest1() {
		let instance = testProcessRequest1_impl()
		testProcessRequest1_impl(json: instance.asJSON())
	}
	
	func testProcessRequest1_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-poll-eob.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1115")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.phr.com/patient/12345/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "115")
		XCTAssertEqual(inst.include![0], "ExplanationOfBenefit")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest2() {
		let instance = testProcessRequest2_impl()
		testProcessRequest2_impl(json: instance.asJSON())
	}
	
	func testProcessRequest2_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-poll-exclusive.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.exclude![0], "SupportingDocumentation")
		XCTAssertEqual(inst.exclude![1], "Reconciliation")
		XCTAssertEqual(inst.id!, "1113")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "113")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest3() {
		let instance = testProcessRequest3_impl()
		testProcessRequest3_impl(json: instance.asJSON())
	}
	
	func testProcessRequest3_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-poll-inclusive.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1112")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "112")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest4() {
		let instance = testProcessRequest4_impl()
		testProcessRequest4_impl(json: instance.asJSON())
	}
	
	func testProcessRequest4_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-poll-payrec.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1114")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "114")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.period!.end!.description, "2014-08-20")
		XCTAssertEqual(inst.period!.start!.description, "2014-08-10")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest5() {
		let instance = testProcessRequest5_impl()
		testProcessRequest5_impl(json: instance.asJSON())
	}
	
	func testProcessRequest5_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-poll-specific.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1111")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "111")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://benefitco.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest6() {
		let instance = testProcessRequest6_impl()
		testProcessRequest6_impl(json: instance.asJSON())
	}
	
	func testProcessRequest6_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-reprocess.json")
		
		XCTAssertEqual(inst.action!, "reprocess")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "44654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "44543")
		XCTAssertEqual(inst.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.reference!, "ABC12345G")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ReProcess ProcessRequest resource.</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest7() {
		let instance = testProcessRequest7_impl()
		testProcessRequest7_impl(json: instance.asJSON())
	}
	
	func testProcessRequest7_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-reverse.json")
		
		XCTAssertEqual(inst.action!, "cancel")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "76543")
		XCTAssertFalse(inst.nullify!)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Reversal ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest8() {
		let instance = testProcessRequest8_impl()
		testProcessRequest8_impl(json: instance.asJSON())
	}
	
	func testProcessRequest8_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example-status.json")
		
		XCTAssertEqual(inst.action!, "status")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87655")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "1776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Status ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest9() {
		let instance = testProcessRequest9_impl()
		testProcessRequest9_impl(json: instance.asJSON())
	}
	
	func testProcessRequest9_impl(json: FHIRJSON? = nil) -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "processrequest-example.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1110")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "110")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
