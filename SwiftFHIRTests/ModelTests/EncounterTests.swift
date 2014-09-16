//
//  EncounterTests.swift
//  EncounterTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-09-16.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class EncounterTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Encounter? {
		let json = readJSONFile(filename)
		let instance = Encounter(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEncounter1() {
		let inst = instantiateFrom("encounter-example-f001-heart.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
	
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.end!, NSDate.dateFromISOString("2011-07-01")!)
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.start!, NSDate.dateFromISOString("2011-06-26")!)	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].code!, "305956004")	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].display!, "Referral by physician")
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.hospitalization!.period!.end!, NSDate.dateFromISOString("2011-06-30")!)
		XCTAssertEqual(inst!.hospitalization!.period!.start!, NSDate.dateFromISOString("2011-06-26")!)
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.system!, NSURL(string: "http://www.amc.nl/zorgportal/identifiers/pre-admissions"))	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.use!, "official")	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.value!, "93042")
		XCTAssertFalse(inst!.hospitalization!.reAdmission!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.amc.nl/zorgportal/identifiers/visits"))	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "v1451")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "310361003")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Non-urgent cardiological admission")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.coding![0].code!, "34068001")	
		XCTAssertEqual(inst!.reason!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst!.reason!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: v1451 (official)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: outpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 270427003}\">Patient-initiated encounter</span>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>P. Voigt</td>\n        </tr>\n      </table>\n      <p>\n        <b>length</b>: 140 min\n      </p>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: {http://snomed.info/sct 34068001}\">Heart valve replacement</span>\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 310361003}\">Non-urgent cardiological admission</span>\n      </p>\n      <blockquote>\n        <p>\n          <b>hospitalization</b>\n        </p>\n        <p>\n          <b>preAdmissionIdentifier</b>: 93042 (official)\n        </p>\n        <p>\n          <b>admitSource</b>: \n          <span title=\"Codes: {http://snomed.info/sct 305956004}\">Referral by physician</span>\n        </p>\n        <p>\n          <b>period</b>: 26-Jun 2011 --&gt; 30-Jun 2011\n        </p>\n        <h3>Accomodations</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Bed</b>\n            </td>\n            <td>\n              <b>Period</b>\n            </td>\n          </tr>\n          <tr>\n            <td> </td>\n            <td>26-Jun 2011 --&gt; 1-Jul 2011</td>\n          </tr>\n        </table>\n        <p>\n          <b>dischargeDisposition</b>: \n          <span title=\"Codes: {http://snomed.info/sct 306689006}\">Discharge to home</span>\n        </p>\n        <p>\n          <b>reAdmission</b>: false\n        </p>\n      </blockquote>\n      <p>\n        <b>serviceProvider</b>: Burgers University Medical Center\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "270427003")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testEncounter2() {
		let inst = instantiateFrom("encounter-example-f002-lung.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
	
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.end!, NSDate.dateFromISOString("2012-07-13")!)
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.start!, NSDate.dateFromISOString("2012-07-06")!)	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].code!, "305997006")	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].display!, "Referral by radiologist")
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.hospitalization!.period!.end!, NSDate.dateFromISOString("2012-07-13")!)
		XCTAssertEqual(inst!.hospitalization!.period!.start!, NSDate.dateFromISOString("2012-07-06")!)
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/pre-admissions"))	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.use!, "official")	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.value!, "98682")
		XCTAssertFalse(inst!.hospitalization!.reAdmission!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/encounters"))	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "v3251")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "103391001")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Urgent")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.coding![0].code!, "34068001")	
		XCTAssertEqual(inst!.reason!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst!.reason!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: v3251 (official)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: outpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 270427003}\">Patient-initiated encounter</span>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>M.I.M Versteegh</td>\n        </tr>\n      </table>\n      <p>\n        <b>length</b>: 140 min\n      </p>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: {http://snomed.info/sct 34068001}\">Partial lobectomy of lung</span>\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 103391001}\">Urgent</span>\n      </p>\n      <blockquote>\n        <p>\n          <b>hospitalization</b>\n        </p>\n        <p>\n          <b>preAdmissionIdentifier</b>: 98682 (official)\n        </p>\n        <p>\n          <b>admitSource</b>: \n          <span title=\"Codes: {http://snomed.info/sct 305997006}\">Referral by radiologist</span>\n        </p>\n        <p>\n          <b>period</b>: 6-Jul 2012 --&gt; 13-Jul 2012\n        </p>\n        <h3>Accomodations</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Bed</b>\n            </td>\n            <td>\n              <b>Period</b>\n            </td>\n          </tr>\n          <tr>\n            <td> </td>\n            <td>6-Jul 2012 --&gt; 13-Jul 2012</td>\n          </tr>\n        </table>\n        <p>\n          <b>dischargeDisposition</b>: \n          <span title=\"Codes: {http://snomed.info/sct 306689006}\">Discharge to home</span>\n        </p>\n        <p>\n          <b>reAdmission</b>: false\n        </p>\n      </blockquote>\n      <p>\n        <b>serviceProvider</b>: BMC\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "270427003")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testEncounter3() {
		let inst = instantiateFrom("encounter-example-f003-abscess.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
	
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.end!, NSDate.dateFromISOString("2011-07-01")!)
		XCTAssertEqual(inst!.hospitalization!.accomodation![0].period!.start!, NSDate.dateFromISOString("2011-06-26")!)	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].code!, "305956004")	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].display!, "Referral by physician")
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].code!, "306689006")	
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].display!, "Discharge to home")
		XCTAssertEqual(inst!.hospitalization!.dischargeDisposition!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.hospitalization!.period!.end!, NSDate.dateFromISOString("2011-06-30")!)
		XCTAssertEqual(inst!.hospitalization!.period!.start!, NSDate.dateFromISOString("2011-06-26")!)
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/pre-admissions"))	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.use!, "official")	
		XCTAssertEqual(inst!.hospitalization!.preAdmissionIdentifier!.value!, "93042")
		XCTAssertFalse(inst!.hospitalization!.reAdmission!)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.bmc.nl/zorgportal/identifiers/encounters"))	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "v6751")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "103391001")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Non-urgent ear, nose and throat admission")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.coding![0].code!, "18099001")	
		XCTAssertEqual(inst!.reason!.coding![0].display!, "Retropharyngeal abscess")
		XCTAssertEqual(inst!.reason!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: v6751 (official)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: outpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 270427003}\">Patient-initiated encounter</span>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>E.M. van den Broek</td>\n        </tr>\n      </table>\n      <p>\n        <b>length</b>: 90 min\n      </p>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: {http://snomed.info/sct 18099001}\">Retropharyngeal abscess</span>\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 103391001}\">Non-urgent ear, nose and throat admission</span>\n      </p>\n      <blockquote>\n        <p>\n          <b>hospitalization</b>\n        </p>\n        <p>\n          <b>preAdmissionIdentifier</b>: 93042 (official)\n        </p>\n        <p>\n          <b>admitSource</b>: \n          <span title=\"Codes: {http://snomed.info/sct 305956004}\">Referral by physician</span>\n        </p>\n        <p>\n          <b>period</b>: 26-Jun 2011 --&gt; 30-Jun 2011\n        </p>\n        <h3>Accomodations</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Bed</b>\n            </td>\n            <td>\n              <b>Period</b>\n            </td>\n          </tr>\n          <tr>\n            <td> </td>\n            <td>26-Jun 2011 --&gt; 1-Jul 2011</td>\n          </tr>\n        </table>\n        <p>\n          <b>dischargeDisposition</b>: \n          <span title=\"Codes: {http://snomed.info/sct 306689006}\">Discharge to home</span>\n        </p>\n        <p>\n          <b>reAdmission</b>: false\n        </p>\n      </blockquote>\n      <p>\n        <b>serviceProvider</b>: \n        <a href=\"organization-example-f001-burgers.html\">91654 (official), 17-0112278 (usual); name: Burgers University Medical Center; University Medical Hospital</a>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "270427003")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Patient-initiated encounter")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testEncounter4() {
		let inst = instantiateFrom("encounter-example-f201-20130404.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
		
		XCTAssertEqual(inst!.identifier![0].label!, "Roel's encounter on April fourth 2013")	
		XCTAssertEqual(inst!.identifier![0].use!, "temp")	
		XCTAssertEqual(inst!.identifier![0].value!, "Encounter_Roel_20130404")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "17621005")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Normal")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.text!, "The patient had fever peaks over the last couple of days. He is worried about these peaks.")	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: Roel's encounter on April fourth 2013 = Encounter_Roel_20130404 (temp)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: outpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 11429006}\">Consultation</span>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>\n            <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: \">The patient had fever peaks over the last couple of days. He is worried about these peaks.</span>\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 17621005}\">Normal</span>\n      </p>\n      <p>\n        <b>serviceProvider</b>: \n        <a href=\"organization-example-f201-aumc.html\">Zorginstelling naam = Artis University Medical Center (official); name: Artis University Medical Center (AUMC); Academic Medical Center; active</a>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "11429006")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Consultation")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testEncounter5() {
		let inst = instantiateFrom("encounter-example-f202-20130128.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
		
		XCTAssertEqual(inst!.identifier![0].label!, "Roel's encounter on January 28th, 2013")	
		XCTAssertEqual(inst!.identifier![0].use!, "temp")	
		XCTAssertEqual(inst!.identifier![0].value!, "Encounter_Roel_20130128")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "103391001")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Urgent")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.text!, "The patient is treated for a tumor.")	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: Roel's encounter on January 28th, 2013 = Encounter_Roel_20130128 (temp)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: outpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 367336001}\">Chemotherapy</span>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>\n            <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>length</b>: 56 minutes\n      </p>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: \">The patient is treated for a tumor.</span>\n      </p>\n      <p>\n        <b>indication</b>: Roel's TPF chemotherapy on January 28th, 2013\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 103391001}\">Urgent</span>\n      </p>\n      <p>\n        <b>serviceProvider</b>: \n        <a href=\"organization-example-f201-aumc.html\">Zorginstelling naam = Artis University Medical Center (official); name: Artis University Medical Center (AUMC); Academic Medical Center; active</a>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "367336001")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
	
	func testEncounter6() {
		let inst = instantiateFrom("encounter-example-f203-20130311.json")
		XCTAssertNotNil(inst, "Must have instantiated a Encounter instance")
		
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].code!, "309902002")	
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].display!, "Clinical Oncology Department")
		XCTAssertEqual(inst!.hospitalization!.admitSource!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.hospitalization!.diet!.coding![0].code!, "276026009")	
		XCTAssertEqual(inst!.hospitalization!.diet!.coding![0].display!, "Fluid balance regulation")
		XCTAssertEqual(inst!.hospitalization!.diet!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))
		XCTAssertEqual(inst!.hospitalization!.period!.end!, NSDate.dateFromISOString("2013-03-20")!)
		XCTAssertEqual(inst!.hospitalization!.period!.start!, NSDate.dateFromISOString("2013-03-11")!)
		XCTAssertFalse(inst!.hospitalization!.reAdmission!)	
		XCTAssertEqual(inst!.identifier![0].label!, "Roel's encounter on March eleventh 2013")	
		XCTAssertEqual(inst!.identifier![0].use!, "temp")	
		XCTAssertEqual(inst!.identifier![0].value!, "Encounter_Roel_20130311")	
		XCTAssertEqual(inst!.priority!.coding![0].code!, "394849002")	
		XCTAssertEqual(inst!.priority!.coding![0].display!, "High priority")
		XCTAssertEqual(inst!.priority!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.reason!.text!, "The patient seems to suffer from bilateral pneumonia and renal insufficiency, most likely due to chemotherapy.")	
		XCTAssertEqual(inst!.status!, "finished")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: Roel's encounter on March eleventh 2013 = Encounter_Roel_20130311 (temp)\n      </p>\n      <p>\n        <b>status</b>: finished\n      </p>\n      <p>\n        <b>class</b>: inpatient\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 183807002}\">Inpatient stay for nine days</span>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <h3>Participants</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Individual</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>\n            <a href=\"practitioner-example-f201-ab.html\">UZI-nummer = 12345678901 (official); Dokter Bronsig(official); Male; birthDate: 24-Dec 1956; Implementation of planned interventions; Medical oncologist</a>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>reason</b>: \n        <span title=\"Codes: \">The patient seems to suffer from bilateral pneumonia and renal insufficiency, most likely due to chemotherapy.</span>\n      </p>\n      <p>\n        <b>priority</b>: \n        <span title=\"Codes: {http://snomed.info/sct 394849002}\">High priority</span>\n      </p>\n      <blockquote>\n        <p>\n          <b>hospitalization</b>\n        </p>\n        <p>\n          <b>admitSource</b>: \n          <span title=\"Codes: {http://snomed.info/sct 309902002}\">Clinical Oncology Department</span>\n        </p>\n        <p>\n          <b>period</b>: 11-Mar 2013 --&gt; 20-Mar 2013\n        </p>\n        <p>\n          <b>diet</b>: \n          <span title=\"Codes: {http://snomed.info/sct 276026009}\">Fluid balance regulation</span>\n        </p>\n        <p>\n          <b>reAdmission</b>: false\n        </p>\n      </blockquote>\n      <p>\n        <b>serviceProvider</b>: \n        <a href=\"organization-example-f201-aumc.html\">Zorginstelling naam = Artis University Medical Center (official); name: Artis University Medical Center (AUMC); Academic Medical Center; active</a>\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type![0].coding![0].code!, "183807002")	
		XCTAssertEqual(inst!.type![0].coding![0].display!, "Inpatient stay for nine days")
		XCTAssertEqual(inst!.type![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))
	}
}
