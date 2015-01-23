//
//  MedicationDispenseTests.swift
//  MedicationDispenseTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MedicationDispenseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MedicationDispense {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> MedicationDispense {
		let instance = MedicationDispense(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationDispense1() {
		let instance = testMedicationDispense1_impl()
		testMedicationDispense1_impl(json: instance.asJSON())
	}
	
	func testMedicationDispense1_impl(json: JSONDictionary? = nil) -> MedicationDispense {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationdispense-example.canonical.json")
		
		XCTAssertEqual(inst.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.quantity!.code!, "ml")
		XCTAssertEqual(inst.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.quantity!.units!, "ml")
		XCTAssertEqual(inst.quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
		XCTAssertEqual(inst.whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst.whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		
		return inst
	}
	
	func testMedicationDispense2() {
		let instance = testMedicationDispense2_impl()
		testMedicationDispense2_impl(json: instance.asJSON())
	}
	
	func testMedicationDispense2_impl(json: JSONDictionary? = nil) -> MedicationDispense {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationdispense-example.canonical.json")
		
		XCTAssertEqual(inst.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.quantity!.code!, "ml")
		XCTAssertEqual(inst.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.quantity!.units!, "ml")
		XCTAssertEqual(inst.quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
		XCTAssertEqual(inst.whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst.whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		
		return inst
	}
	
	func testMedicationDispense3() {
		let instance = testMedicationDispense3_impl()
		testMedicationDispense3_impl(json: instance.asJSON())
	}
	
	func testMedicationDispense3_impl(json: JSONDictionary? = nil) -> MedicationDispense {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationdispense-example.json")
		
		XCTAssertEqual(inst.authorizingPrescription![0].reference!, "MedicationPrescription/example")
		XCTAssertEqual(inst.dispenser!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.quantity!.code!, "ml")
		XCTAssertEqual(inst.quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.quantity!.units!, "ml")
		XCTAssertEqual(inst.quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.substitution!.type!.coding![0].code!, "NoSub")
		XCTAssertEqual(inst.substitution!.type!.coding![0].display!, "No substitution made or expected")
		XCTAssertEqual(inst.substitution!.type!.coding![0].system!.absoluteString!, "./MedDispSubType")
		XCTAssertEqual(inst.whenHandedOver!.description, "2012-05-31T10:20:00+00:00")
		XCTAssertEqual(inst.whenPrepared!.description, "2012-05-30T16:20:00+00:00")
		
		return inst
	}
}
