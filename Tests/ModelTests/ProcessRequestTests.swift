//
//  ProcessRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcessRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.ProcessRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.ProcessRequest {
		let instance = SwiftFHIR.ProcessRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcessRequest1() {
		do {
			let instance = try runProcessRequest1()
			try runProcessRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-eob.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1115")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.phr.com/patient/12345/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "115")
		XCTAssertEqual(inst.include?[0], "ExplanationOfBenefit")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest2() {
		do {
			let instance = try runProcessRequest2()
			try runProcessRequest2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-exclusive.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.exclude?[0], "SupportingDocumentation")
		XCTAssertEqual(inst.exclude?[1], "Reconciliation")
		XCTAssertEqual(inst.id, "1113")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "113")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest3() {
		do {
			let instance = try runProcessRequest3()
			try runProcessRequest3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-inclusive.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1112")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "112")
		XCTAssertEqual(inst.include?[0], "Reconciliation")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest4() {
		do {
			let instance = try runProcessRequest4()
			try runProcessRequest4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-payrec.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1114")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "114")
		XCTAssertEqual(inst.include?[0], "Reconciliation")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.period?.end?.description, "2014-08-20")
		XCTAssertEqual(inst.period?.start?.description, "2014-08-10")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest5() {
		do {
			let instance = try runProcessRequest5()
			try runProcessRequest5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-specific.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1111")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "111")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://benefitco.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest6() {
		do {
			let instance = try runProcessRequest6()
			try runProcessRequest6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reprocess.json")
		
		XCTAssertEqual(inst.action, "reprocess")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "44654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "44543")
		XCTAssertEqual(inst.item?[0].sequenceLinkId, 1)
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.reference, "ABC12345G")
		XCTAssertEqual(inst.request?.reference, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the ReProcess ProcessRequest resource.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest7() {
		do {
			let instance = try runProcessRequest7()
			try runProcessRequest7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reverse.json")
		
		XCTAssertEqual(inst.action, "cancel")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "87654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "76543")
		XCTAssertFalse(inst.nullify ?? true)
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://BenefitsInc.com/fhir/oralhealthclaim/12345")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Reversal ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest8() {
		do {
			let instance = try runProcessRequest8()
			try runProcessRequest8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-status.json")
		
		XCTAssertEqual(inst.action, "status")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "87655")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "1776543")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://BenefitsInc.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.response?.reference, "http://BenefitsInc.com/fhir/claimresponse/3500")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Status ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProcessRequest9() {
		do {
			let instance = try runProcessRequest9()
			try runProcessRequest9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw")
		}
	}
	
	@discardableResult
	func runProcessRequest9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.ProcessRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example.json")
		
		XCTAssertEqual(inst.action, "poll")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1110")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "110")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.text?.div, "<div>A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
