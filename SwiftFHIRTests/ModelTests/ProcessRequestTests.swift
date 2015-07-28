//
//  ProcessRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcessRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> ProcessRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ProcessRequest {
		let instance = ProcessRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessRequest1() throws {
		let instance = try runProcessRequest1()
		try runProcessRequest1(instance.asJSON())
	}
	
	func runProcessRequest1(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-eob.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1115")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.phr.com/patient/12345/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "115")
		XCTAssertEqual(inst.include![0], "ExplanationOfBenefit")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest2() throws {
		let instance = try runProcessRequest2()
		try runProcessRequest2(instance.asJSON())
	}
	
	func runProcessRequest2(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-exclusive.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.exclude![0], "SupportingDocumentation")
		XCTAssertEqual(inst.exclude![1], "Reconciliation")
		XCTAssertEqual(inst.id!, "1113")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "113")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest3() throws {
		let instance = try runProcessRequest3()
		try runProcessRequest3(instance.asJSON())
	}
	
	func runProcessRequest3(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-inclusive.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1112")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "112")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest4() throws {
		let instance = try runProcessRequest4()
		try runProcessRequest4(instance.asJSON())
	}
	
	func runProcessRequest4(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-payrec.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1114")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "114")
		XCTAssertEqual(inst.include![0], "Reconciliation")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.period!.end!.description, "2014-08-20")
		XCTAssertEqual(inst.period!.start!.description, "2014-08-10")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest5() throws {
		let instance = try runProcessRequest5()
		try runProcessRequest5(instance.asJSON())
	}
	
	func runProcessRequest5(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-specific.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1111")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "111")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://benefitco.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest6() throws {
		let instance = try runProcessRequest6()
		try runProcessRequest6(instance.asJSON())
	}
	
	func runProcessRequest6(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reprocess.json")
		
		XCTAssertEqual(inst.action!, "reprocess")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "44654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "44543")
		XCTAssertEqual(inst.item![0].sequenceLinkId!, 1)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.reference!, "ABC12345G")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the ReProcess ProcessRequest resource.</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest7() throws {
		let instance = try runProcessRequest7()
		try runProcessRequest7(instance.asJSON())
	}
	
	func runProcessRequest7(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reverse.json")
		
		XCTAssertEqual(inst.action!, "cancel")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87654")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "76543")
		XCTAssertFalse(inst.nullify!)
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Reversal ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest8() throws {
		let instance = try runProcessRequest8()
		try runProcessRequest8(instance.asJSON())
	}
	
	func runProcessRequest8(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-status.json")
		
		XCTAssertEqual(inst.action!, "status")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "87655")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "1776543")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.request!.reference!, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.response!.reference!, "http://BenefitsInc.com/fhir/claimresponse/3500")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Status ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testProcessRequest9() throws {
		let instance = try runProcessRequest9()
		try runProcessRequest9(instance.asJSON())
	}
	
	func runProcessRequest9(json: FHIRJSON? = nil) throws -> ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example.json")
		
		XCTAssertEqual(inst.action!, "poll")
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.id!, "1110")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier![0].value!, "110")
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
