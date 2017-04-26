//
//  BodySiteTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRBodySite = Models.BodySite
#else
import SwiftFHIR
typealias SwiftFHIRBodySite = SwiftFHIR.BodySite
#endif


class BodySiteTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRBodySite {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBodySite {
		return try SwiftFHIRBodySite(json: json)
	}
	
	func testBodySite1() {
		do {
			let instance = try runBodySite1()
			try runBodySite1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodySite1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodySite {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-fetus.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "83418008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Entire fetus (body structure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Fetus")
		XCTAssertEqual(inst.description_fhir, "EDD 1/1/2017 confirmation by LMP")
		XCTAssertEqual(inst.id, "fetus")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testBodySite2() {
		do {
			let instance = try runBodySite2()
			try runBodySite2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodySite2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodySite {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-skin-patch.json")
		
		XCTAssertEqual(inst.active, false)
		XCTAssertEqual(inst.code?.coding?[0].code, "39937001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Skin structure (body structure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Skin patch")
		XCTAssertEqual(inst.description_fhir, "inner surface (volar) of the left forearm")
		XCTAssertEqual(inst.id, "skin-patch")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testBodySite3() {
		do {
			let instance = try runBodySite3()
			try runBodySite3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodySite3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodySite {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-tumor.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "4147007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Mass (morphologic abnormality)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Splenic mass")
		XCTAssertEqual(inst.description_fhir, "7 cm maximum diameter")
		XCTAssertEqual(inst.id, "tumor")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.image?[0].contentType, "application/dicom")
		XCTAssertEqual(inst.image?[0].url?.absoluteString, "http://imaging.acme.com/wado/server?requestType=WADO&amp;wado_details")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.qualifier?[0].coding?[0].code, "78961009")
		XCTAssertEqual(inst.qualifier?[0].coding?[0].display, "Splenic structure (body structure)")
		XCTAssertEqual(inst.qualifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.qualifier?[0].text, "Splenic mass")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
