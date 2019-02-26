//
//  DiagnosticReportTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-ultrasound.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "394914008")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Radiology")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "RAD")
		XCTAssertEqual(inst.category?[0].coding?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "45036003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ultrasonography of abdomen")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Abdominal Ultrasound")
		XCTAssertEqual(inst.conclusion, "Unremarkable study")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.id, "ultrasound")
		XCTAssertEqual(inst.issued?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.media?[0].comment, "A comment about the image")
		XCTAssertEqual(inst.media?[0].link?.display, "WADO example image")
		XCTAssertEqual(inst.media?[0].link?.reference, "Media/1.2.840.11361907579238403408700.3.1.04.19970327150033")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-f201-brainct.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "394914008")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Radiology")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].coding?[1].code, "RAD")
		XCTAssertEqual(inst.category?[0].coding?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0074")
		XCTAssertEqual(inst.code?.coding?[0].code, "429858000")
		XCTAssertEqual(inst.code?.coding?[0].display, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "CT of head-neck")
		XCTAssertEqual(inst.conclusion, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].code, "188340000")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].display, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.imagingStudy?[0].display, "HEAD and NECK CT DICOM imaging study")
		XCTAssertEqual(inst.issued?.description, "2012-12-01T12:00:00+01:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].display, "Blijdorp MC")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/f203")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-papsmear.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "47527-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2013-02-11T10:33:33+11:00")
		XCTAssertEqual(inst.id, "pap")
		XCTAssertEqual(inst.issued?.description, "2013-02-13T11:45:33+11:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/b248b1b2-1686-4b94-9936-37d7a5f94b51")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-gingival-mass.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "PAT")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Pathology (gross & histopath, not surgical)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0074")
		XCTAssertEqual(inst.category?[0].text, "Pathology")
		XCTAssertEqual(inst.code?.coding?[0].code, "4503")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy without Microscopic Description (1 Site/Lesion)-Standard")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "https://www.acmeonline.com")
		XCTAssertEqual(inst.code?.text, "Biopsy without Microscopic Description (1 Site/Lesion)-Standard")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2017-03-02")
		XCTAssertEqual(inst.id, "gingival-mass")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "https://www.acmeonline.com")
		XCTAssertEqual(inst.identifier?[0].value, "P73456090")
		XCTAssertEqual(inst.issued?.description, "2017-03-15T08:13:08Z")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].display, "Acme Animal Labs")
		XCTAssertEqual(inst.presentedForm?[0].contentType, "application/pdf")
		XCTAssertEqual(inst.presentedForm?[0].language, "en")
		XCTAssertEqual(inst.presentedForm?[0].title, "LAB ID: P73456090 MAX JONES Biopsy without Microscopic Description (1 Site/Lesion)-Standard")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Max Jones")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-pgx.json")
		
		XCTAssertEqual(inst.basedOn?[0].reference, "ServiceRequest/example-pgx")
		XCTAssertEqual(inst.code?.coding?[0].code, "PGxReport")
		XCTAssertEqual(inst.code?.coding?[0].display, "Pharmacogenetics Report")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "https://system/PGxReport")
		XCTAssertEqual(inst.code?.text, "Pharmacogenetics Report")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-10-15T12:34:56+11:00")
		XCTAssertEqual(inst.id, "example-pgx")
		XCTAssertEqual(inst.issued?.description, "2016-10-20T14:00:05+11:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/4829")
		XCTAssertEqual(inst.presentedForm?[0].contentType, "application/pdf")
		XCTAssertEqual(inst.presentedForm?[0].creation?.description, "2016-10-20T20:00:00+11:00")
		XCTAssertEqual(inst.presentedForm?[0].data, Base64Binary(value: "cGRmSW5CYXNlNjRCaW5hcnk="))
		XCTAssertEqual(inst.presentedForm?[0].hash, Base64Binary(value: "571ef9c5655840f324e679072ed62b1b95eef8a0"))
		XCTAssertEqual(inst.presentedForm?[0].language, "en")
		XCTAssertEqual(inst.presentedForm?[0].title, "Pharmacogenetics Report")
		XCTAssertEqual(inst.result?[0].reference, "Observation/example-phenotype")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Bob Smith")
		XCTAssertEqual(inst.subject?.reference, "Patient/899962")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-example-dxa.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "38269-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "DXA BONE DENSITOMETRY")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].code, "391040000")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].display, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst.conclusionCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2008-06-17")
		XCTAssertEqual(inst.id, "102")
		XCTAssertEqual(inst.issued?.description, "2008-06-18T09:23:00+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].display, "Dr Henry Seven")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.result?[0].reference, "Observation/bmd")
		XCTAssertEqual(inst.status, DiagnosticReportStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
