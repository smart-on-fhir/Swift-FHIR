//
//  DiagnosticOrderTests.swift
//  DiagnosticOrderTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DiagnosticOrderTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DiagnosticOrder {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DiagnosticOrder {
		let instance = DiagnosticOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticOrder1() {
		let instance = testDiagnosticOrder1_impl()
		testDiagnosticOrder1_impl(json: instance.asJSON())
	}
	
	func testDiagnosticOrder1_impl(json: JSONDictionary? = nil) -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticorder-example-di.canonical.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "di")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/dicom")
		
		return inst
	}
	
	func testDiagnosticOrder2() {
		let instance = testDiagnosticOrder2_impl()
		testDiagnosticOrder2_impl(json: instance.asJSON())
	}
	
	func testDiagnosticOrder2_impl(json: JSONDictionary? = nil) -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticorder-example-di.canonical.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "di")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/dicom")
		
		return inst
	}
	
	func testDiagnosticOrder3() {
		let instance = testDiagnosticOrder3_impl()
		testDiagnosticOrder3_impl(json: instance.asJSON())
	}
	
	func testDiagnosticOrder3_impl(json: JSONDictionary? = nil) -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticorder-example-di.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "di")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/dicom")
		
		return inst
	}
	
	func testDiagnosticOrder4() {
		let instance = testDiagnosticOrder4_impl()
		testDiagnosticOrder4_impl(json: instance.asJSON())
	}
	
	func testDiagnosticOrder4_impl(json: JSONDictionary? = nil) -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticorder-example.canonical.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].label!, "Placer")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString!, "http://acme.org/tests")
		XCTAssertEqual(inst.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "received")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		
		return inst
	}
	
	func testDiagnosticOrder5() {
		let instance = testDiagnosticOrder5_impl()
		testDiagnosticOrder5_impl(json: instance.asJSON())
	}
	
	func testDiagnosticOrder5_impl(json: JSONDictionary? = nil) -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticorder-example.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].label!, "Placer")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString!, "http://acme.org/tests")
		XCTAssertEqual(inst.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "received")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		
		return inst
	}
}
