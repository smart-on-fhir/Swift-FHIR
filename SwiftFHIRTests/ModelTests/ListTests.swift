//
//  ListTests.swift
//  ListTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ListTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> List {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> List {
		let instance = List(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testList1() {
		let instance = testList1_impl()
		testList1_impl(json: instance.asJSON())
	}
	
	func testList1_impl(json: JSONDictionary? = nil) -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "list-example-empty.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "182836005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.text!, "Medication Review")
		XCTAssertEqual(inst.date!.description, "2012-11-26T07:30:23+11:00")
		XCTAssertEqual(inst.emptyReason!.coding![0].code!, "nil-known")
		XCTAssertEqual(inst.emptyReason!.coding![0].display!, "Nil Known")
		XCTAssertEqual(inst.emptyReason!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/special-values")
		XCTAssertEqual(inst.emptyReason!.text!, "The patient is not on any medications")
		XCTAssertEqual(inst.id!, "example-empty")
		XCTAssertEqual(inst.mode!, "snapshot")
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList2() {
		let instance = testList2_impl()
		testList2_impl(json: instance.asJSON())
	}
	
	func testList2_impl(json: JSONDictionary? = nil) -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "list-example-medlist.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "182836005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.text!, "Medication Review")
		XCTAssertEqual(inst.date!.description, "2013-11-20T23:10:23+11:00")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].code!, "02")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].display!, "Prescribed")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].system!.absoluteString!, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry![0].item!.display!, "hydroxocobalamin")
		XCTAssertTrue(inst.entry![1].deleted!)
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].code!, "02")
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].display!, "Cancelled")
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].system!.absoluteString!, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry![1].item!.display!, "Morphine Sulfate")
		XCTAssertEqual(inst.id!, "med-list")
		XCTAssertEqual(inst.mode!, "changes")
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList3() {
		let instance = testList3_impl()
		testList3_impl(json: instance.asJSON())
	}
	
	func testList3_impl(json: JSONDictionary? = nil) -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "list-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-11-25T22:17:00+11:00")
		XCTAssertTrue(inst.entry![0].deleted!)
		XCTAssertEqual(inst.entry![0].flag![0].text!, "Deleted due to error")
		XCTAssertEqual(inst.entry![0].item!.reference!, "Condition/example")
		XCTAssertEqual(inst.entry![1].flag![0].text!, "Added")
		XCTAssertEqual(inst.entry![1].item!.reference!, "Condition/example2")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.mode!, "changes")
		XCTAssertFalse(inst.ordered!)
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
