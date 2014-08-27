//
//  DiagnosticReportTests.swift
//  DiagnosticReportTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
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
		let inst = instantiateFrom("diagnosticreport-example-dxa.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "391040000")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2008-06-17")!)	
		XCTAssertEqual(inst!.name!.text!, "DXA BONE DENSITOMETRY")	
		XCTAssertEqual(inst!.name!.coding![0].code!, "38269-7")	
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2008-06-18T09:23:00+10:00")!)
	}
	
	func testDiagnosticReport2() {
		let inst = instantiateFrom("diagnosticreport-example-f001-bloodexam.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "252275004")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Haematology test")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "HM")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-04-02")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "58410-2")	
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://loinc.org 58410-2}\">Complete blood count (hemogram) panel - Blood by Automated count</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 15-May 2013 19:32\n      </p>\n      <p>\n        <b>subject</b>: P. van den Heuvel\n      </p>\n      <p>\n        <b>performer</b>: Burgers University Medical Centre\n      </p>\n      <p>\n        <b>identifier</b>: nr1239044 (official)\n      </p>\n      <p>\n        <b>requestDetail</b>: P. van den Heuvel; L2381 (official); clinicalNotes: patient almost fainted during procedure\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 252275004}, {http://hl7.org/fhir/v2/0074 HM}\">Haematology test</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 2-Apr 2013\n      </p>\n      <p>\n        <b>result</b>: \n      </p>\n      <ul>\n        <li>\n          <a href=\"observation-example-f001-glucose.html\">Glucose [Mass/volume] in Blood; 6.3 mmol/l; abnormal; applies: 2-Apr 2013 9:30 --&gt; 5-Apr 2013 9:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6323 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f002-excess.html\">Base excess in Blood by calculation; 12.6 mmol/l; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6324 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f003-co2.html\">Carbon dioxide [Partial pressure] in Blood; 6.2 mm[Hg]; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6325 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f004-hemoglobin.html\">Erythrocyte mean corpuscular hemoglobin concentration [Mass/volume]; 18.7 g/dl; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6326 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f005-hemoglobin.html\">Hemoglobin [Mass/volume] in Venous blood; 7.2 g/dl; low; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6327 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n      </ul>\n      <p>\n        <b>conclusion</b>: Core lab\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-05-15T19:32:52+01:00")!)	
		XCTAssertEqual(inst!.conclusion!, "Core lab")	
		XCTAssertEqual(inst!.identifier!.use!, "official")	
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/reports"))	
		XCTAssertEqual(inst!.identifier!.value!, "nr1239044")
	}
	
	func testDiagnosticReport3() {
		let inst = instantiateFrom("diagnosticreport-example-f201-brainct.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "394914008")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Radiology")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "RAD")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)	
		XCTAssertEqual(inst!.name!.text!, "CT of head-neck")	
		XCTAssertEqual(inst!.name!.coding![0].code!, "429858000")	
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Computed tomography (CT) of head and neck")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://snomed.info/sct 429858000}\">CT of head-neck</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 1-Dec 2012 12:0\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>performer</b>: Blijdorp MC\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 394914008}, {http://hl7.org/fhir/v2/0074 RAD}\">Radiology</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 1-Dec 2012 12:0\n      </p>\n      <p>\n        <b>conclusion</b>: CT brains: large tumor sphenoid/clivus.\n      </p>\n      <p>\n        <b>codedDiagnosis</b>: \n        <span title=\"Codes: {http://snomed.info/sct 188340000}\">Malignant tumor of craniopharyngeal duct</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "188340000")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")	
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)	
		XCTAssertEqual(inst!.conclusion!, "CT brains: large tumor sphenoid/clivus.")
	}
	
	func testDiagnosticReport4() {
		let inst = instantiateFrom("diagnosticreport-example-f202-bloodculture.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "15220000")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Laboratory test")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "LAB")	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-03-11T03:45:00+01:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "104177005")	
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://snomed.info/sct 104177005}\">Blood culture for bacteria, including anaerobic screen</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 11-Mar 2013 10:28\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>performer</b>: AUMC\n      </p>\n      <p>\n        <b>requestDetail</b>: Roel\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 15220000}, {http://hl7.org/fhir/v2/0074 LAB}\">Laboratory test</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 11-Mar 2013 3:45\n      </p>\n      <p>\n        <b>result</b>: Results for staphylococcus analysis on Roel's blood culture\n      </p>\n      <p>\n        <b>conclusion</b>: Blood culture tested positive on staphylococcus aureus\n      </p>\n      <p>\n        <b>codedDiagnosis</b>: \n        <span title=\"Codes: {http://snomed.info/sct 428763004}\">Bacteremia due to staphylococcus</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "428763004")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")	
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-03-11T10:28:00+01:00")!)	
		XCTAssertEqual(inst!.conclusion!, "Blood culture tested positive on staphylococcus aureus")
	}
	
	func testDiagnosticReport5() {
		let inst = instantiateFrom("diagnosticreport-example-lipids.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "HM")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2011-03-04T08:30:00+11:00")!)	
		XCTAssertEqual(inst!.name!.text!, "Lipid Panel")	
		XCTAssertEqual(inst!.name!.coding![0].code!, "57698-3")	
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Lipid panel with direct LDL - Serum or Plasma")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div> \n      <h3>Lipid Report for Wile. E. COYOTE (MRN: 23453) issued 3-Mar 2009 14:26</h3>            \n\n            <pre>\nTest                  Units       Value       Reference Range\nCholesterol           mmol/L      6.3         &lt;4.5\nTriglyceride          mmol/L      1.3         &lt;2.0\nHDL Cholesterol       mmol/L      1.3         &gt;1.5\nLDL Chol. (calc)      mmol/L      4.2         &lt;3.0\n      </pre>\n            <p>Acme Laboratory, Inc signed: Dr Pete Pathologist</p>\n        </div>")	
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-01-27T11:45:33+11:00")!)	
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://acme.com/lab/reports"))	
		XCTAssertEqual(inst!.identifier!.value!, "5234342")
	}
}
