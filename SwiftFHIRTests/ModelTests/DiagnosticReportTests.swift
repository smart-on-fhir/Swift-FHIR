//
//  DiagnosticReportTests.swift
//  DiagnosticReportTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DiagnosticReportTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DiagnosticReport? {
		let json = readJSONFile(filename)
		let instance = DiagnosticReport(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticReport1() {
		let inst = instantiateFrom("diagnosticreport-example-dxa.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2008-06-17")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2008-06-18T09:23:00+10:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst!.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst!.result![0].reference!, "#r1")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
	}
	
	func testDiagnosticReport2() {
		let inst = instantiateFrom("diagnosticreport-example-dxa.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2008-06-17")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2008-06-18T09:23:00+10:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst!.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst!.result![0].reference!, "#r1")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
	}
	
	func testDiagnosticReport3() {
		let inst = instantiateFrom("diagnosticreport-example-dxa.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2008-06-17")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2008-06-18T09:23:00+10:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst!.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst!.result![0].reference!, "#r1")
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
	}
	
	func testDiagnosticReport4() {
		let inst = instantiateFrom("diagnosticreport-example-f001-bloodexam.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.conclusion!, "Core lab")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-04-02")!)
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/reports")!)
		XCTAssertEqual(inst!.identifier!.use!, "official")
		XCTAssertEqual(inst!.identifier!.value!, "nr1239044")
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-05-15T19:32:52+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.performer!.display!, "Burgers University Medical Centre")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst!.result![0].reference!, "Observation/f001")
		XCTAssertEqual(inst!.result![1].reference!, "Observation/f002")
		XCTAssertEqual(inst!.result![2].reference!, "Observation/f003")
		XCTAssertEqual(inst!.result![3].reference!, "Observation/f004")
		XCTAssertEqual(inst!.result![4].reference!, "Observation/f005")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "252275004")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Haematology test")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testDiagnosticReport5() {
		let inst = instantiateFrom("diagnosticreport-example-f001-bloodexam.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.conclusion!, "Core lab")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-04-02")!)
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/reports")!)
		XCTAssertEqual(inst!.identifier!.use!, "official")
		XCTAssertEqual(inst!.identifier!.value!, "nr1239044")
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-05-15T19:32:52+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.performer!.display!, "Burgers University Medical Centre")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst!.result![0].reference!, "Observation/f001")
		XCTAssertEqual(inst!.result![1].reference!, "Observation/f002")
		XCTAssertEqual(inst!.result![2].reference!, "Observation/f003")
		XCTAssertEqual(inst!.result![3].reference!, "Observation/f004")
		XCTAssertEqual(inst!.result![4].reference!, "Observation/f005")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "252275004")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Haematology test")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")
	}
	
	func testDiagnosticReport6() {
		let inst = instantiateFrom("diagnosticreport-example-f201-brainct.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "188340000")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "429858000")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.name!.text!, "CT of head-neck")
		XCTAssertEqual(inst!.performer!.display!, "Blijdorp MC")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f203")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "394914008")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testDiagnosticReport7() {
		let inst = instantiateFrom("diagnosticreport-example-f201-brainct.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "188340000")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "429858000")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.name!.text!, "CT of head-neck")
		XCTAssertEqual(inst!.performer!.display!, "Blijdorp MC")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f203")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "394914008")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testDiagnosticReport8() {
		let inst = instantiateFrom("diagnosticreport-example-f202-bloodculture.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "428763004")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-03-11T03:45:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-03-11T10:28:00+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "104177005")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.performer!.display!, "AUMC")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f201")
		XCTAssertEqual(inst!.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst!.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst!.result![0].reference!, "Observation/f206")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "15220000")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testDiagnosticReport9() {
		let inst = instantiateFrom("diagnosticreport-example-f202-bloodculture.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "428763004")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-03-11T03:45:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-03-11T10:28:00+01:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "104177005")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.performer!.display!, "AUMC")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f201")
		XCTAssertEqual(inst!.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst!.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst!.result![0].reference!, "Observation/f206")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "15220000")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct")!)
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.display!, "Roel")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")
	}
	
	func testDiagnosticReport10() {
		let inst = instantiateFrom("diagnosticreport-example-lipids.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2011-03-04T08:30:00+11:00")!)
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://acme.com/lab/reports")!)
		XCTAssertEqual(inst!.identifier!.value!, "5234342")
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-01-27T11:45:33+11:00")!)
		XCTAssertEqual(inst!.name!.coding![0].code!, "57698-3")
		XCTAssertEqual(inst!.name!.coding![0].display!, "Lipid panel with direct LDL - Serum or Plasma")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org")!)
		XCTAssertEqual(inst!.name!.text!, "Lipid Panel")
		XCTAssertEqual(inst!.performer!.display!, "Acme Laboratory, Inc")
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst!.result![0].reference!, "#cholesterol")
		XCTAssertEqual(inst!.result![1].reference!, "#triglyceride")
		XCTAssertEqual(inst!.result![2].reference!, "#hdlcholesterol")
		XCTAssertEqual(inst!.result![3].reference!, "#ldlcholesterol")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v2/0074")!)
		XCTAssertEqual(inst!.status!, "final")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")
	}
}
