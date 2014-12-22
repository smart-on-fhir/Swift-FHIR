//
//  MedicationStatementTests.swift
//  MedicationStatementTests
//
//  Generated from FHIR 0.4.0.3903 on 2014-12-22.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class MedicationStatementTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> MedicationStatement? {
		let json = readJSONFile(filename)
		let instance = MedicationStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationStatement1() {
		let inst = instantiateFrom("medicationstatement-example-tylenol.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationStatement instance")
	
		XCTAssertTrue(inst!.dosage![0].asNeededBoolean!)
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.units!, "d")
		XCTAssertEqual(inst!.medication!.reference!, "#2")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2010")!)
	}
	
	func testMedicationStatement2() {
		let inst = instantiateFrom("medicationstatement-example-tylenol.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationStatement instance")
	
		XCTAssertTrue(inst!.dosage![0].asNeededBoolean!)
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.units!, "d")
		XCTAssertEqual(inst!.medication!.reference!, "#2")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2010")!)
	}
	
	func testMedicationStatement3() {
		let inst = instantiateFrom("medicationstatement-example-tylenol.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationStatement instance")
	
		XCTAssertTrue(inst!.dosage![0].asNeededBoolean!)
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.duration!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.frequency!, 1)
		XCTAssertEqual(inst!.dosage![0].schedule!.repeat!.units!, "d")
		XCTAssertEqual(inst!.medication!.reference!, "#2")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2010")!)
	}
	
	func testMedicationStatement4() {
		let inst = instantiateFrom("medicationstatement-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationStatement instance")
	
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.whenGiven!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
	}
	
	func testMedicationStatement5() {
		let inst = instantiateFrom("medicationstatement-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationStatement instance")
	
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.whenGiven!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
	}
}
