//
//  VisionPrescriptionTests.swift
//  VisionPrescriptionTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class VisionPrescriptionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> VisionPrescription? {
		let json = readJSONFile(filename)
		let instance = VisionPrescription(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testVisionPrescription1() {
		let inst = instantiateFrom("visionprescription-example-1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a VisionPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2014-06-15")!)
		XCTAssertEqual(inst!.dispense![0].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![0].axis!, 160)
		XCTAssertEqual(inst!.dispense![0].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![0].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![0].color!, "green")
		XCTAssertEqual(inst!.dispense![0].cylinder!, NSDecimalNumber(string: "-2.25"))
		XCTAssertEqual(inst!.dispense![0].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![0].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![0].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].eye!, "right")
		XCTAssertEqual(inst!.dispense![0].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![0].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![0].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![1].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![1].axis!, 160)
		XCTAssertEqual(inst!.dispense![1].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![1].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![1].color!, "green")
		XCTAssertEqual(inst!.dispense![1].cylinder!, NSDecimalNumber(string: "-3.5"))
		XCTAssertEqual(inst!.dispense![1].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![1].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![1].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![1].eye!, "left")
		XCTAssertEqual(inst!.dispense![1].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![1].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![1].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.happysight.com/prescription")!)
		XCTAssertEqual(inst!.identifier![0].value!, "15014")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/example")
	}
	
	func testVisionPrescription2() {
		let inst = instantiateFrom("visionprescription-example-1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a VisionPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2014-06-15")!)
		XCTAssertEqual(inst!.dispense![0].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![0].axis!, 160)
		XCTAssertEqual(inst!.dispense![0].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![0].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![0].color!, "green")
		XCTAssertEqual(inst!.dispense![0].cylinder!, NSDecimalNumber(string: "-2.25"))
		XCTAssertEqual(inst!.dispense![0].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![0].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![0].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].eye!, "right")
		XCTAssertEqual(inst!.dispense![0].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![0].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![0].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![1].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![1].axis!, 160)
		XCTAssertEqual(inst!.dispense![1].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![1].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![1].color!, "green")
		XCTAssertEqual(inst!.dispense![1].cylinder!, NSDecimalNumber(string: "-3.5"))
		XCTAssertEqual(inst!.dispense![1].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![1].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![1].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![1].eye!, "left")
		XCTAssertEqual(inst!.dispense![1].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![1].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![1].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.happysight.com/prescription")!)
		XCTAssertEqual(inst!.identifier![0].value!, "15014")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/example")
	}
	
	func testVisionPrescription3() {
		let inst = instantiateFrom("visionprescription-example-1.json")
		XCTAssertNotNil(inst, "Must have instantiated a VisionPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2014-06-15")!)
		XCTAssertEqual(inst!.dispense![0].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![0].axis!, 160)
		XCTAssertEqual(inst!.dispense![0].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![0].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![0].color!, "green")
		XCTAssertEqual(inst!.dispense![0].cylinder!, NSDecimalNumber(string: "-2.25"))
		XCTAssertEqual(inst!.dispense![0].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![0].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![0].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![0].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].eye!, "right")
		XCTAssertEqual(inst!.dispense![0].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![0].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![0].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![1].add!, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst!.dispense![1].axis!, 160)
		XCTAssertEqual(inst!.dispense![1].backCurve!, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst!.dispense![1].brand!, "OphthaGuard")
		XCTAssertEqual(inst!.dispense![1].color!, "green")
		XCTAssertEqual(inst!.dispense![1].cylinder!, NSDecimalNumber(string: "-3.5"))
		XCTAssertEqual(inst!.dispense![1].diameter!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst!.dispense![1].duration!.code!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dispense![1].duration!.units!, "month")
		XCTAssertEqual(inst!.dispense![1].duration!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![1].eye!, "left")
		XCTAssertEqual(inst!.dispense![1].power!, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst!.dispense![1].product!.code!, "contact")
		XCTAssertEqual(inst!.dispense![1].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.happysight.com/prescription")!)
		XCTAssertEqual(inst!.identifier![0].value!, "15014")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/example")
	}
	
	func testVisionPrescription4() {
		let inst = instantiateFrom("visionprescription-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a VisionPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2014-06-15")!)
		XCTAssertEqual(inst!.dispense![0].add!, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst!.dispense![0].base!, "down")
		XCTAssertEqual(inst!.dispense![0].eye!, "right")
		XCTAssertEqual(inst!.dispense![0].prism!, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst!.dispense![0].product!.code!, "lens")
		XCTAssertEqual(inst!.dispense![0].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![0].sphere!, NSDecimalNumber(string: "-2.0"))
		XCTAssertEqual(inst!.dispense![1].add!, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst!.dispense![1].axis!, 180)
		XCTAssertEqual(inst!.dispense![1].base!, "up")
		XCTAssertEqual(inst!.dispense![1].cylinder!, NSDecimalNumber(string: "-0.5"))
		XCTAssertEqual(inst!.dispense![1].eye!, "left")
		XCTAssertEqual(inst!.dispense![1].prism!, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst!.dispense![1].product!.code!, "lens")
		XCTAssertEqual(inst!.dispense![1].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![1].sphere!, NSDecimalNumber(string: "-1.0"))
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.happysight.com/prescription")!)
		XCTAssertEqual(inst!.identifier![0].value!, "15013")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/example")
	}
	
	func testVisionPrescription5() {
		let inst = instantiateFrom("visionprescription-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a VisionPrescription instance")
	
		XCTAssertEqual(inst!.dateWritten!, NSDate.dateFromISOString("2014-06-15")!)
		XCTAssertEqual(inst!.dispense![0].add!, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst!.dispense![0].base!, "down")
		XCTAssertEqual(inst!.dispense![0].eye!, "right")
		XCTAssertEqual(inst!.dispense![0].prism!, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst!.dispense![0].product!.code!, "lens")
		XCTAssertEqual(inst!.dispense![0].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![0].sphere!, NSDecimalNumber(string: "-2.0"))
		XCTAssertEqual(inst!.dispense![1].add!, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst!.dispense![1].axis!, 180)
		XCTAssertEqual(inst!.dispense![1].base!, "up")
		XCTAssertEqual(inst!.dispense![1].cylinder!, NSDecimalNumber(string: "-0.5"))
		XCTAssertEqual(inst!.dispense![1].eye!, "left")
		XCTAssertEqual(inst!.dispense![1].prism!, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst!.dispense![1].product!.code!, "lens")
		XCTAssertEqual(inst!.dispense![1].product!.system!, NSURL(string: "http://hl7.org/fhir/ex-visionprescriptionproduct")!)
		XCTAssertEqual(inst!.dispense![1].sphere!, NSDecimalNumber(string: "-1.0"))
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.happysight.com/prescription")!)
		XCTAssertEqual(inst!.identifier![0].value!, "15013")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.prescriber!.reference!, "Practitioner/example")
	}
}
