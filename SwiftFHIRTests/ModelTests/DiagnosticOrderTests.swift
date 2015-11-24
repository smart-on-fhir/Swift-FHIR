//
//  DiagnosticOrderTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2015-11-24.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DiagnosticOrderTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> DiagnosticOrder {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DiagnosticOrder {
		let instance = DiagnosticOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticOrder1() {
		let instance = try? runDiagnosticOrder1()
		XCTAssertNotNil(instance, "Must instantiate DiagnosticOrder")
		if let instance = instance {
			try! runDiagnosticOrder1(instance.asJSON())
		}
	}
	
	func runDiagnosticOrder1(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-example-di.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "di")
		XCTAssertEqual(inst.item![0].bodySite!.coding![0].code!, "51185008")
		XCTAssertEqual(inst.item![0].bodySite!.coding![0].display!, "Thoracic structure")
		XCTAssertEqual(inst.item![0].bodySite!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "24627-2")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Chest CT")
		XCTAssertEqual(inst.orderer!.display!, "Dr. Adam Careful")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.reason![0].text!, "Check for metastatic disease")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/dicom")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticOrder2() {
		let instance = try? runDiagnosticOrder2()
		XCTAssertNotNil(instance, "Must instantiate DiagnosticOrder")
		if let instance = instance {
			try! runDiagnosticOrder2(instance.asJSON())
		}
	}
	
	func runDiagnosticOrder2(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-example-ft4.json")
		
		XCTAssertEqual(inst.event![0].dateTime!.description, "2015-08-27T09:33:27+07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "ft4")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "3024-7")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.item![0].code!.text!, "Free T4")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.specimen![0].display!, "Red Top Tube")
		XCTAssertEqual(inst.specimen![0].reference!, "#rtt")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticOrder3() {
		let instance = try? runDiagnosticOrder3()
		XCTAssertNotNil(instance, "Must instantiate DiagnosticOrder")
		if let instance = instance {
			try! runDiagnosticOrder3(instance.asJSON())
		}
	}
	
	func runDiagnosticOrder3(json: FHIRJSON? = nil) throws -> DiagnosticOrder {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticorder-example.json")
		
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/example")
		XCTAssertEqual(inst.event![0].actor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.event![0].dateTime!.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.event![0].status!, "requested")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].code!, "PLAC")
		XCTAssertEqual(inst.identifier![0].type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Placer")
		XCTAssertEqual(inst.identifier![0].value!, "2345234234234")
		XCTAssertEqual(inst.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst.item![0].code!.coding![0].system!.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.item![0].code!.text!, "Lipid Panel")
		XCTAssertEqual(inst.item![0].specimen![0].reference!, "Specimen/101")
		XCTAssertEqual(inst.note![0].text!, "patient is afraid of needles")
		XCTAssertEqual(inst.orderer!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.reason![0].coding![0].code!, "V173")
		XCTAssertEqual(inst.reason![0].coding![0].display!, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reason![0].coding![0].system!.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.status!, "received")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.supportingInformation![0].reference!, "#fasting")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
