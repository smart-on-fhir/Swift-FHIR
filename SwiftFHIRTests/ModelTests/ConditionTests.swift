//
//  ConditionTests.swift
//  ConditionTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class ConditionTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Condition? {
		let json = readJSONFile(filename)
		let instance = Condition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCondition1() {
		let inst = instantiateFrom("condition-example-f001-heart.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "368009")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Heart valve disorder")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2011-10-05")!)	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "426396005")	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "Cardiac chest pain")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "40768004")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Left thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].detail!, "heart structure")
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2011-08-05")!)	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "6736007")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Moderate")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f001-heart.html\">v1451 (official); finished; outpatient; Patient-initiated encounter; 140 min; Heart valve replacement; Non-urgent cardiological admission</a>\n      </p>\n      <p>\n        <b>asserter</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>dateAsserted</b>: 5-Oct 2011\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 368009}\">Heart valve disorder</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 439401001}\">diagnosis</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 6736007}\">Moderate</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 5-Aug 2011\n      </p>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 426396005}\">Cardiac chest pain</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 40768004}\">Left thorax</span>\n          </td>\n          <td>heart structure</td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition2() {
		let inst = instantiateFrom("condition-example-f002-lung.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "254637007")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "NSCLC - Non-small cell lung cancer")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-06-03")!)	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "169069000")	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "CT of thorax")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "51185008")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Thorax")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].detail!, "lung")
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2011-05-05")!)	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "24484000")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.stage!.summary!.coding![0].code!, "258219007")	
		XCTAssertEqual(inst!.stage!.summary!.coding![0].display!, "stage II")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f002-lung.html\">v3251 (official); finished; outpatient; Patient-initiated encounter; 140 min; Partial lobectomy of lung; Urgent</a>\n      </p>\n      <p>\n        <b>asserter</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>dateAsserted</b>: 3-Jun 2012\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 254637007}\">NSCLC - Non-small cell lung cancer</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 439401001}\">diagnosis</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 24484000}\">Severe</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 5-May 2011\n      </p>\n      <h3>Stages</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Summary</b>\n          </td>\n          <td>\n            <b>Assessment</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 258219007}\">stage II</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 169069000}\">CT of thorax</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 51185008}\">Thorax</span>\n          </td>\n          <td>lung</td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition3() {
		let inst = instantiateFrom("condition-example-f003-abscess.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "439401001")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "diagnosis")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "18099001")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-02-20")!)	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "169068008")	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "CT of neck")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "280193007")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Entire retropharyngeal area")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2012-02-27")!)	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "371923003")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Mild to moderate")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f003-abscess.html\">v6751 (official); finished; outpatient; Patient-initiated encounter; 90 min; Retropharyngeal abscess; Non-urgent ear, nose and throat admission</a>\n      </p>\n      <p>\n        <b>asserter</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>dateAsserted</b>: 20-Feb 2012\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 18099001}\">Retropharyngeal abscess</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 439401001}\">diagnosis</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 371923003}\">Mild to moderate</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 27-Feb 2012\n      </p>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 169068008}\">CT of neck</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 280193007}\">Entire retropharyngeal area</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition4() {
		let inst = instantiateFrom("condition-example-f201-fever.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "55607006")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst!.category!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/condition-category"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "386661006")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Fever")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2013-04-04")!)	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].code!, "258710007")	
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].display!, "degrees C")
		XCTAssertEqual(inst!.evidence![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "38266002")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Entire body as a whole")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2013-04-02")!)	
		XCTAssertEqual(inst!.relatedItem![0].type!, "due-to")	
		XCTAssertEqual(inst!.relatedItem![1].type!, "due-to")	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "255604002")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Mild")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f201-20130404.html\">Roel's encounter on April fourth 2013 = Encounter_Roel_20130404 (temp); finished; outpatient; Consultation; The patient had fever peaks over the last couple of days. He is worried about these peaks.; Normal</a>\n      </p>\n      <p>\n        <b>asserter</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>dateAsserted</b>: 4-Apr 2013\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 386661006}\">Fever</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 55607006}, {http://hl7.org/fhir/condition-category condition}\">Problem</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 255604002}\">Mild</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 2-Apr 2013\n      </p>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 258710007}\">degrees C</span>\n          </td>\n          <td>Temperature</td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 38266002}\">Entire body as a whole</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>RelatedItems</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Target</b>\n          </td>\n        </tr>\n        <tr>\n          <td>dueto</td>\n          <td> </td>\n          <td>TPF chemokuur</td>\n        </tr>\n        <tr>\n          <td>dueto</td>\n          <td> </td>\n          <td>bacterial infection</td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition5() {
		let inst = instantiateFrom("condition-example-f202-malignancy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "diagnose")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/condition-category"))	
		XCTAssertEqual(inst!.certainty!.coding![0].code!, "17162000")	
		XCTAssertEqual(inst!.certainty!.coding![0].display!, "Certain")
		XCTAssertEqual(inst!.certainty!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "363346000")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Malignant neoplastic disease")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2012-12-01")!)	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "361355005")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Entire head and neck")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "24484000")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>dateAsserted</b>: 1-Dec 2012\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 363346000}\">Malignant neoplastic disease</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://hl7.org/fhir/condition-category diagnose}\">diagnose</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>certainty</b>: \n        <span title=\"Codes: {http://snomed.info/sct 17162000}\">Certain</span>\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 24484000}\">Severe</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 52 years\n      </p>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>Erasmus' diagnostic report of Roel's tumor</td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 361355005}\">Entire head and neck</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition6() {
		let inst = instantiateFrom("condition-example-f203-sepsis.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "55607006")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.category!.coding![1].code!, "finding")
		XCTAssertEqual(inst!.category!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/condition-category"))	
		XCTAssertEqual(inst!.certainty!.coding![0].code!, "17162000")	
		XCTAssertEqual(inst!.certainty!.coding![0].display!, "Certain")
		XCTAssertEqual(inst!.certainty!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "10001005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Bacterial sepsis")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2013-03-11")!)	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "281158006")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Pulmonary vascular structure")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2013-03-08")!)	
		XCTAssertEqual(inst!.relatedItem![0].type!, "due-to")	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "371924009")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Moderate to severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "confirmed")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>encounter</b>: Roel's encounter on March eleventh\n      </p>\n      <p>\n        <b>asserter</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>dateAsserted</b>: 11-Mar 2013\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 10001005}\">Bacterial sepsis</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 55607006}, {http://hl7.org/fhir/condition-category finding}\">Problem</span>\n      </p>\n      <p>\n        <b>status</b>: confirmed\n      </p>\n      <p>\n        <b>certainty</b>: \n        <span title=\"Codes: {http://snomed.info/sct 17162000}\">Certain</span>\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 371924009}\">Moderate to severe</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 8-Mar 2013\n      </p>\n      <h3>Evidences</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>Diagnostic report for Roel's sepsis</td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 281158006}\">Pulmonary vascular structure</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>RelatedItems</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Target</b>\n          </td>\n        </tr>\n        <tr>\n          <td>dueto</td>\n          <td> </td>\n          <td>Staphylococcus Aureus</td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition7() {
		let inst = instantiateFrom("condition-example-f204-renal.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
	
		XCTAssertEqual(inst!.abatementDate!, NSDate.dateFromISOString("2013-03-20")!)	
		XCTAssertEqual(inst!.category!.coding![0].code!, "55607006")	
		XCTAssertEqual(inst!.category!.coding![0].display!, "Problem")
		XCTAssertEqual(inst!.category!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.category!.coding![1].code!, "condition")
		XCTAssertEqual(inst!.category!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/condition-category"))	
		XCTAssertEqual(inst!.code!.coding![0].code!, "36225005")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Acute renal insufficiency specified as due to procedure")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2013-03-11")!)	
		XCTAssertEqual(inst!.location![0].code!.coding![0].code!, "181414000")	
		XCTAssertEqual(inst!.location![0].code!.coding![0].display!, "Kidney")
		XCTAssertEqual(inst!.location![0].code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.onsetDate!, NSDate.dateFromISOString("2013-03-11")!)	
		XCTAssertEqual(inst!.relatedItem![0].type!, "due-to")	
		XCTAssertEqual(inst!.severity!.coding![0].code!, "24484000")	
		XCTAssertEqual(inst!.severity!.coding![0].display!, "Severe")
		XCTAssertEqual(inst!.severity!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.stage!.summary!.coding![0].code!, "14803004")	
		XCTAssertEqual(inst!.stage!.summary!.coding![0].display!, "Temporary")
		XCTAssertEqual(inst!.stage!.summary!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "working")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>encounter</b>: Roel's encounter on March eleventh\n      </p>\n      <p>\n        <b>asserter</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>dateAsserted</b>: 11-Mar 2013\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 36225005}\">Acute renal insufficiency specified as due to procedure</span>\n      </p>\n      <p>\n        <b>category</b>: \n        <span title=\"Codes: {http://snomed.info/sct 55607006}, {http://hl7.org/fhir/condition-category condition}\">Problem</span>\n      </p>\n      <p>\n        <b>status</b>: working\n      </p>\n      <p>\n        <b>severity</b>: \n        <span title=\"Codes: {http://snomed.info/sct 24484000}\">Severe</span>\n      </p>\n      <p>\n        <b>onset[x]</b>: 11-Mar 2013\n      </p>\n      <p>\n        <b>abatement[x]</b>: 20-Mar 2013\n      </p>\n      <h3>Stages</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Summary</b>\n          </td>\n          <td>\n            <b>Assessment</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 14803004}\">Temporary</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>Locations</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Detail</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 181414000}\">Kidney</span>\n          </td>\n          <td> </td>\n        </tr>\n      </table>\n      <h3>RelatedItems</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Code</b>\n          </td>\n          <td>\n            <b>Target</b>\n          </td>\n        </tr>\n        <tr>\n          <td>dueto</td>\n          <td> </td>\n          <td>TPF chemotherapy for the sphenoid bone</td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testCondition8() {
		let inst = instantiateFrom("condition-example-f205-infection.json")
		XCTAssertNotNil(inst, "Must have instantiated a Condition instance")
		
		XCTAssertEqual(inst!.code!.coding![0].code!, "87628006")	
		XCTAssertEqual(inst!.code!.coding![0].display!, "Bacterial infectious disease")
		XCTAssertEqual(inst!.code!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.dateAsserted!, NSDate.dateFromISOString("2013-04-04")!)	
		XCTAssertEqual(inst!.status!, "working")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>asserter</b>: \n        <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n      </p>\n      <p>\n        <b>dateAsserted</b>: 4-Apr 2013\n      </p>\n      <p>\n        <b>code</b>: \n        <span title=\"Codes: {http://snomed.info/sct 87628006}\">Bacterial infectious disease</span>\n      </p>\n      <p>\n        <b>status</b>: working\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
