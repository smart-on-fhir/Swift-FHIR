//
//  DiagnosticReportTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDiagnosticReport = Models.DiagnosticReport
#else
import SwiftFHIR
typealias SwiftFHIRDiagnosticReport = SwiftFHIR.DiagnosticReport
#endif


class DiagnosticReportTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDiagnosticReport {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDiagnosticReport {
		return try SwiftFHIRDiagnosticReport(json: json)
	}
	
	func testDiagnosticReport1() {
		do {
			let instance = try runDiagnosticReport1()
			try runDiagnosticReport1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-dxa.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "38269-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].code, "391040000")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].display, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2008-06-17")
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.issued?.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.performer?[0].display, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result?[0].reference, "Observation/bmd")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport2() {
		do {
			let instance = try runDiagnosticReport2()
			try runDiagnosticReport2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f001-bloodexam.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "252275004")
		XCTAssertEqual(inst.category?.coding?[0].display, "Haematology test")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "HM")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "58410-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.conclusion, "Core lab")
		XCTAssertEqual(inst.contained?[0].id, "req")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2013-04-02")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.bmc.nl/zorgportal/identifiers/reports")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "nr1239044")
		XCTAssertEqual(inst.issued?.description, "2013-05-15T19:32:52+01:00")
		XCTAssertEqual(inst.performer?[0].display, "Burgers University Medical Centre")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.request?[0].reference, "#req")
		XCTAssertEqual(inst.result?[0].reference, "Observation/f001")
		XCTAssertEqual(inst.result?[1].reference, "Observation/f002")
		XCTAssertEqual(inst.result?[2].reference, "Observation/f003")
		XCTAssertEqual(inst.result?[3].reference, "Observation/f004")
		XCTAssertEqual(inst.result?[4].reference, "Observation/f005")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "P. van den Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport3() {
		do {
			let instance = try runDiagnosticReport3()
			try runDiagnosticReport3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f201-brainct.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "394914008")
		XCTAssertEqual(inst.category?.coding?[0].display, "Radiology")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "RAD")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "429858000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "CT of head-neck")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].code, "188340000")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].display, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.imagingStudy?[0].display, "HEAD and NECK CT DICOM imaging study")
		XCTAssertEqual(inst.issued?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.performer?[0].display, "Blijdorp MC")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/f203")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport4() {
		do {
			let instance = try runDiagnosticReport4()
			try runDiagnosticReport4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f202-bloodculture.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "15220000")
		XCTAssertEqual(inst.category?.coding?[0].display, "Laboratory test")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "LAB")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "104177005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].code, "428763004")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].display, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst.codedDiagnosis?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.conclusion, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst.contained?[0].id, "req")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2013-03-11T03:45:00+01:00")
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.issued?.description, "2013-03-11T10:28:00+01:00")
		XCTAssertEqual(inst.performer?[0].display, "AUMC")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/f201")
		XCTAssertEqual(inst.request?[0].reference, "#req")
		XCTAssertEqual(inst.result?[0].display, "Results for staphylococcus analysis on Roel's blood culture")
		XCTAssertEqual(inst.result?[0].reference, "Observation/f206")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport5() {
		do {
			let instance = try runDiagnosticReport5()
			try runDiagnosticReport5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-ghp.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "GHP")
		XCTAssertEqual(inst.code?.coding?[0].display, "General Health Profile")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.com/labs/reports")
		XCTAssertEqual(inst.contained?[0].id, "rtt")
		XCTAssertEqual(inst.contained?[1].id, "ltt")
		XCTAssertEqual(inst.contained?[2].id, "urine")
		XCTAssertEqual(inst.contained?[3].id, "p2")
		XCTAssertEqual(inst.contained?[4].id, "r1")
		XCTAssertEqual(inst.contained?[5].id, "r2")
		XCTAssertEqual(inst.contained?[6].id, "r3")
		XCTAssertEqual(inst.contained?[7].id, "r4")
		XCTAssertEqual(inst.contained?[8].id, "r5")
		XCTAssertEqual(inst.contained?[9].id, "r6")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2015-08-16T06:40:17Z")
		XCTAssertEqual(inst.id, "ghp")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier?[0].value, "ghp-example")
		XCTAssertEqual(inst.issued?.description, "2015-08-17T06:40:17Z")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2015-08-16T10:35:23Z")
		XCTAssertEqual(inst.performer?[0].display, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result?[0].display, "Chemistry Panel")
		XCTAssertEqual(inst.result?[0].reference, "#p1")
		XCTAssertEqual(inst.result?[1].display, "CBC")
		XCTAssertEqual(inst.result?[1].reference, "#p2")
		XCTAssertEqual(inst.result?[2].display, "Urinalysis")
		XCTAssertEqual(inst.result?[2].reference, "#p3")
		XCTAssertEqual(inst.specimen?[0].display, "Red Top Tube")
		XCTAssertEqual(inst.specimen?[0].reference, "#rtt")
		XCTAssertEqual(inst.specimen?[1].display, "Lavender Top Tube")
		XCTAssertEqual(inst.specimen?[1].reference, "#ltt")
		XCTAssertEqual(inst.specimen?[2].display, "Urine Sample")
		XCTAssertEqual(inst.specimen?[2].reference, "#urine")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport6() {
		do {
			let instance = try runDiagnosticReport6()
			try runDiagnosticReport6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-lipids.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "HM")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "24331-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Lipid 1996 panel - Serum or Plasma")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "cholesterol")
		XCTAssertEqual(inst.contained?[1].id, "triglyceride")
		XCTAssertEqual(inst.contained?[2].id, "hdlcholesterol")
		XCTAssertEqual(inst.contained?[3].id, "ldlcholesterol")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.id, "lipids")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier?[0].value, "5234342")
		XCTAssertEqual(inst.issued?.description, "2013-01-27T11:45:33+11:00")
		XCTAssertEqual(inst.performer?[0].display, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.result?[0].reference, "#cholesterol")
		XCTAssertEqual(inst.result?[1].reference, "#triglyceride")
		XCTAssertEqual(inst.result?[2].reference, "#hdlcholesterol")
		XCTAssertEqual(inst.result?[3].reference, "#ldlcholesterol")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport7() {
		do {
			let instance = try runDiagnosticReport7()
			try runDiagnosticReport7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-papsmear.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "47527-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2013-02-11T10:33:33+11:00")
		XCTAssertEqual(inst.id, "pap")
		XCTAssertEqual(inst.issued?.description, "2013-02-13T11:45:33+11:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/b248b1b2-1686-4b94-9936-37d7a5f94b51")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testDiagnosticReport8() {
		do {
			let instance = try runDiagnosticReport8()
			try runDiagnosticReport8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-pgx.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "PGxReport")
		XCTAssertEqual(inst.code?.coding?[0].display, "Pharmacogenetics Report")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "https://system/PGxReport")
		XCTAssertEqual(inst.code?.text, "Pharmacogenetics Report")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-10-15T12:34:56+11:00")
		XCTAssertEqual(inst.id, "example-pgx")
		XCTAssertEqual(inst.issued?.description, "2016-10-20T14:00:05+11:00")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/4829")
		XCTAssertEqual(inst.presentedForm?[0].contentType, "PDF")
		XCTAssertEqual(inst.presentedForm?[0].creation?.description, "2016-10-20T20:00:00+11:00")
		XCTAssertEqual(inst.presentedForm?[0].data, Base64Binary(value: "cGRmSW5CYXNlNjRCaW5hcnk="))
		XCTAssertEqual(inst.presentedForm?[0].hash, Base64Binary(value: "571ef9c5655840f324e679072ed62b1b95eef8a0"))
		XCTAssertEqual(inst.presentedForm?[0].language, "en-us")
		XCTAssertEqual(inst.presentedForm?[0].title, "Pharmacogenetics Report")
		XCTAssertEqual(inst.request?[0].reference, "DiagnosticRequest/example-pgx")
		XCTAssertEqual(inst.result?[0].reference, "Observation/example-phenotype")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Bob Smith")
		XCTAssertEqual(inst.subject?.reference, "Patient/899962")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport9() {
		do {
			let instance = try runDiagnosticReport9()
			try runDiagnosticReport9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-ultrasound.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "394914008")
		XCTAssertEqual(inst.category?.coding?[0].display, "Radiology")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.coding?[1].code, "RAD")
		XCTAssertEqual(inst.category?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "45036003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ultrasonography of abdomen")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Abdominal Ultrasound")
		XCTAssertEqual(inst.conclusion, "Unremarkable study")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.id, "ultrasound")
		XCTAssertEqual(inst.image?[0].comment, "A comment about the image")
		XCTAssertEqual(inst.image?[0].link?.display, "WADO example image")
		XCTAssertEqual(inst.image?[0].link?.reference, "Media/1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.issued?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testDiagnosticReport10() {
		do {
			let instance = try runDiagnosticReport10()
			try runDiagnosticReport10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DiagnosticReport successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDiagnosticReport10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDiagnosticReport {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example.json")
		
		XCTAssertEqual(inst.category?.coding?[0].code, "HM")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "58410-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "CBC")
		XCTAssertEqual(inst.code?.coding?[1].display, "MASTER FULL BLOOD COUNT")
		XCTAssertEqual(inst.code?.text, "Complete Blood Count")
		XCTAssertEqual(inst.contained?[0].id, "r1")
		XCTAssertEqual(inst.contained?[1].id, "r2")
		XCTAssertEqual(inst.contained?[2].id, "r3")
		XCTAssertEqual(inst.contained?[3].id, "r4")
		XCTAssertEqual(inst.contained?[4].id, "r5")
		XCTAssertEqual(inst.contained?[5].id, "r6")
		XCTAssertEqual(inst.contained?[6].id, "r7")
		XCTAssertEqual(inst.contained?[7].id, "r8")
		XCTAssertEqual(inst.contained?[8].id, "r9")
		XCTAssertEqual(inst.contained?[9].id, "r10")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2011-03-04T08:30:00+11:00")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "101")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/lab/reports")
		XCTAssertEqual(inst.identifier?[0].value, "5234342")
		XCTAssertEqual(inst.issued?.description, "2011-03-04T11:45:33+11:00")
		XCTAssertEqual(inst.performer?[0].display, "Acme Laboratory, Inc")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.presentedForm?[0].contentType, "application/pdf")
		XCTAssertEqual(inst.presentedForm?[0].language, "en-AU")
		XCTAssertEqual(inst.presentedForm?[0].title, "HTML Report")
		XCTAssertEqual(inst.result?[0].reference, "#r1")
		XCTAssertEqual(inst.result?[1].reference, "#r2")
		XCTAssertEqual(inst.result?[2].reference, "#r3")
		XCTAssertEqual(inst.result?[3].reference, "#r4")
		XCTAssertEqual(inst.result?[4].reference, "#r5")
		XCTAssertEqual(inst.result?[5].reference, "#r6")
		XCTAssertEqual(inst.result?[6].reference, "#r7")
		XCTAssertEqual(inst.result?[7].reference, "#r8")
		XCTAssertEqual(inst.result?[8].reference, "#r9")
		XCTAssertEqual(inst.result?[9].reference, "#r10")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
