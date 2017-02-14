//
//  ProcessRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProcessRequest = Models.ProcessRequest
#else
import SwiftFHIR
typealias SwiftFHIRProcessRequest = SwiftFHIR.ProcessRequest
#endif


class ProcessRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProcessRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProcessRequest {
		return try SwiftFHIRProcessRequest(json: json)
	}
	
	func testProcessRequest1() {
		do {
			let instance = try runProcessRequest1()
			try runProcessRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-eob.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1115")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.phr.com/patient/12345/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "115")
		XCTAssertEqual(inst.include?[0], "ExplanationOfBenefit")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest2() {
		do {
			let instance = try runProcessRequest2()
			try runProcessRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-exclusive.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.exclude?[0], "Communication")
		XCTAssertEqual(inst.exclude?[1], "PaymentReconciliation")
		XCTAssertEqual(inst.id, "1113")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "113")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest3() {
		do {
			let instance = try runProcessRequest3()
			try runProcessRequest3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-inclusive.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1112")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "112")
		XCTAssertEqual(inst.include?[0], "PaymentReconciliation")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest4() {
		do {
			let instance = try runProcessRequest4()
			try runProcessRequest4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-payrec.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1114")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "114")
		XCTAssertEqual(inst.include?[0], "PaymentReconciliation")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.period?.end?.description, "2014-08-20")
		XCTAssertEqual(inst.period?.start?.description, "2014-08-10")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest5() {
		do {
			let instance = try runProcessRequest5()
			try runProcessRequest5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-poll-specific.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1111")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "111")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://benefitco.com/oralhealthclaim/12345")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest6() {
		do {
			let instance = try runProcessRequest6()
			try runProcessRequest6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reprocess.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "reprocess")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "44654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "44543")
		XCTAssertEqual(inst.item?[0].sequenceLinkId, 1)
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.reference, "ABC12345G")
		XCTAssertEqual(inst.request?.reference, "http://BenefitsInc.com/fhir/claim/12345")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ReProcess ProcessRequest resource.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest7() {
		do {
			let instance = try runProcessRequest7()
			try runProcessRequest7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-reverse.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "cancel")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "87654")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "76543")
		XCTAssertEqual(inst.nullify, false)
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://BenefitsInc.com/fhir/claim/12345")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Reversal ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest8() {
		do {
			let instance = try runProcessRequest8()
			try runProcessRequest8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example-status.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "status")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "87655")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "1776543")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.request?.reference, "http://happyvalley.com/claim/12345")
		XCTAssertEqual(inst.response?.reference, "http://BenefitsInc.com/fhir/claimresponse/3500")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Status ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcessRequest9() {
		do {
			let instance = try runProcessRequest9()
			try runProcessRequest9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcessRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcessRequest9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcessRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "processrequest-example.json")
		
		XCTAssertEqual(inst.action, ActionList(rawValue: "poll")!)
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.id, "1110")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/processrequest")
		XCTAssertEqual(inst.identifier?[0].value, "110")
		XCTAssertEqual(inst.organization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the Poll ProcessRequest</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
