//
//  ListTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ListTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> List {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> List {
		let instance = List(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testList1() throws {
		let instance = try runList1()
		try runList1(instance.asJSON())
	}
	
	func runList1(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-empty.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "182836005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.text!, "Medication Review")
		XCTAssertEqual(inst.date!.description, "2012-11-26T07:30:23+11:00")
		XCTAssertEqual(inst.emptyReason!.coding![0].code!, "nil-known")
		XCTAssertEqual(inst.emptyReason!.coding![0].display!, "Nil Known")
		XCTAssertEqual(inst.emptyReason!.coding![0].system!.absoluteString, "http://hl7.org/fhir/special-values")
		XCTAssertEqual(inst.emptyReason!.text!, "The patient is not on any medications")
		XCTAssertEqual(inst.id!, "example-empty")
		XCTAssertEqual(inst.mode!, "snapshot")
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList2() throws {
		let instance = try runList2()
		try runList2(instance.asJSON())
	}
	
	func runList2(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-f201-roel.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "8670-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "History of family member diseases")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.entry![0].item!.reference!, "#fmh-1")
		XCTAssertEqual(inst.entry![1].item!.reference!, "#fmh-2")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.mode!, "snapshot")
		XCTAssertEqual(inst.note!, "Both parents, both brothers and both children (twin) are still alive.")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList3() throws {
		let instance = try runList3()
		try runList3(instance.asJSON())
	}
	
	func runList3(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-genetics-profile-annie.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "8670-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "History of family member diseases")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.entry![0].item!.reference!, "#2")
		XCTAssertEqual(inst.entry![1].item!.reference!, "#3")
		XCTAssertEqual(inst.entry![2].item!.reference!, "#4")
		XCTAssertEqual(inst.entry![3].item!.reference!, "#5")
		XCTAssertEqual(inst.entry![4].item!.reference!, "#6")
		XCTAssertEqual(inst.entry![5].item!.reference!, "#7")
		XCTAssertEqual(inst.entry![6].item!.reference!, "#8")
		XCTAssertEqual(inst.entry![7].item!.reference!, "#9")
		XCTAssertEqual(inst.entry![8].item!.reference!, "#10")
		XCTAssertEqual(inst.entry![9].item!.reference!, "#11")
		XCTAssertEqual(inst.id!, "prognosis")
		XCTAssertEqual(inst.mode!, "snapshot")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.display!, "Annie Proband, female, born 1966")
		XCTAssertEqual(inst.subject!.reference!, "Patient/proband")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList4() throws {
		let instance = try runList4()
		try runList4(instance.asJSON())
	}
	
	func runList4(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-genetics-profile.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "8670-2")
		XCTAssertEqual(inst.code!.coding![0].display!, "History of family member diseases")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.entry![0].item!.reference!, "#1")
		XCTAssertEqual(inst.entry![1].item!.reference!, "#2")
		XCTAssertEqual(inst.entry![2].item!.reference!, "#3")
		XCTAssertEqual(inst.entry![3].item!.reference!, "#4")
		XCTAssertEqual(inst.entry![4].item!.reference!, "#5")
		XCTAssertEqual(inst.entry![5].item!.reference!, "#6")
		XCTAssertEqual(inst.entry![6].item!.reference!, "#7")
		XCTAssertEqual(inst.entry![7].item!.reference!, "#8")
		XCTAssertEqual(inst.id!, "genetic")
		XCTAssertEqual(inst.mode!, "snapshot")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.display!, "Peter Patient")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.div!, "<div>To do</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList5() throws {
		let instance = try runList5()
		try runList5(instance.asJSON())
	}
	
	func runList5(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-medlist.json")
		
		XCTAssertEqual(inst.code!.coding![0].code!, "182836005")
		XCTAssertEqual(inst.code!.coding![0].display!, "Review of medication")
		XCTAssertEqual(inst.code!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code!.text!, "Medication Review")
		XCTAssertEqual(inst.date!.description, "2013-11-20T23:10:23+11:00")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].code!, "01")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].display!, "Prescribed")
		XCTAssertEqual(inst.entry![0].flag![0].coding![0].system!.absoluteString, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry![0].flag![1].text!, "Review required")
		XCTAssertEqual(inst.entry![0].item!.display!, "hydroxocobalamin")
		XCTAssertTrue(inst.entry![1].deleted!)
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].code!, "02")
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].display!, "Cancelled")
		XCTAssertEqual(inst.entry![1].flag![0].coding![0].system!.absoluteString, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry![1].item!.display!, "Morphine Sulfate")
		XCTAssertEqual(inst.id!, "med-list")
		XCTAssertEqual(inst.mode!, "changes")
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testList6() throws {
		let instance = try runList6()
		try runList6(instance.asJSON())
	}
	
	func runList6(json: FHIRJSON? = nil) throws -> List {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-11-25T22:17:00+11:00")
		XCTAssertTrue(inst.entry![0].deleted!)
		XCTAssertEqual(inst.entry![0].flag![0].text!, "Deleted due to error")
		XCTAssertEqual(inst.entry![0].item!.reference!, "Condition/example")
		XCTAssertEqual(inst.entry![1].flag![0].text!, "Added")
		XCTAssertEqual(inst.entry![1].item!.reference!, "Condition/example2")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.mode!, "changes")
		XCTAssertEqual(inst.source!.reference!, "Patient/example")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
