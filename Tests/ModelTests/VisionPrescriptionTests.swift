//
//  VisionPrescriptionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRVisionPrescription = Models.VisionPrescription
#else
import SwiftFHIR
typealias SwiftFHIRVisionPrescription = SwiftFHIR.VisionPrescription
#endif


class VisionPrescriptionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRVisionPrescription {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRVisionPrescription {
		return try SwiftFHIRVisionPrescription(json: json)
	}
	
	func testVisionPrescription1() {
		do {
			let instance = try runVisionPrescription1()
			try runVisionPrescription1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test VisionPrescription successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runVisionPrescription1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRVisionPrescription {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "visionprescription-example-1.json")
		
		XCTAssertEqual(inst.created?.description, "2014-06-15")
		XCTAssertEqual(inst.dateWritten?.description, "2014-06-15")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/f001")
		XCTAssertEqual(inst.id, "33124")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.happysight.com/prescription")
		XCTAssertEqual(inst.identifier?[0].value, "15014")
		XCTAssertEqual(inst.lensSpecification?[0].add, "1.75")
		XCTAssertEqual(inst.lensSpecification?[0].axis, 160)
		XCTAssertEqual(inst.lensSpecification?[0].backCurve, "8.7")
		XCTAssertEqual(inst.lensSpecification?[0].brand, "OphthaGuard")
		XCTAssertEqual(inst.lensSpecification?[0].color, "green")
		XCTAssertEqual(inst.lensSpecification?[0].cylinder, "-2.25")
		XCTAssertEqual(inst.lensSpecification?[0].diameter, "14.0")
		XCTAssertEqual(inst.lensSpecification?[0].duration?.code, "month")
		XCTAssertEqual(inst.lensSpecification?[0].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.lensSpecification?[0].duration?.unit, "month")
		XCTAssertEqual(inst.lensSpecification?[0].duration?.value, "1")
		XCTAssertEqual(inst.lensSpecification?[0].eye, VisionEyes(rawValue: "right")!)
		XCTAssertEqual(inst.lensSpecification?[0].note?[0].text, "Shade treatment for extreme light sensitivity")
		XCTAssertEqual(inst.lensSpecification?[0].power, "-2.75")
		XCTAssertEqual(inst.lensSpecification?[0].product?.coding?[0].code, "contact")
		XCTAssertEqual(inst.lensSpecification?[0].product?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.lensSpecification?[1].add, "1.75")
		XCTAssertEqual(inst.lensSpecification?[1].axis, 160)
		XCTAssertEqual(inst.lensSpecification?[1].backCurve, "8.7")
		XCTAssertEqual(inst.lensSpecification?[1].brand, "OphthaGuard")
		XCTAssertEqual(inst.lensSpecification?[1].color, "green")
		XCTAssertEqual(inst.lensSpecification?[1].cylinder, "-3.5")
		XCTAssertEqual(inst.lensSpecification?[1].diameter, "14.0")
		XCTAssertEqual(inst.lensSpecification?[1].duration?.code, "month")
		XCTAssertEqual(inst.lensSpecification?[1].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.lensSpecification?[1].duration?.unit, "month")
		XCTAssertEqual(inst.lensSpecification?[1].duration?.value, "1")
		XCTAssertEqual(inst.lensSpecification?[1].eye, VisionEyes(rawValue: "left")!)
		XCTAssertEqual(inst.lensSpecification?[1].note?[0].text, "Shade treatment for extreme light sensitivity")
		XCTAssertEqual(inst.lensSpecification?[1].power, "-2.75")
		XCTAssertEqual(inst.lensSpecification?[1].product?.coding?[0].code, "contact")
		XCTAssertEqual(inst.lensSpecification?[1].product?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Sample Contract Lens prescription</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testVisionPrescription2() {
		do {
			let instance = try runVisionPrescription2()
			try runVisionPrescription2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test VisionPrescription successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runVisionPrescription2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRVisionPrescription {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "visionprescription-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-06-15")
		XCTAssertEqual(inst.dateWritten?.description, "2014-06-15")
		XCTAssertEqual(inst.id, "33123")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.happysight.com/prescription")
		XCTAssertEqual(inst.identifier?[0].value, "15013")
		XCTAssertEqual(inst.lensSpecification?[0].add, "2.0")
		XCTAssertEqual(inst.lensSpecification?[0].eye, VisionEyes(rawValue: "right")!)
		XCTAssertEqual(inst.lensSpecification?[0].prism?[0].amount, "0.5")
		XCTAssertEqual(inst.lensSpecification?[0].prism?[0].base, VisionBase(rawValue: "down")!)
		XCTAssertEqual(inst.lensSpecification?[0].product?.coding?[0].code, "lens")
		XCTAssertEqual(inst.lensSpecification?[0].product?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.lensSpecification?[0].sphere, "-2.0")
		XCTAssertEqual(inst.lensSpecification?[1].add, "2.0")
		XCTAssertEqual(inst.lensSpecification?[1].axis, 180)
		XCTAssertEqual(inst.lensSpecification?[1].cylinder, "-0.5")
		XCTAssertEqual(inst.lensSpecification?[1].eye, VisionEyes(rawValue: "left")!)
		XCTAssertEqual(inst.lensSpecification?[1].prism?[0].amount, "0.5")
		XCTAssertEqual(inst.lensSpecification?[1].prism?[0].base, VisionBase(rawValue: "up")!)
		XCTAssertEqual(inst.lensSpecification?[1].product?.coding?[0].code, "lens")
		XCTAssertEqual(inst.lensSpecification?[1].product?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.lensSpecification?[1].sphere, "-1.0")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
