//
//  BodySiteTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class BodySiteTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.BodySite {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.BodySite {
		let instance = SwiftFHIR.BodySite(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBodySite1() {
		do {
			let instance = try runBodySite1()
			try runBodySite1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw")
		}
	}
	
	@discardableResult
	func runBodySite1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "53120007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Arm")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Arm")
		XCTAssertEqual(inst.description_fhir, "front of upper left arm directly below the tattoo")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acmehosp.com/bodysites")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.image?[0].contentType, "image/png;base64")
		XCTAssertEqual(inst.image?[0].title, "ARM")
		XCTAssertEqual(inst.modifier?[0].coding?[0].code, "419161000")
		XCTAssertEqual(inst.modifier?[0].coding?[0].display, "Unilateral left")
		XCTAssertEqual(inst.modifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifier?[0].text, "Left")
		XCTAssertEqual(inst.modifier?[1].coding?[0].code, "261183002")
		XCTAssertEqual(inst.modifier?[1].coding?[0].display, "Upper")
		XCTAssertEqual(inst.modifier?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifier?[1].text, "Upper")
		XCTAssertEqual(inst.modifier?[2].coding?[0].code, "255549009")
		XCTAssertEqual(inst.modifier?[2].coding?[0].display, "Anterior")
		XCTAssertEqual(inst.modifier?[2].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifier?[2].text, "Anterior")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
