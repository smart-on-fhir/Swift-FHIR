//
//  DiagnosticOrderTests.swift
//  DiagnosticOrderTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DiagnosticOrderTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DiagnosticOrder? {
		let json = readJSONFile(filename)
		let instance = DiagnosticOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticOrder1() {
		let inst = instantiateFrom("diagnosticorder-example-di.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
		
		XCTAssertEqual(inst!.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder2() {
		let inst = instantiateFrom("diagnosticorder-example-di.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
		
		XCTAssertEqual(inst!.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder3() {
		let inst = instantiateFrom("diagnosticorder-example-di.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
		
		XCTAssertEqual(inst!.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder4() {
		let inst = instantiateFrom("diagnosticorder-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
		
		XCTAssertEqual(inst!.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst!.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!.absoluteString!, "http://acme.org/tests")
		XCTAssertEqual(inst!.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "received")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testDiagnosticOrder5() {
		let inst = instantiateFrom("diagnosticorder-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
		
		XCTAssertEqual(inst!.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst!.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!.absoluteString!, "http://acme.org/tests")
		XCTAssertEqual(inst!.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "received")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
}
