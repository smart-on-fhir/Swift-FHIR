//
//  MedicationDispenseTests.swift
//  MedicationDispenseTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationDispenseTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> MedicationDispense? {
		let json = readJSONFile(filename)
		let instance = MedicationDispense(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationDispense1() {
		let inst = instantiateFrom("medicationdispense-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationDispense instance")
		
		XCTAssertEqual(inst!.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.dispense![0].medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dispense![0].status!, "completed")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst!.dispense![0].whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		XCTAssertEqual(inst!.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
	}
	
	func testMedicationDispense2() {
		let inst = instantiateFrom("medicationdispense-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationDispense instance")
		
		XCTAssertEqual(inst!.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.dispense![0].medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dispense![0].status!, "completed")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst!.dispense![0].whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		XCTAssertEqual(inst!.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
	}
	
	func testMedicationDispense3() {
		let inst = instantiateFrom("medicationdispense-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationDispense instance")
		
		XCTAssertEqual(inst!.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst!.dispense![0].medication!.reference!, "Medication/example")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst!.dispense![0].status!, "completed")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst!.dispense![0].whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		XCTAssertEqual(inst!.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst!.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
	}
}
