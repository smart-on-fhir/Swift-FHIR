//
//  ProcedureTests.swift
//  ProcedureTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class ProcedureTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Procedure? {
		let json = readJSONFile(filename)
		let instance = Procedure(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedure1() {
		let inst = instantiateFrom("procedure-example-biopsy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.followUp!, "Review in clinic")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>Biopsy of suspected melanoma L) arm</div>")	
		XCTAssertEqual(inst!.notes!, "Standard Biopsy")	
		XCTAssertEqual(inst!.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")	
		XCTAssertEqual(inst!.bodySite![0].text!, "Left forearm")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "368225008")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Entire Left Forearm")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2014-02-03")!)	
		XCTAssertEqual(inst!.type!.text!, "Biopsy of suspected melanoma L) arm")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "90105005")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
	}
	
	func testProcedure2() {
		let inst = instantiateFrom("procedure-example-f001-heart.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.followUp!, "described in care plan")	
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111"))	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 34068001}\">Heart valve replacement</span>\n      </p>\n      <p>\n        <b>bodySite</b>: \n        <span title=\"Codes: {http://snomed.info/sct 17401000}\">Heart valve structure</span>\n      </p>\n      <p>\n        <b>indication</b>: \n        <span title=\"Codes: \">Heart valve disorder</span>\n      </p>\n      <h3>Performers</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Person</b>\n          </td>\n          <td>\n            <b>Role</b>\n          </td>\n        </tr>\n        <tr>\n          <td>P. Voigt</td>\n          <td>\n            <span title=\"Codes: {urn:oid:2.16.840.1.113883.2.4.15.111 01.000}\">Care role</span>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>date</b>: 26-Jun 2011 --&gt; 27-Jun 2011\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f001-heart.html\">v1451 (official); finished; outpatient; Patient-initiated encounter; 140 min; Heart valve replacement; Non-urgent cardiological admission</a>\n      </p>\n      <p>\n        <b>outcome</b>: improved blood circulation\n      </p>\n      <p>\n        <b>report</b>: Lab results blood test\n      </p>\n      <p>\n        <b>followUp</b>: described in care plan\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.indication![0].text!, "Heart valve disorder")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "17401000")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Heart valve structure")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2011-06-26")!)	
		XCTAssertEqual(inst!.date!.end!, NSDate.dateFromISOString("2011-06-27")!)	
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "34068001")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Heart valve replacement")
	}
	
	func testProcedure3() {
		let inst = instantiateFrom("procedure-example-f002-lung.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.followUp!, "described in care plan")	
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111"))	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 359615001}\">Partial lobectomy of lung</span>\n      </p>\n      <p>\n        <b>bodySite</b>: \n        <span title=\"Codes: {http://snomed.info/sct 39607008}\">Lung structure</span>\n      </p>\n      <p>\n        <b>indication</b>: \n        <span title=\"Codes: \">Malignant tumor of lung</span>\n      </p>\n      <h3>Performers</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Person</b>\n          </td>\n          <td>\n            <b>Role</b>\n          </td>\n        </tr>\n        <tr>\n          <td>M.I.M. Versteegh</td>\n          <td>\n            <span title=\"Codes: {urn:oid:2.16.840.1.113883.2.4.15.111 01.000}\">Care role</span>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>date</b>: 8-Mar 2013 9:0 --&gt; 8-Mar 2013 9:30\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f002-lung.html\">v3251 (official); finished; outpatient; Patient-initiated encounter; 140 min; Partial lobectomy of lung; Urgent</a>\n      </p>\n      <p>\n        <b>outcome</b>: improved blood circulation\n      </p>\n      <p>\n        <b>report</b>: Lab results blood test\n      </p>\n      <p>\n        <b>followUp</b>: described in care plan\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.indication![0].text!, "Malignant tumor of lung")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "39607008")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Lung structure")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2013-03-08T09:00:10+01:00")!)	
		XCTAssertEqual(inst!.date!.end!, NSDate.dateFromISOString("2013-03-08T09:30:10+01:00")!)	
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "359615001")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Partial lobectomy of lung")
	}
	
	func testProcedure4() {
		let inst = instantiateFrom("procedure-example-f003-abscess.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.followUp!, "described in care plan")	
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111"))	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 172960003}\">Incision of retropharyngeal abscess</span>\n      </p>\n      <p>\n        <b>bodySite</b>: \n        <span title=\"Codes: {http://snomed.info/sct 83030008}\">Retropharyngeal area</span>\n      </p>\n      <p>\n        <b>indication</b>: \n        <span title=\"Codes: \">abcess in retropharyngeal area</span>\n      </p>\n      <h3>Performers</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Person</b>\n          </td>\n          <td>\n            <b>Role</b>\n          </td>\n        </tr>\n        <tr>\n          <td>E.M.J.M. van den broek</td>\n          <td>\n            <span title=\"Codes: {urn:oid:2.16.840.1.113883.2.4.15.111 01.000}\">Care role</span>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>date</b>: 24-Mar 2013 9:30 --&gt; 24-Mar 2013 10:30\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f003-abscess.html\">v6751 (official); finished; outpatient; Patient-initiated encounter; 90 min; Retropharyngeal abscess; Non-urgent ear, nose and throat admission</a>\n      </p>\n      <p>\n        <b>outcome</b>: removal of the retropharyngeal abscess\n      </p>\n      <p>\n        <b>report</b>: Lab results blood test\n      </p>\n      <p>\n        <b>followUp</b>: described in care plan\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.indication![0].text!, "abcess in retropharyngeal area")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "83030008")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Retropharyngeal area")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2013-03-24T09:30:10+01:00")!)	
		XCTAssertEqual(inst!.date!.end!, NSDate.dateFromISOString("2013-03-24T10:30:10+01:00")!)	
		XCTAssertEqual(inst!.outcome!, "removal of the retropharyngeal abscess")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "172960003")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Incision of retropharyngeal abscess")
	}
	
	func testProcedure5() {
		let inst = instantiateFrom("procedure-example-f004-tracheotomy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.followUp!, "described in care plan")	
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111"))	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: P. van de Heuvel\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 48387007}\">Tracheotomy</span>\n      </p>\n      <p>\n        <b>bodySite</b>: \n        <span title=\"Codes: {http://snomed.info/sct 83030008}\">Retropharyngeal area</span>\n      </p>\n      <p>\n        <b>indication</b>: \n        <span title=\"Codes: \">ensure breathing during surgery</span>\n      </p>\n      <h3>Performers</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Person</b>\n          </td>\n          <td>\n            <b>Role</b>\n          </td>\n        </tr>\n        <tr>\n          <td>A. Langeveld</td>\n          <td>\n            <span title=\"Codes: {urn:oid:2.16.840.1.113883.2.4.15.111 01.000}\">Care role</span>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>date</b>: 22-Mar 2013 9:30 --&gt; 22-Mar 2013 10:30\n      </p>\n      <p>\n        <b>encounter</b>: \n        <a href=\"encounter-example-f003-abscess.html\">v6751 (official); finished; outpatient; Patient-initiated encounter; 90 min; Retropharyngeal abscess; Non-urgent ear, nose and throat admission</a>\n      </p>\n      <p>\n        <b>outcome</b>: removal of the retropharyngeal abscess\n      </p>\n      <p>\n        <b>report</b>: ???????????\n      </p>\n      <p>\n        <b>followUp</b>: described in care plan\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.indication![0].text!, "ensure breathing during surgery")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "83030008")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Retropharyngeal area")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2013-03-22T09:30:10+01:00")!)	
		XCTAssertEqual(inst!.date!.end!, NSDate.dateFromISOString("2013-03-22T10:30:10+01:00")!)	
		XCTAssertEqual(inst!.outcome!, "removal of the retropharyngeal abscess")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "48387007")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Tracheotomy")
	}
	
	func testProcedure6() {
		let inst = instantiateFrom("procedure-example-f201-tpf.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "310512001")	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Medical oncologist")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>subject</b>: Roel\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 367336001}\">Chemotherapy</span>\n      </p>\n      <p>\n        <b>bodySite</b>: \n        <span title=\"Codes: {http://snomed.info/sct 272676008}\">Sphenoid bone</span>\n      </p>\n      <p>\n        <b>indication</b>: \n        <span title=\"Codes: \">DiagnosticReport/f201</span>\n      </p>\n      <h3>Performers</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Person</b>\n          </td>\n          <td>\n            <b>Role</b>\n          </td>\n        </tr>\n        <tr>\n          <td>Dokter Bronsig</td>\n          <td>\n            <span title=\"Codes: {http://snomed.info/sct 310512001}\">Medical oncologist</span>\n          </td>\n        </tr>\n      </table>\n      <p>\n        <b>date</b>: 28-Jan 2013 13:31 --&gt; 28-Jan 2013 14:27\n      </p>\n      <p>\n        <b>encounter</b>: Roel's encounter on January 28th, 2013\n      </p>\n      <p>\n        <b>notes</b>: Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.notes!, "Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.")	
		XCTAssertEqual(inst!.indication![0].text!, "DiagnosticReport/f201")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "272676008")	
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Sphenoid bone")	
		XCTAssertEqual(inst!.date!.start!, NSDate.dateFromISOString("2013-01-28T13:31:00+01:00")!)	
		XCTAssertEqual(inst!.date!.end!, NSDate.dateFromISOString("2013-01-28T14:27:00+01:00")!)	
		XCTAssertEqual(inst!.type!.coding![0].code!, "367336001")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Chemotherapy")
	}
}
