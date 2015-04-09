//
//  MedicationStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MedicationStatementTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> MedicationStatement {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> MedicationStatement {
		let instance = MedicationStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationStatement1() {
		let instance = testMedicationStatement1_impl()
		testMedicationStatement1_impl(json: instance.asJSON())
	}
	
	func testMedicationStatement1_impl(json: FHIRJSON? = nil) -> MedicationStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationstatement-example-tylenol.json")
		
		XCTAssertTrue(inst.dosage![0].asNeededBoolean!)
		XCTAssertEqual(inst.dosage![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosage![0].schedule!.repeat!.frequency!, 1)
		XCTAssertEqual(inst.dosage![0].schedule!.repeat!.period!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosage![0].schedule!.repeat!.periodUnits!, "d")
		XCTAssertEqual(inst.effectiveDateTime!.description, "2010")
		XCTAssertEqual(inst.id!, "tylenol")
		XCTAssertEqual(inst.medication!.reference!, "#2")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationStatement2() {
		let instance = testMedicationStatement2_impl()
		testMedicationStatement2_impl(json: instance.asJSON())
	}
	
	func testMedicationStatement2_impl(json: FHIRJSON? = nil) -> MedicationStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "medicationstatement-qicore-example.json")
		
		XCTAssertEqual(inst.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst.dosage![0].quantity!.system!.absoluteString!, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveDateTime!.description, "2012-06-01T14:30:00+14:00")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
