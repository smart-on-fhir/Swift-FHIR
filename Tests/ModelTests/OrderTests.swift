//
//  OrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrderTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Order {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Order {
		let instance = SwiftFHIR.Order(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrder1() {
		do {
			let instance = try runOrder1()
			try runOrder1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Order successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrder1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Order {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "order-example-f201-physiotherapy.json")
		
		XCTAssertEqual(inst.date?.description, "2013-03-05T12:00:00+01:00")
		XCTAssertEqual(inst.detail?[0].display, "Consultation, not yet developed")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.reasonCodeableConcept?.text, "It concerns a one-off order for consultation in order to evaluate the stairs walking ability of Roel.")
		XCTAssertEqual(inst.source?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.target?.display, "Juri van Gelder")
		XCTAssertEqual(inst.target?.reference, "Practitioner/f203")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.when?.code?.coding?[0].code, "394848005")
		XCTAssertEqual(inst.when?.code?.coding?[0].display, "Normal priority")
		XCTAssertEqual(inst.when?.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testOrder2() {
		do {
			let instance = try runOrder2()
			try runOrder2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Order successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrder2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Order {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "order-example.json")
		
		XCTAssertEqual(inst.date?.description, "2012-12-28T09:03:04+11:00")
		XCTAssertEqual(inst.detail?[0].reference, "MedicationOrder/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.reasonCodeableConcept?.text, "Standard admission testing")
		XCTAssertEqual(inst.source?.reference, "Practitioner/example")
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.div, "<div>Request for Prescription (on patient Donald DUCK @ Acme Healthcare, Inc. MR = 654321)</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.when?.code?.coding?[0].code, "today")
		XCTAssertEqual(inst.when?.code?.coding?[0].system?.absoluteString, "http://acme.com/codes/request-priority")
		
		return inst
	}
}
