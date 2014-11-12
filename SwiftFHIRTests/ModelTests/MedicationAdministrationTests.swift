//
//  MedicationAdministrationTests.swift
//  MedicationAdministrationTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
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
		let inst = instantiateFrom("medicationadministration-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a MedicationAdministration instance")
		
		XCTAssertEqual(inst!.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org")!)	
		XCTAssertEqual(inst!.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst!.dosage![0].quantity!.value!, 10)	
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].code!, "394899003")	
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst!.dosage![0].route!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)	
		XCTAssertEqual(inst!.medication!.reference!, "Medication/example")	
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.practitioner!.reference!, "Practitioner/example")	
		XCTAssertEqual(inst!.prescription!.reference!, "MedicationPrescription/example")	
		XCTAssertEqual(inst!.status!, "completed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Penicillin VK 10ml suspension administered by oral route at 14:30 on 1 June 2012</p>\n      <p>on the authority of prescription ref: example</p>\n      <p>to patient ref: a23</p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
		XCTAssertEqual(inst!.whenGiven!.end!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
		XCTAssertEqual(inst!.whenGiven!.start!, NSDate.dateFromISOString("2012-06-01T14:30:00")!)
	}
}
