//
//  DiagnosticOrderTests.swift
//  DiagnosticOrderTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
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
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-08T09:33:27")!)
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder2() {
		let inst = instantiateFrom("diagnosticorder-example-di.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-08T09:33:27")!)
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder3() {
		let inst = instantiateFrom("diagnosticorder-example-di.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-08T09:33:27")!)
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst!.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/dicom")
	}
	
	func testDiagnosticOrder4() {
		let inst = instantiateFrom("diagnosticorder-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-02T16:16:00")!)
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.3.4.5.6.7")!)
		XCTAssertEqual(inst!.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://acme.org/tests")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "received")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testDiagnosticOrder5() {
		let inst = instantiateFrom("diagnosticorder-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-02T16:16:00")!)
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.3.4.5.6.7")!)
		XCTAssertEqual(inst!.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://acme.org/tests")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.status!, "received")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testDiagnosticOrder6() {
		let inst = instantiateFrom("do-uslab-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.clinicalNotes!, "Screening for blood lead")
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2014-12-04T15:42:15-08:00")!)
		XCTAssertEqual(inst!.event![0].description!.coding![0].code!, "new-request")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer Order Number")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.3.72.5.24")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "ORD000123A")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst!.item![0].code!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.item![0].code!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst!.item![0].code!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst!.item![0].code!.coding![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.3.72.5.24")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Blood Lead")
		XCTAssertEqual(inst!.item![0].specimen![0].display!, "Whole blood")
		XCTAssertEqual(inst!.item![0].specimen![0].reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst!.item![0].status!, "requested")
		XCTAssertEqual(inst!.orderer!.display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst!.priority!, "routine")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst!.supportingInformation![0].display!, "Prior Results Observation")
		XCTAssertEqual(inst!.supportingInformation![0].reference!, "Observation/uslab-example1")
		XCTAssertEqual(inst!.supportingInformation![1].display!, "Lead Exposure")
		XCTAssertEqual(inst!.supportingInformation![1].reference!, "Condition/uslab-example1")
	}
	
	func testDiagnosticOrder7() {
		let inst = instantiateFrom("do-uslab-example1.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.clinicalNotes!, "Screening for blood lead")
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2014-12-04T15:42:15-08:00")!)
		XCTAssertEqual(inst!.event![0].description!.coding![0].code!, "new-request")
		XCTAssertEqual(inst!.event![0].status!, "requested")
		XCTAssertEqual(inst!.identifier![0].label!, "Placer Order Number")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.3.72.5.24")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "ORD000123A")
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst!.item![0].code!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.item![0].code!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst!.item![0].code!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst!.item![0].code!.coding![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.3.72.5.24")!)
		XCTAssertEqual(inst!.item![0].code!.text!, "Blood Lead")
		XCTAssertEqual(inst!.item![0].specimen![0].display!, "Whole blood")
		XCTAssertEqual(inst!.item![0].specimen![0].reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst!.item![0].status!, "requested")
		XCTAssertEqual(inst!.orderer!.display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst!.priority!, "routine")
		XCTAssertEqual(inst!.status!, "requested")
		XCTAssertEqual(inst!.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst!.supportingInformation![0].display!, "Prior Results Observation")
		XCTAssertEqual(inst!.supportingInformation![0].reference!, "Observation/uslab-example1")
		XCTAssertEqual(inst!.supportingInformation![1].display!, "Lead Exposure")
		XCTAssertEqual(inst!.supportingInformation![1].reference!, "Condition/uslab-example1")
	}
}
