//
//  DiagnosticReportTests.swift
//  DiagnosticReportTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-15.
//  2014, SMART Platforms.
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
		
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "391040000")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "At risk of osteoporotic fracture")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2008-06-17")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2008-06-18T09:23:00+10:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "38269-7")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
		XCTAssertEqual(inst!.name!.text!, "DXA BONE DENSITOMETRY")	
		XCTAssertEqual(inst!.performer!.display!, "Acme Imaging Diagnostics")	
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")	
		XCTAssertEqual(inst!.result![0].reference!, "#r1")	
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")	
		XCTAssertEqual(inst!.text!.div!, "<div> \n      <h2>DXA BONE DENSITOMETRY</h2>\n      \n      <table>\n        <tr><td>NAME</td><td>XXXXXXX</td></tr>\n        <tr><td>DOB</td><td>10/02/1974</td></tr>\n        <tr><td>REFERRING DR</td><td>Smith, Jane</td></tr>\n        <tr><td>INDICATIONS</td><td>Early menopause on estrogen levels. No period  for 18 months</td></tr>\n        <tr><td>PROCEDURE</td><td>Dual energy x-ray absorptiometry (DEXA)</td></tr>\n      </table>\n\n      <h3>Bone Mineral Density</h3>\n      <table>\n        <tr>\n          <td>Scan Type</td>\n          <td>Region</td>\n          <td>Measured</td>\n          <td>Age</td>\n          <td>BMD</td>\n          <td>T-Score</td>\n          <td>Z-Score</td>\n          <td>ΔBMD(g/cm2)</td>\n          <td>ΔBMD(%)</td>\n        </tr>\n\n        <tr>\n          <td>AP Spine</td>\n          <td>L1-L4</td>\n          <td>17/06/2008</td>\n          <td>34.4</td>\n          <td>1.148 g/cm²</td>\n          <td>-0.4</td>\n          <td>-0.5</td>\n          <td>-</td>\n          <td>-</td>\n        </tr>\n\n        <tr>\n          <td>Left Femur</td>\n          <td>Neck</td>\n          <td>17/06/2008</td>\n          <td>34.4</td>\n          <td>0.891 g/cm²</td>\n          <td>-1.0</td>\n          <td>-0.9</td>\n          <td>-</td>\n          <td>-</td>\n        </tr>\n\n        <tr>\n          <td>Left Femur</td>\n          <td>Total</td>\n          <td>17/06/2008</td>\n          <td>34.4</td>\n          <td>0.887 g/cm²</td>\n          <td>-1.2</td>\n          <td>-1.3</td>\n          <td>-</td>\n          <td>-</td>\n        </tr>\n							\n        <tr>\n          <td>Right Femur</td>\n          <td>Neck</td>\n          <td>17/06/2008</td>\n          <td>34.4</td>\n          <td>0.885 g/cm²</td>\n          <td>-1.0</td>\n          <td>-1.0</td>\n          <td>-</td>\n          <td>-</td>\n        </tr>\n \n        <tr>\n          <td>Right Femur</td>\n          <td>Total</td>\n          <td>17/06/2008</td>\n          <td>34.4</td>\n          <td>0.867 g/cm²</td>\n          <td>-1.4</td>\n          <td>-1.4</td>\n          <td>-</td>\n          <td>-</td>\n        </tr>\n      </table>\n\n      <p>Assessment:</p>\n      <ul>\n        <li>The Spine L1-L4 BMD is normal.</li>\n        <li>The Left Femur Neck BMD is in the osteopenic range. Relative fracture risk is about 2.</li>\n        <li>The Left Femur Total BMD is in the osteopenic range. Relative fracture risk is about 2.</li>\n        <li>The Right Femur Neck BMD is in the osteopenic range. Relative fracture risk is about 2.</li>\n        <li>The Right Femur Total BMD is in the osteopenic range. Relative fracture risk is about 2.</li>\n      </ul>\n      \n      <p><b>COMMENT</b></p>\n      <p>Osteopenia on measured BMD. The estimated 10-year probability of fracture based on present age, gender and measured BMD is less than 10%. This absolute fracture risk remains low. A follow-up assessment may be considered in 2 to 3 years to monitor the trend in BMD.</p>\n      \n      <p>Thank you for your referral.  Dr Peter Ng  17/06/2008</p>\n \n      <pre>\nNote:\nWHO classification of osteoporosis (WHO Technical Report Series 1994: 843)\n- Normal: T-score equal to -1.0 s.d. or higher\n- Osteopenia: T-score  between -1.0 and -2.5 s.d.\n- Osteoporosis: T-score equal to -2.5 s.d. or lower\n- Severe/Established osteoporosis: Osteoporosis with one or more fragility fracture.\n\nT-score: The number of s.d. from the mean BMD for a gender-matched young adult population. \nZ-score: The number of s.d. from the mean BMD for an age-, weight- and gender-matched population.\n\nReference for 10-year probability of fracture risk: Kanis JA, Johnell O, Oden A, Dawson A,  De Laet C, Jonsson B. Ten year probabilities of osteoporotic fractures according to BMD and diagnostic thresholds. Osteoporos.Int. 2001;12(12):989-995.\n\nGE LUNAR PRODIGY DENSITOMETER\n</pre> \n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testDiagnosticReport2() {
		let inst = instantiateFrom("diagnosticreport-example-f001-bloodexam.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.conclusion!, "Core lab")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-04-02")!)
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/reports"))	
		XCTAssertEqual(inst!.identifier!.use!, "official")	
		XCTAssertEqual(inst!.identifier!.value!, "nr1239044")
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-05-15T19:32:52+01:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "58410-2")	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Complete blood count (hemogram) panel - Blood by Automated count")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
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
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "HM")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.subject!.display!, "P. van den Heuvel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f001")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://loinc.org 58410-2}\">Complete blood count (hemogram) panel - Blood by Automated count</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 15-May 2013 19:32\n      </p>\n      <p>\n        <b>subject</b>: P. van den Heuvel\n      </p>\n      <p>\n        <b>performer</b>: Burgers University Medical Centre\n      </p>\n      <p>\n        <b>identifier</b>: nr1239044 (official)\n      </p>\n      <p>\n        <b>requestDetail</b>: P. van den Heuvel; L2381 (official); clinicalNotes: patient almost fainted during procedure\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 252275004}, {http://hl7.org/fhir/v2/0074 HM}\">Haematology test</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 2-Apr 2013\n      </p>\n      <p>\n        <b>result</b>: \n      </p>\n      <ul>\n        <li>\n          <a href=\"observation-example-f001-glucose.html\">Glucose [Mass/volume] in Blood; 6.3 mmol/l; abnormal; applies: 2-Apr 2013 9:30 --&gt; 5-Apr 2013 9:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6323 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f002-excess.html\">Base excess in Blood by calculation; 12.6 mmol/l; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6324 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f003-co2.html\">Carbon dioxide [Partial pressure] in Blood; 6.2 mm[Hg]; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6325 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f004-hemoglobin.html\">Erythrocyte mean corpuscular hemoglobin concentration [Mass/volume]; 18.7 g/dl; abnormal; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6326 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n        <li>\n          <a href=\"observation-example-f005-hemoglobin.html\">Hemoglobin [Mass/volume] in Venous blood; 7.2 g/dl; low; applies: 2-Apr 2013 10:30 --&gt; 5-Apr 2013 10:30; issued: 3-Apr 2013 15:30; final_; ok; Superficial forearm vein; Injection to forearm; 6327 (official); P. van de Heuvel; A. Langeveld</a>\n        </li>\n      </ul>\n      <p>\n        <b>conclusion</b>: Core lab\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testDiagnosticReport3() {
		let inst = instantiateFrom("diagnosticreport-example-f201-brainct.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "188340000")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Malignant tumor of craniopharyngeal duct")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.conclusion!, "CT brains: large tumor sphenoid/clivus.")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2012-12-01T12:00:00+01:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "429858000")	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Computed tomography (CT) of head and neck")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.name!.text!, "CT of head-neck")	
		XCTAssertEqual(inst!.performer!.display!, "Blijdorp MC")	
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f203")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "394914008")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Radiology")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "RAD")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://snomed.info/sct 429858000}\">CT of head-neck</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 1-Dec 2012 12:0\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>performer</b>: Blijdorp MC\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 394914008}, {http://hl7.org/fhir/v2/0074 RAD}\">Radiology</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 1-Dec 2012 12:0\n      </p>\n      <p>\n        <b>conclusion</b>: CT brains: large tumor sphenoid/clivus.\n      </p>\n      <p>\n        <b>codedDiagnosis</b>: \n        <span title=\"Codes: {http://snomed.info/sct 188340000}\">Malignant tumor of craniopharyngeal duct</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testDiagnosticReport4() {
		let inst = instantiateFrom("diagnosticreport-example-f202-bloodculture.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
		
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].code!, "428763004")	
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].display!, "Bacteremia due to staphylococcus")
		XCTAssertEqual(inst!.codedDiagnosis![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.conclusion!, "Blood culture tested positive on staphylococcus aureus")
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2013-03-11T03:45:00+01:00")!)
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-03-11T10:28:00+01:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "104177005")	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Blood culture for bacteria, including anaerobic screen")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.performer!.display!, "AUMC")	
		XCTAssertEqual(inst!.performer!.reference!, "Organization/f201")	
		XCTAssertEqual(inst!.requestDetail![0].reference!, "#req")	
		XCTAssertEqual(inst!.result![0].display!, "Results for staphylococcus analysis on Roel's blood culture")	
		XCTAssertEqual(inst!.result![0].reference!, "Observation/f206")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "15220000")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].display!, "Laboratory test")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.serviceCategory!.coding![1].code!, "LAB")
		XCTAssertEqual(inst!.serviceCategory!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.subject!.display!, "Roel")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/f201")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: \n        <span title=\"Codes: {http://snomed.info/sct 104177005}\">Blood culture for bacteria, including anaerobic screen</span>\n      </p>\n      <p>\n        <b>status</b>: final_\n      </p>\n      <p>\n        <b>issued</b>: 11-Mar 2013 10:28\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>performer</b>: AUMC\n      </p>\n      <p>\n        <b>requestDetail</b>: Roel\n      </p>\n      <p>\n        <b>serviceCategory</b>: \n        <span title=\"Codes: {http://snomed.info/sct 15220000}, {http://hl7.org/fhir/v2/0074 LAB}\">Laboratory test</span>\n      </p>\n      <p>\n        <b>diagnostic[x]</b>: 11-Mar 2013 3:45\n      </p>\n      <p>\n        <b>result</b>: Results for staphylococcus analysis on Roel's blood culture\n      </p>\n      <p>\n        <b>conclusion</b>: Blood culture tested positive on staphylococcus aureus\n      </p>\n      <p>\n        <b>codedDiagnosis</b>: \n        <span title=\"Codes: {http://snomed.info/sct 428763004}\">Bacteremia due to staphylococcus</span>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testDiagnosticReport5() {
		let inst = instantiateFrom("diagnosticreport-example-lipids.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticReport instance")
	
		XCTAssertEqual(inst!.diagnosticDateTime!, NSDate.dateFromISOString("2011-03-04T08:30:00+11:00")!)
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "http://acme.com/lab/reports"))	
		XCTAssertEqual(inst!.identifier!.value!, "5234342")
		XCTAssertEqual(inst!.issued!, NSDate.dateFromISOString("2013-01-27T11:45:33+11:00")!)	
		XCTAssertEqual(inst!.name!.coding![0].code!, "57698-3")	
		XCTAssertEqual(inst!.name!.coding![0].display!, "Lipid panel with direct LDL - Serum or Plasma")
		XCTAssertEqual(inst!.name!.coding![0].system!, NSURL(string: "http://loinc.org"))	
		XCTAssertEqual(inst!.name!.text!, "Lipid Panel")	
		XCTAssertEqual(inst!.performer!.display!, "Acme Laboratory, Inc")	
		XCTAssertEqual(inst!.performer!.reference!, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")	
		XCTAssertEqual(inst!.result![0].reference!, "#cholesterol")	
		XCTAssertEqual(inst!.result![1].reference!, "#triglyceride")	
		XCTAssertEqual(inst!.result![2].reference!, "#hdlcholesterol")	
		XCTAssertEqual(inst!.result![3].reference!, "#ldlcholesterol")	
		XCTAssertEqual(inst!.serviceCategory!.coding![0].code!, "HM")
		XCTAssertEqual(inst!.serviceCategory!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v2/0074"))	
		XCTAssertEqual(inst!.status!, "final")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/pat2")	
		XCTAssertEqual(inst!.text!.div!, "<div> \n      <h3>Lipid Report for Wile. E. COYOTE (MRN: 23453) issued 3-Mar 2009 14:26</h3>            \n\n            <pre>\nTest                  Units       Value       Reference Range\nCholesterol           mmol/L      6.3         &lt;4.5\nTriglyceride          mmol/L      1.3         &lt;2.0\nHDL Cholesterol       mmol/L      1.3         &gt;1.5\nLDL Chol. (calc)      mmol/L      4.2         &lt;3.0\n      </pre>\n            <p>Acme Laboratory, Inc signed: Dr Pete Pathologist</p>\n        </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
