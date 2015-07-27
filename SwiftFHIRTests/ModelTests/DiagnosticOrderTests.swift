//
//  DiagnosticOrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DiagnosticOrderTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> DiagnosticOrder {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DiagnosticOrder {
		let instance = DiagnosticOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticOrder1() throws {
		let instance = try testDiagnosticOrder1_impl()
		try testDiagnosticOrder1_impl(instance.asJSON())
	}
	
	func testDiagnosticOrder1_impl(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-example-di.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "di")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/dicom")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticOrder2() throws {
		let instance = try testDiagnosticOrder2_impl()
		try testDiagnosticOrder2_impl(instance.asJSON())
	}
	
	func testDiagnosticOrder2_impl(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-example.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Placer")
		XCTAssertEqual(inst.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "received")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticOrder3() throws {
		let instance = try testDiagnosticOrder3_impl()
		try testDiagnosticOrder3_impl(instance.asJSON())
	}
	
	func testDiagnosticOrder3_impl(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-qicore-example.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.event![1].dateTime!.description, "2013-05-06T11:20:00-07:00")
		XCTAssertEqual(inst.event![1].status!, "rejected")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/diagnosticorder-reason")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "PHY")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Physician request")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/diagnosticorder-reasonRejected")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].code!, "NON-AVAIL")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].display!, "patient not-available")
		XCTAssertEqual(inst.extension_fhir![1].valueCodeableConcept!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Placer")
		XCTAssertEqual(inst.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "57698-3")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Lipid panel with direct LDL - Serum or Plasma")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticOrder4() throws {
		let instance = try testDiagnosticOrder4_impl()
		try testDiagnosticOrder4_impl(instance.asJSON())
	}
	
	func testDiagnosticOrder4_impl(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "do-uslab-example1.json")
		
		XCTAssertEqual(inst.clinicalNotes!, "Screening for blood lead")
		XCTAssertEqual(inst.event![0].dateTime!.description, "2014-12-04T15:42:15-08:00")
		XCTAssertEqual(inst.event![0].description_fhir!.coding![0].code!, "new-request")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "ORD000123A")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst.item![0].code!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst.item![0].code!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst.item![0].code!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.item![0].code!.text!, "Blood Lead")
		XCTAssertEqual(inst.item![0].specimen![0].display!, "Whole blood")
		XCTAssertEqual(inst.item![0].specimen![0].reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.item![0].status!, "requested")
		XCTAssertEqual(inst.orderer!.display!, "Dr Leonard T Bloodraw Jr")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/uslab-example1")
		XCTAssertEqual(inst.priority!, "routine")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.supportingInformation![0].display!, "Prior Results Observation")
		XCTAssertEqual(inst.supportingInformation![0].reference!, "Observation/uslab-example1")
		XCTAssertEqual(inst.supportingInformation![1].display!, "Lead Exposure")
		XCTAssertEqual(inst.supportingInformation![1].reference!, "Condition/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
