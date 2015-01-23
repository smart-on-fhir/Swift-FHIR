//
//  DiagnosticReportTests.swift
//  DiagnosticReportTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DiagnosticReportTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DiagnosticReport {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DiagnosticReport {
		let instance = DiagnosticReport(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticReport1() {
		let instance = testDiagnosticReport1_impl()
		testDiagnosticReport1_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport1_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-dxa.canonical.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2008-06-17")
		XCTAssertEqual(inst.issued!.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		
		return inst
	}
	
	func testDiagnosticReport2() {
		let instance = testDiagnosticReport2_impl()
		testDiagnosticReport2_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport2_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-dxa.canonical.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2008-06-17")
		XCTAssertEqual(inst.issued!.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		
		return inst
	}
	
	func testDiagnosticReport3() {
		let instance = testDiagnosticReport3_impl()
		testDiagnosticReport3_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport3_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-dxa.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "391040000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2008-06-17")
		XCTAssertEqual(inst.issued!.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.performer!.display!, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#r1")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		
		return inst
	}
	
	func testDiagnosticReport4() {
		let instance = testDiagnosticReport4_impl()
		testDiagnosticReport4_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport4_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f001-bloodexam.canonical.json")
		
		XCTAssertEqual(inst.conclusion!, "Core lab")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/reports")
		XCTAssertEqual(inst.identifier!.use!, "official")
		XCTAssertEqual(inst.identifier!.value!, "nr1239044")
		XCTAssertEqual(inst.issued!.description, "2013-05-15T19:32:52+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
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
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testDiagnosticReport5() {
		let instance = testDiagnosticReport5_impl()
		testDiagnosticReport5_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport5_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f001-bloodexam.json")
		
		XCTAssertEqual(inst.conclusion!, "Core lab")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-04-02")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://www.bmc.nl/zorgportal/identifiers/reports")
		XCTAssertEqual(inst.identifier!.use!, "official")
		XCTAssertEqual(inst.identifier!.value!, "nr1239044")
		XCTAssertEqual(inst.issued!.description, "2013-05-15T19:32:52+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "58410-2")
		XCTAssertEqual(inst.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
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
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "P. van den Heuvel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f001")
		
		return inst
	}
	
	func testDiagnosticReport6() {
		let instance = testDiagnosticReport6_impl()
		testDiagnosticReport6_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport6_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f201-brainct.canonical.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "188340000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.issued!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "429858000")
		XCTAssertEqual(inst.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.name!.text!, "CT of head-neck")
		XCTAssertEqual(inst.performer!.display!, "Blijdorp MC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f203")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "394914008")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testDiagnosticReport7() {
		let instance = testDiagnosticReport7_impl()
		testDiagnosticReport7_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport7_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f201-brainct.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "188340000")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.issued!.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "429858000")
		XCTAssertEqual(inst.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.name!.text!, "CT of head-neck")
		XCTAssertEqual(inst.performer!.display!, "Blijdorp MC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f203")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "394914008")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testDiagnosticReport8() {
		let instance = testDiagnosticReport8_impl()
		testDiagnosticReport8_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport8_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f202-bloodculture.canonical.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "428763004")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-03-11T03:45:00+01:00")
		XCTAssertEqual(inst.issued!.description, "2013-03-11T10:28:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "104177005")
		XCTAssertEqual(inst.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.performer!.display!, "AUMC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f201")
		XCTAssertEqual(inst.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst.result![0].reference!, "Observation/f206")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "15220000")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testDiagnosticReport9() {
		let instance = testDiagnosticReport9_impl()
		testDiagnosticReport9_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport9_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-f202-bloodculture.json")
		
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].code!, "428763004")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst.codedDiagnosis![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2013-03-11T03:45:00+01:00")
		XCTAssertEqual(inst.issued!.description, "2013-03-11T10:28:00+01:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "104177005")
		XCTAssertEqual(inst.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.performer!.display!, "AUMC")
		XCTAssertEqual(inst.performer!.reference!, "Organization/f201")
		XCTAssertEqual(inst.requestDetail![0].reference!, "#req")
		XCTAssertEqual(inst.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst.result![0].reference!, "Observation/f206")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "15220000")
		XCTAssertEqual(inst.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst.serviceCategory!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.display!, "Roel")
		XCTAssertEqual(inst.subject!.reference!, "Patient/f201")
		
		return inst
	}
	
	func testDiagnosticReport10() {
		let instance = testDiagnosticReport10_impl()
		testDiagnosticReport10_impl(json: instance.asJSON())
	}
	
	func testDiagnosticReport10_impl(json: JSONDictionary? = nil) -> DiagnosticReport {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-example-lipids.canonical.json")
		
		XCTAssertEqual(inst.diagnosticDateTime!.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.identifier!.system!.absoluteString!, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier!.value!, "5234342")
		XCTAssertEqual(inst.issued!.description, "2013-01-27T11:45:33+11:00")
		XCTAssertEqual(inst.name!.coding![0].code!, "57698-3")
		XCTAssertEqual(inst.name!.coding![0].display!, "Lipid panel with direct LDL - Serum or Plasma")
		XCTAssertEqual(inst.name!.coding![0].system!.absoluteString!, "http://loinc.org")
		XCTAssertEqual(inst.name!.text!, "Lipid Panel")
		XCTAssertEqual(inst.performer!.display!, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result![0].reference!, "#cholesterol")
		XCTAssertEqual(inst.result![1].reference!, "#triglyceride")
		XCTAssertEqual(inst.result![2].reference!, "#hdlcholesterol")
		XCTAssertEqual(inst.result![3].reference!, "#ldlcholesterol")
		XCTAssertEqual(inst.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst.serviceCategory!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.status!, "final")
		XCTAssertEqual(inst.subject!.reference!, "Patient/pat2")
		
		return inst
	}
}
