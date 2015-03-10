//
//  MedicationAdministrationTests.swift
//  MedicationAdministrationTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationAdministrationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MedicationAdministration {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> MedicationAdministration {
		let instance = MedicationAdministration(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationAdministration1() {
		let instance = testMedicationAdministration1_impl()
		testMedicationAdministration1_impl(json: instance.asJSON())
	}
	
	func testMedicationAdministration1_impl(json: JSONDictionary? = nil) -> MedicationAdministration {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationadministration-example.json")
		
		XCTAssertEqual(inst.dosage!.quantity!.code!, "ml")
		XCTAssertEqual(inst.dosage!.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosage!.quantity!.units!, "ml")
		XCTAssertEqual(inst.dosage!.quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosage!.route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage!.route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage!.route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveTimePeriod!.end!.description, "2012-06-01T14:30:00+01:00")
		XCTAssertEqual(inst.effectiveTimePeriod!.start!.description, "2012-06-01T14:30:00+01:00")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.practitioner!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.prescription!.reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationAdministration2() {
		let instance = testMedicationAdministration2_impl()
		testMedicationAdministration2_impl(json: instance.asJSON())
	}
	
	func testMedicationAdministration2_impl(json: JSONDictionary? = nil) -> MedicationAdministration {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationadministration-qicore-example.json")
		
		XCTAssertEqual(inst.dosage!.quantity!.code!, "ml")
		XCTAssertEqual(inst.dosage!.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosage!.quantity!.units!, "ml")
		XCTAssertEqual(inst.dosage!.quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosage!.route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage!.route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage!.route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveTimePeriod!.end!.description, "2012-06-01T14:30:00+01:00")
		XCTAssertEqual(inst.effectiveTimePeriod!.start!.description, "2012-06-01T14:30:00+01:00")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.practitioner!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.prescription!.reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
