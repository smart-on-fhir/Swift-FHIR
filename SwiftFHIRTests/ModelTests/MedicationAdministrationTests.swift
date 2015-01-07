//
//  MedicationAdministrationTests.swift
//  MedicationAdministrationTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationAdministrationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> MedicationAdministration? {
		let json = readJSONFile(filename)
		let instance = MedicationAdministration(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationAdministration1() {
		let inst = instantiateFrom("medicationadministration-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationAdministration instance")
	
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.practitioner!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.prescription!.reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.status!, "completed")
	}
	
	func testMedicationAdministration2() {
		let inst = instantiateFrom("medicationadministration-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationAdministration instance")
	
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.practitioner!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.prescription!.reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.status!, "completed")
	}
	
	func testMedicationAdministration3() {
		let inst = instantiateFrom("medicationadministration-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationAdministration instance")
	
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.effectiveTimePeriod!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.practitioner!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.prescription!.reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.status!, "completed")
	}
}
