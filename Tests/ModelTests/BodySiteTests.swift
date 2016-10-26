//
//  BodySiteTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.7.0.10073 on 2016-10-26.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-fetus.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "83418008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Entire fetus (body structure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Fetus")
		XCTAssertEqual(inst.description_fhir, "EDD 1/1/2017 confirmation by LMP")
		XCTAssertEqual(inst.id, "fetus")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testBodySite2() {
		do {
			let instance = try runBodySite2()
			try runBodySite2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw")
		}
	}
	
	@discardableResult
	func runBodySite2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-skin-patch.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "39937001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Skin structure (body structure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Skin patch")
		XCTAssertEqual(inst.description_fhir, "inner surface (volar) of the left forearm")
		XCTAssertEqual(inst.id, "skin-patch")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testBodySite3() {
		do {
			let instance = try runBodySite3()
			try runBodySite3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test BodySite successfully, but threw")
		}
	}
	
	@discardableResult
	func runBodySite3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.BodySite {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "bodysite-example-tumor.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "4147007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Mass (morphologic abnormality)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Splenic mass")
		XCTAssertEqual(inst.description_fhir, "7 cm maximum diameter")
		XCTAssertEqual(inst.id, "tumor")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodysite/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.image?[0].contentType, "application/dicom")
//		XCTAssertEqual(inst.image?[0].url?.absoluteString, "http://10.1.2.3:1000/wado?requestType=WADO&amp;wado_details…")
		XCTAssertEqual(inst.modifier?[0].coding?[0].code, "78961009")
		XCTAssertEqual(inst.modifier?[0].coding?[0].display, "Splenic structure (body structure)")
		XCTAssertEqual(inst.modifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.modifier?[0].text, "Splenic mass")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
