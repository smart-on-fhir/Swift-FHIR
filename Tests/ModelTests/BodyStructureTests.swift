//
//  BodyStructureTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRBodyStructure = Models.BodyStructure
#else
import SwiftFHIR
typealias SwiftFHIRBodyStructure = SwiftFHIR.BodyStructure
#endif


class BodyStructureTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRBodyStructure {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBodyStructure {
		return try SwiftFHIRBodyStructure(json: json)
	}
	
	func testBodyStructure1() {
		do {
			let instance = try runBodyStructure1()
			try runBodyStructure1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodyStructure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodyStructure1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodyStructure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodystructure-example-fetus.json")
		
		XCTAssertEqual(inst.description_fhir, "EDD 1/1/2017 confirmation by LMP")
		XCTAssertEqual(inst.id, "fetus")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodystructure/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.coding?[0].code, "83418008")
		XCTAssertEqual(inst.location?.coding?[0].display, "Entire fetus (body structure)")
		XCTAssertEqual(inst.location?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.location?.text, "Fetus")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testBodyStructure2() {
		do {
			let instance = try runBodyStructure2()
			try runBodyStructure2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodyStructure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodyStructure2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodyStructure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodystructure-example-tumor.json")
		
		XCTAssertEqual(inst.description_fhir, "7 cm maximum diameter")
		XCTAssertEqual(inst.id, "tumor")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodystructure/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.image?[0].contentType, "application/dicom")
		XCTAssertEqual(inst.image?[0].url?.absoluteString, "http://imaging.acme.com/wado/server?requestType=WADO&amp;wado_details")
		XCTAssertEqual(inst.location?.coding?[0].code, "78961009")
		XCTAssertEqual(inst.location?.coding?[0].display, "Splenic structure (body structure)")
		XCTAssertEqual(inst.location?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.location?.text, "Spleen")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.morphology?.coding?[0].code, "4147007")
		XCTAssertEqual(inst.morphology?.coding?[0].display, "Mass (morphologic abnormality)")
		XCTAssertEqual(inst.morphology?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.morphology?.text, "Splenic mass")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testBodyStructure3() {
		do {
			let instance = try runBodyStructure3()
			try runBodyStructure3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BodyStructure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBodyStructure3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBodyStructure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bodystructure-example-skin-patch.json")
		
		XCTAssertEqual(inst.active, false)
		XCTAssertEqual(inst.description_fhir, "inner surface (volar) of the left forearm")
		XCTAssertEqual(inst.id, "skin-patch")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/bodystructure/identifiers")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.coding?[0].code, "14975008")
		XCTAssertEqual(inst.location?.coding?[0].display, "Forearm")
		XCTAssertEqual(inst.location?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.location?.text, "Forearm")
		XCTAssertEqual(inst.locationQualifier?[0].coding?[0].code, "419161000")
		XCTAssertEqual(inst.locationQualifier?[0].coding?[0].display, "Unilateral left")
		XCTAssertEqual(inst.locationQualifier?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.locationQualifier?[0].text, "Left")
		XCTAssertEqual(inst.locationQualifier?[1].coding?[0].code, "263929005")
		XCTAssertEqual(inst.locationQualifier?[1].coding?[0].display, "Volar")
		XCTAssertEqual(inst.locationQualifier?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.locationQualifier?[1].text, "Volar")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.morphology?.text, "Skin patch")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
