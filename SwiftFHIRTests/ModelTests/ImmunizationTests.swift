//
//  ImmunizationTests.swift
//  ImmunizationTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ImmunizationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Immunization {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Immunization {
		let instance = Immunization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testImmunization1() {
		let instance = testImmunization1_impl()
		testImmunization1_impl(json: instance.asJSON())
	}
	
	func testImmunization1_impl(json: JSONDictionary? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example-refused.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "refused")
		XCTAssertTrue(inst.refusedIndicator!)
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "396427003")
		
		return inst
	}
	
	func testImmunization2() {
		let instance = testImmunization2_impl()
		testImmunization2_impl(json: instance.asJSON())
	}
	
	func testImmunization2_impl(json: JSONDictionary? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example-refused.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "refused")
		XCTAssertTrue(inst.refusedIndicator!)
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "396427003")
		
		return inst
	}
	
	func testImmunization3() {
		let instance = testImmunization3_impl()
		testImmunization3_impl(json: instance.asJSON())
	}
	
	func testImmunization3_impl(json: JSONDictionary? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example-refused.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].code!, "MEDPREC")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].display!, "medical precaution")
		XCTAssertEqual(inst.explanation!.refusalReason![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "refused")
		XCTAssertTrue(inst.refusedIndicator!)
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "396427003")
		
		return inst
	}
	
	func testImmunization4() {
		let instance = testImmunization4_impl()
		testImmunization4_impl(json: instance.asJSON())
	}
	
	func testImmunization4_impl(json: JSONDictionary? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example.canonical.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.expirationDate!.description, "2015-02-15")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst.refusedIndicator!)
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "396427003")
		
		return inst
	}
	
	func testImmunization5() {
		let instance = testImmunization5_impl()
		testImmunization5_impl(json: instance.asJSON())
	}
	
	func testImmunization5_impl(json: JSONDictionary? = nil) -> Immunization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "immunization-example.json")
		
		XCTAssertEqual(inst.date!.description, "2013-01-10")
		XCTAssertEqual(inst.expirationDate!.description, "2015-02-15")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.lotNumber!, "AAJN11K")
		XCTAssertEqual(inst.performer!.reference!, "Practitioner/example")
		XCTAssertFalse(inst.refusedIndicator!)
		XCTAssertFalse(inst.reported!)
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.vaccineType!.coding![0].code!, "396427003")
		
		return inst
	}
}
