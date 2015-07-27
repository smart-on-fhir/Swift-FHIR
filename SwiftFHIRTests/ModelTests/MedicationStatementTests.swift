//
//  MedicationStatementTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MedicationStatementTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> MedicationStatement {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> MedicationStatement {
		let instance = MedicationStatement(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedicationStatement1() throws {
		let instance = try testMedicationStatement1_impl()
		try testMedicationStatement1_impl(instance.asJSON())
	}
	
	func testMedicationStatement1_impl(json: FHIRJSON? = nil) throws -> MedicationStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationstatement-example-tylenol.json")
		
		XCTAssertTrue(inst.dosage![0].asNeededBoolean!)
		XCTAssertEqual(inst.dosage![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.dosage![0].schedule!.repeat_fhir!.frequency!, 1)
		XCTAssertEqual(inst.dosage![0].schedule!.repeat_fhir!.period!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dosage![0].schedule!.repeat_fhir!.periodUnits!, "d")
		XCTAssertEqual(inst.effectiveDateTime!.description, "2010")
		XCTAssertEqual(inst.id!, "tylenol")
		XCTAssertEqual(inst.medication!.reference!, "#2")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testMedicationStatement2() throws {
		let instance = try testMedicationStatement2_impl()
		try testMedicationStatement2_impl(instance.asJSON())
	}
	
	func testMedicationStatement2_impl(json: FHIRJSON? = nil) throws -> MedicationStatement {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "medicationstatement-qicore-example.json")
		
		XCTAssertEqual(inst.dosage![0].quantity!.code!, "ml")
		XCTAssertEqual(inst.dosage![0].quantity!.system!.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dosage![0].quantity!.units!, "ml")
		XCTAssertEqual(inst.dosage![0].quantity!.value!, NSDecimalNumber(string: "10"))
		XCTAssertEqual(inst.dosage![0].route!.coding![0].code!, "394899003")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].display!, "oral administration of treatment")
		XCTAssertEqual(inst.dosage![0].route!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveDateTime!.description, "2012-06-01T14:30:00+14:00")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.medication!.reference!, "Medication/example")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
