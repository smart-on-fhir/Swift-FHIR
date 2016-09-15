//
//  CompositionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CompositionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Composition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Composition {
		let instance = SwiftFHIR.Composition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testComposition1() {
		do {
			let instance = try runComposition1()
			try runComposition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Composition successfully, but threw")
		}
	}
	
	@discardableResult
	func runComposition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Composition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "composition-example.json")
		
		XCTAssertEqual(inst.attester?[0].mode?[0], "legal")
		XCTAssertEqual(inst.attester?[0].party?.display, "Harold Hippocrates, MD")
		XCTAssertEqual(inst.attester?[0].party?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.attester?[0].time?.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst.author?[0].display, "Harold Hippocrates, MD")
		XCTAssertEqual(inst.author?[0].reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.class_fhir?.coding?[0].code, "LP173421-1")
		XCTAssertEqual(inst.class_fhir?.coding?[0].display, "Report")
		XCTAssertEqual(inst.class_fhir?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.confidentiality, "N")
		XCTAssertEqual(inst.custodian?.display, "Good Health Clinic")
		XCTAssertEqual(inst.custodian?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.date?.description, "2012-01-04T09:10:14Z")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/xcda")
		XCTAssertEqual(inst.event?[0].code?[0].coding?[0].code, "HEALTHREC")
		XCTAssertEqual(inst.event?[0].code?[0].coding?[0].display, "health record")
		XCTAssertEqual(inst.event?[0].code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.event?[0].detail?[0].reference, "Observation/example")
		XCTAssertEqual(inst.event?[0].period?.end?.description, "2012-11-12")
		XCTAssertEqual(inst.event?[0].period?.start?.description, "2010-07-18")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://healthintersections.com.au/test")
		XCTAssertEqual(inst.identifier?.value, "1")
		XCTAssertEqual(inst.section?[0].code?.coding?[0].code, "11348-0")
		XCTAssertEqual(inst.section?[0].code?.coding?[0].display, "History of past illness Narrative")
		XCTAssertEqual(inst.section?[0].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.section?[0].entry?[0].reference, "Condition/stroke")
		XCTAssertEqual(inst.section?[0].entry?[1].reference, "Condition/example")
		XCTAssertEqual(inst.section?[0].entry?[2].reference, "Condition/example2")
		XCTAssertEqual(inst.section?[0].mode, "snapshot")
		XCTAssertEqual(inst.section?[0].orderedBy?.coding?[0].code, "event-date")
		XCTAssertEqual(inst.section?[0].orderedBy?.coding?[0].display, "Sorted by Event Date")
		XCTAssertEqual(inst.section?[0].orderedBy?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/list-order")
		XCTAssertEqual(inst.section?[0].text?.status, "generated")
		XCTAssertEqual(inst.section?[0].title, "History of present illness")
		XCTAssertEqual(inst.section?[1].code?.coding?[0].code, "10157-6")
		XCTAssertEqual(inst.section?[1].code?.coding?[0].display, "History of family member diseases Narrative")
		XCTAssertEqual(inst.section?[1].code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.section?[1].emptyReason?.coding?[0].code, "withheld")
		XCTAssertEqual(inst.section?[1].emptyReason?.coding?[0].display, "Information Withheld")
		XCTAssertEqual(inst.section?[1].emptyReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/list-empty-reason")
		XCTAssertEqual(inst.section?[1].mode, "snapshot")
		XCTAssertEqual(inst.section?[1].text?.status, "generated")
		XCTAssertEqual(inst.section?[1].title, "History of family member diseases")
		XCTAssertEqual(inst.status, "final")
		XCTAssertEqual(inst.subject?.display, "Henry Levin the 7th")
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Consultation Note")
		XCTAssertEqual(inst.type?.coding?[0].code, "11488-4")
		XCTAssertEqual(inst.type?.coding?[0].display, "Consult note")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
}
