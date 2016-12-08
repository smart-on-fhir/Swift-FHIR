//
//  DiagnosticRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-08.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DiagnosticRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.DiagnosticRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.DiagnosticRequest {
		return try SwiftFHIR.DiagnosticRequest(json: json)
	}
	
	func testDiagnosticRequest1() {
		do {
			let instance = try runDiagnosticRequest1()
			try runDiagnosticRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DiagnosticRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-di.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "24627-2")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Chest CT")
		XCTAssertEqual(inst.id, "di")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for metastatic disease")
		XCTAssertEqual(inst.requester?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticRequest2() {
		do {
			let instance = try runDiagnosticRequest2()
			try runDiagnosticRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DiagnosticRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-ft4.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "3024-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Free T4")
		XCTAssertEqual(inst.id, "ft4")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "reflex-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2015-08-27T09:33:27+07:00")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticRequest3() {
		do {
			let instance = try runDiagnosticRequest3()
			try runDiagnosticRequest3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DiagnosticRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-lipid.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "LIPID")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "fasting")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "lipid")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "2345234234234")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.note?[0].text, "patient is afraid of needles")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "V173")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.supportingInformation?[0].reference, "#fasting")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticRequest4() {
		do {
			let instance = try runDiagnosticRequest4()
			try runDiagnosticRequest4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticRequest4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DiagnosticRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-pgx.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-10T15:00:00-07:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "47403-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "CYP2D6 gene targeted mutation analysis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "example-pgx")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.requester?.reference, "Practitioner/12345")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/899962")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticRequest5() {
		do {
			let instance = try runDiagnosticRequest5()
			try runDiagnosticRequest5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticRequest5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.DiagnosticRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-genetics-example-1.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "og-example1")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-05-12T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
