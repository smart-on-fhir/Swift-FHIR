//
//  ImmunizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ImmunizationTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Immunization {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Immunization {
		let instance = Immunization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunization1() throws {
		let instance = try runImmunization1()
		try runImmunization1(instance.asJSON())
	}
	
	func runImmunization1(json: FHIRJSON? = nil) throws -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "immunization-example-refused.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.explanation!.reasonNotGiven![0].coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "notGiven")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.text!.div!, "<div>Refused Immunization Example</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "01")
		XCTAssertEqual(inst.vaccineType!.coding![0].display!, "DTP")
		XCTAssertEqual(inst.vaccineType!.coding![0].system!.absoluteString, "http://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx")
		XCTAssertTrue(inst.wasNotGiven!)
		
		return inst
	}
	
	func testImmunization2() throws {
		let instance = try runImmunization2()
		try runImmunization2(instance.asJSON())
	}
	
	func runImmunization2(json: FHIRJSON? = nil) throws -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "immunization-example.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.expirationDate!.description, "2015-02-15")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.text!.div!, "<div>Authored by Joginder Madra</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "Fluvax")
		XCTAssertEqual(inst.vaccineType!.coding![0].system!.absoluteString, "urn:oid:1.2.36.1.2001.1005.17")
		XCTAssertEqual(inst.vaccineType!.text!, "Fluvax (Influenza)")
		XCTAssertFalse(inst.wasNotGiven!)
		
		return inst
	}
}
