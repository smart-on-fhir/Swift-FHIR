//
//  AdverseEventTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRAdverseEvent = Models.AdverseEvent
#else
import SwiftFHIR
typealias SwiftFHIRAdverseEvent = SwiftFHIR.AdverseEvent
#endif


class AdverseEventTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRAdverseEvent {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRAdverseEvent {
		return try SwiftFHIRAdverseEvent(json: json)
	}
	
	func testAdverseEvent1() {
		do {
			let instance = try runAdverseEvent1()
			try runAdverseEvent1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test AdverseEvent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runAdverseEvent1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRAdverseEvent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "adverseevent-example.json")
		
		XCTAssertEqual(inst.actuality, AdverseEventActuality(rawValue: "actual")!)
		XCTAssertEqual(inst.category?[0].coding?[0].code, "product-use-error")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Product Use Error")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adverse-event-category")
		XCTAssertEqual(inst.date?.description, "2017-01-29T12:34:56+00:00")
		XCTAssertEqual(inst.event?.coding?[0].code, "304386008")
		XCTAssertEqual(inst.event?.coding?[0].display, "O/E - itchy rash")
		XCTAssertEqual(inst.event?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.event?.text, "This was a mild rash on the left forearm")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://acme.com/ids/patients/risks")
		XCTAssertEqual(inst.identifier?.value, "49476534")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.recorder?.reference, "Practitioner/example")
		XCTAssertEqual(inst.seriousness?.coding?[0].code, "Non-serious")
		XCTAssertEqual(inst.seriousness?.coding?[0].display, "Non-serious")
		XCTAssertEqual(inst.seriousness?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adverse-event-seriousness")
		XCTAssertEqual(inst.severity?.coding?[0].code, "mild")
		XCTAssertEqual(inst.severity?.coding?[0].display, "Mild")
		XCTAssertEqual(inst.severity?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adverse-event-severity")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.suspectEntity?[0].instance?.reference, "Medication/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
