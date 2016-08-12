//
//  DiagnosticRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DiagnosticRequestTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> DiagnosticRequest {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DiagnosticRequest {
		let instance = DiagnosticRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticRequest1() {
		do {
			let instance = try runDiagnosticRequest1()
			try runDiagnosticRequest1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw")
		}
	}
	
	func runDiagnosticRequest1(json: FHIRJSON? = nil) throws -> DiagnosticRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-di.json")
		
		XCTAssertEqual(inst.code!.coding![0].code, "24627-2")
		XCTAssertEqual(inst.code!.coding![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.text, "Chest CT")
		XCTAssertEqual(inst.id, "di")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.reason![0].text, "Check for metastatic disease")
		XCTAssertEqual(inst.requester!.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester!.reference, "Practitioner/example")
		XCTAssertEqual(inst.stage!.coding![0].code, "original-order")
		XCTAssertEqual(inst.stage!.coding![0].system?.absoluteString, "http://hl7.org/fhir/request-stage")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject!.reference, "Patient/dicom")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
	
	func testDiagnosticRequest2() {
		do {
			let instance = try runDiagnosticRequest2()
			try runDiagnosticRequest2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw")
		}
	}
	
	func runDiagnosticRequest2(json: FHIRJSON? = nil) throws -> DiagnosticRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-ft4.json")
		
		XCTAssertEqual(inst.code!.coding![0].code, "3024-7")
		XCTAssertEqual(inst.code!.coding![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.text, "Free T4")
		XCTAssertEqual(inst.id, "ft4")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2015-08-27T09:33:27+07:00")
		XCTAssertEqual(inst.requester!.reference, "Practitioner/example")
		XCTAssertEqual(inst.stage!.coding![0].code, "reflex-order")
		XCTAssertEqual(inst.stage!.coding![0].system?.absoluteString, "http://hl7.org/fhir/request-stage")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject!.reference, "Patient/pat2")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
	
	func testDiagnosticRequest3() {
		do {
			let instance = try runDiagnosticRequest3()
			try runDiagnosticRequest3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw")
		}
	}
	
	func runDiagnosticRequest3(json: FHIRJSON? = nil) throws -> DiagnosticRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-example-lipid.json")
		
		XCTAssertEqual(inst.code!.coding![0].code, "LIPID")
		XCTAssertEqual(inst.code!.coding![0].system?.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.code!.text, "Lipid Panel")
		XCTAssertEqual(inst.contained![0].id, "fasting")
		XCTAssertEqual(inst.context!.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "lipid")
		XCTAssertEqual(inst.identifier![0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].code, "PLAC")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier![0].type!.text, "Placer")
		XCTAssertEqual(inst.identifier![0].value, "2345234234234")
		XCTAssertEqual(inst.note![0].text, "patient is afraid of needles")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.performer!.reference, "Practitioner/example")
		XCTAssertEqual(inst.reason![0].coding![0].code, "V173")
		XCTAssertEqual(inst.reason![0].coding![0].display, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reason![0].coding![0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.requester!.reference, "Practitioner/example")
		XCTAssertEqual(inst.stage!.coding![0].code, "original-order")
		XCTAssertEqual(inst.stage!.coding![0].system?.absoluteString, "http://hl7.org/fhir/request-stage")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject!.reference, "Patient/example")
		XCTAssertEqual(inst.supportingInformation![0].reference, "#fasting")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
	
	func testDiagnosticRequest4() {
		do {
			let instance = try runDiagnosticRequest4()
			try runDiagnosticRequest4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticRequest successfully, but threw")
		}
	}
	
	func runDiagnosticRequest4(json: FHIRJSON? = nil) throws -> DiagnosticRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticrequest-genetics-example-1.json")
		
		XCTAssertEqual(inst.code!.coding![0].code, "49874-1")
		XCTAssertEqual(inst.code!.coding![0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code!.text, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.context!.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "og-example1")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-05-12T16:16:00-07:00")
		XCTAssertEqual(inst.performer!.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester!.reference, "Practitioner/example")
		XCTAssertEqual(inst.stage!.coding![0].code, "original-order")
		XCTAssertEqual(inst.stage!.coding![0].system?.absoluteString, "http://hl7.org/fhir/request-stage")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.subject!.reference, "Patient/example")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}
