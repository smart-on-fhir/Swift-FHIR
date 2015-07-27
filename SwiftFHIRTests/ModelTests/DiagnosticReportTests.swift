//
//  DiagnosticReportTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DiagnosticReportTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> DiagnosticReport {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DiagnosticReport {
		let instance = DiagnosticReport(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticReport1() throws {
		let instance = try testDiagnosticReport1_impl()
		try testDiagnosticReport1_impl(instance.asJSON())
	}
	
	func testDiagnosticReport1_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-dxa.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2008-06-17")
		XCTAssertEqual(inst.id!, "102")
		XCTAssertEqual(inst.issued!.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport2() throws {
		let instance = try testDiagnosticReport2_impl()
		try testDiagnosticReport2_impl(instance.asJSON())
	}
	
	func testDiagnosticReport2_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f001-bloodexam.json")
		
		XCTAssertEqual(inst.conclusion!, "Core lab")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/reports")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "nr1239044")
		XCTAssertEqual(inst.issued!.description, "2013-05-15T19:32:52+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.performer!.display!, "Burgers University Medical Centre")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f001")
		XCTAssertEqual(inst.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst.result![0].reference!, "Observation/f001")
		XCTAssertEqual(inst.result![1].reference!, "Observation/f002")
		XCTAssertEqual(inst.result![2].reference!, "Observation/f003")
		XCTAssertEqual(inst.result![3].reference!, "Observation/f004")
		XCTAssertEqual(inst.result![4].reference!, "Observation/f005")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "252275004")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Haematology test")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport3() throws {
		let instance = try testDiagnosticReport3_impl()
		try testDiagnosticReport3_impl(instance.asJSON())
	}
	
	func testDiagnosticReport3_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f201-brainct.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "188340000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.issued!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "429858000")
		XCTAssertEqual(inst.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.name!.text!, "CT of head-neck")
		XCTAssertEqual(inst.performer!.display!, "Blijdorp MC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f203")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "394914008")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport4() throws {
		let instance = try testDiagnosticReport4_impl()
		try testDiagnosticReport4_impl(instance.asJSON())
	}
	
	func testDiagnosticReport4_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f202-bloodculture.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "428763004")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-03-11T03:45:00+01:00")
		XCTAssertEqual(inst.id!, "f202")
		XCTAssertEqual(inst.issued!.description, "2013-03-11T10:28:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "104177005")
		XCTAssertEqual(inst.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.performer!.display!, "AUMC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f201")
		XCTAssertEqual(inst.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst.result![0].reference!, "Observation/f206")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "15220000")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport5() throws {
		let instance = try testDiagnosticReport5_impl()
		try testDiagnosticReport5_impl(instance.asJSON())
	}
	
	func testDiagnosticReport5_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-lipids.json")
		
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.id!, "lipids")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier![0].value!, "5234342")
		XCTAssertEqual(inst.issued!.description, "2013-01-27T11:45:33+11:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "57698-3")
		XCTAssertEqual(inst.name!.coding![0].display!, "Lipid panel with direct LDL - Serum or Plasma")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "Lipid Panel")
		XCTAssertEqual(inst.performer!.display!, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#cholesterol")
		XCTAssertEqual(inst.result![1].reference!, "#triglyceride")
		XCTAssertEqual(inst.result![2].reference!, "#hdlcholesterol")
		XCTAssertEqual(inst.result![3].reference!, "#ldlcholesterol")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport6() throws {
		let instance = try testDiagnosticReport6_impl()
		try testDiagnosticReport6_impl(instance.asJSON())
	}
	
	func testDiagnosticReport6_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example.json")
		
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier![0].value!, "5234342")
		XCTAssertEqual(inst.issued!.description, "2011-03-04T11:45:33+11:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.name!.coding![1].code!, "CBC")
		XCTAssertEqual(inst.name!.coding![1].display!, "MASTER FULL BLOOD COUNT")
		XCTAssertEqual(inst.name!.text!, "Complete Blood Count")
		XCTAssertEqual(inst.performer!.display!, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.presentedForm![0].contentType!, "application/pdf")
		XCTAssertEqual(inst.presentedForm![0].language!, "en-AU")
		XCTAssertEqual(inst.presentedForm![0].title!, "HTML Report")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.result![1].reference!, "#r2")
		XCTAssertEqual(inst.result![2].reference!, "#r3")
		XCTAssertEqual(inst.result![3].reference!, "#r4")
		XCTAssertEqual(inst.result![4].reference!, "#r5")
		XCTAssertEqual(inst.result![5].reference!, "#r6")
		XCTAssertEqual(inst.result![6].reference!, "#r7")
		XCTAssertEqual(inst.result![7].reference!, "#r8")
		XCTAssertEqual(inst.result![8].reference!, "#r9")
		XCTAssertEqual(inst.result![9].reference!, "#r10")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport7() throws {
		let instance = try testDiagnosticReport7_impl()
		try testDiagnosticReport7_impl(instance.asJSON())
	}
	
	func testDiagnosticReport7_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-qicore-example.json")
		
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "Location/example")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier![0].value!, "5234342")
		XCTAssertEqual(inst.issued!.description, "2011-03-04T11:45:33+11:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.name!.coding![1].code!, "CBC")
		XCTAssertEqual(inst.name!.coding![1].display!, "MASTER FULL BLOOD COUNT")
		XCTAssertEqual(inst.name!.text!, "Complete Blood Count")
		XCTAssertEqual(inst.performer!.display!, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.presentedForm![0].contentType!, "application/pdf")
		XCTAssertEqual(inst.presentedForm![0].language!, "en-AU")
		XCTAssertEqual(inst.presentedForm![0].title!, "HTML Report")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.result![1].reference!, "#r2")
		XCTAssertEqual(inst.result![2].reference!, "#r3")
		XCTAssertEqual(inst.result![3].reference!, "#r4")
		XCTAssertEqual(inst.result![4].reference!, "#r5")
		XCTAssertEqual(inst.result![5].reference!, "#r6")
		XCTAssertEqual(inst.result![6].reference!, "#r7")
		XCTAssertEqual(inst.result![7].reference!, "#r8")
		XCTAssertEqual(inst.result![8].reference!, "#r9")
		XCTAssertEqual(inst.result![9].reference!, "#r10")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testDiagnosticReport8() throws {
		let instance = try testDiagnosticReport8_impl()
		try testDiagnosticReport8_impl(instance.asJSON())
	}
	
	func testDiagnosticReport8_impl(json: FHIRJSON? = nil) throws -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "dr-uslab-example1.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "407152001")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Increased blood lead level")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "Elevated Blood Lead levels")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2014-12-05")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://lis.acmelabs.org/identifiers/report")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "5234342")
		XCTAssertEqual(inst.issued!.description, "2014-12-06T15:42:15-08:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "5671-3")
		XCTAssertEqual(inst.name!.coding![0].display!, "Lead [Mass/volume] in Blood")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.name!.coding![1].code!, "BLDLD")
		XCTAssertEqual(inst.name!.coding![1].display!, "Blood Lead")
		XCTAssertEqual(inst.name!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.24")
		XCTAssertEqual(inst.name!.text!, "Blood Lead Report")
		XCTAssertEqual(inst.performer!.display!, "Gregory F House, PhD")
		XCTAssertEqual(inst.performer!.reference!, "Practitioner/uslab-example3")
		XCTAssertEqual(inst.presentedForm![0].contentType!, "application/pdf")
		XCTAssertEqual(inst.presentedForm![0].language!, "en")
		XCTAssertEqual(inst.presentedForm![0].title!, "ACMELABS: Blood Lead Report")
		XCTAssertEqual(inst.requestDetail![0].display!, "USLan Example1")
		XCTAssertEqual(inst.requestDetail![0].reference!, "DiagnosticOrder/uslab-example1")
		XCTAssertEqual(inst.result![0].display!, "Blood Lead")
		XCTAssertEqual(inst.result![0].reference!, "Observation/uslab-example5")
		XCTAssertEqual(inst.specimen![0].display!, "Blood Sample")
		XCTAssertEqual(inst.specimen![0].reference!, "Specimen/uslab-example1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Todd Lerr")
		XCTAssertEqual(inst.subject!.reference!, "Patient/uslab-example1")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
