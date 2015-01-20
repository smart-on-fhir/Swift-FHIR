//
//  ProcedureTests.swift
//  ProcedureTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

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
		let inst = instantiateFrom("procedure-example-biopsy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "368225008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Entire Left Forearm")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.bodySite![0].text!, "Left forearm")
		XCTAssertEqual(inst!.date!.start!.description, "2014-02-03")
		XCTAssertEqual(inst!.followUp!, "Review in clinic")
		XCTAssertEqual(inst!.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst!.notes!, "Standard Biopsy")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.performer![0].person!.display!, "Dr Bert Biopser")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "90105005")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.text!, "Biopsy of suspected melanoma L) arm")
	}
	
	func testProcedure2() {
		let inst = instantiateFrom("procedure-example-biopsy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "368225008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Entire Left Forearm")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.bodySite![0].text!, "Left forearm")
		XCTAssertEqual(inst!.date!.start!.description, "2014-02-03")
		XCTAssertEqual(inst!.followUp!, "Review in clinic")
		XCTAssertEqual(inst!.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst!.notes!, "Standard Biopsy")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.performer![0].person!.display!, "Dr Bert Biopser")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "90105005")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.text!, "Biopsy of suspected melanoma L) arm")
	}
	
	func testProcedure3() {
		let inst = instantiateFrom("procedure-example-biopsy.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "368225008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Entire Left Forearm")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.bodySite![0].text!, "Left forearm")
		XCTAssertEqual(inst!.date!.start!.description, "2014-02-03")
		XCTAssertEqual(inst!.followUp!, "Review in clinic")
		XCTAssertEqual(inst!.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst!.notes!, "Standard Biopsy")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.performer![0].person!.display!, "Dr Bert Biopser")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst!.type!.coding![0].code!, "90105005")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.type!.text!, "Biopsy of suspected melanoma L) arm")
	}
	
	func testProcedure4() {
		let inst = instantiateFrom("procedure-example-f001-heart.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "17401000")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Heart valve structure")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2011-06-27")
		XCTAssertEqual(inst!.date!.start!.description, "2011-06-26")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "Heart valve disorder")
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "P. Voigt")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "34068001")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure5() {
		let inst = instantiateFrom("procedure-example-f001-heart.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "17401000")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Heart valve structure")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2011-06-27")
		XCTAssertEqual(inst!.date!.start!.description, "2011-06-26")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "Heart valve disorder")
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "P. Voigt")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "34068001")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure6() {
		let inst = instantiateFrom("procedure-example-f002-lung.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "39607008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Lung structure")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst!.date!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "Malignant tumor of lung")
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "359615001")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure7() {
		let inst = instantiateFrom("procedure-example-f002-lung.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "39607008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Lung structure")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst!.date!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "Malignant tumor of lung")
		XCTAssertEqual(inst!.outcome!, "improved blood circulation")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "359615001")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure8() {
		let inst = instantiateFrom("procedure-example-f003-abscess.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "83030008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst!.date!.start!.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "abcess in retropharyngeal area")
		XCTAssertEqual(inst!.outcome!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "E.M.J.M. van den broek")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "172960003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure9() {
		let inst = instantiateFrom("procedure-example-f003-abscess.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "83030008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst!.date!.start!.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "abcess in retropharyngeal area")
		XCTAssertEqual(inst!.outcome!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "E.M.J.M. van den broek")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "172960003")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
	
	func testProcedure10() {
		let inst = instantiateFrom("procedure-example-f004-tracheotomy.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Procedure instance")
		
		XCTAssertEqual(inst!.bodySite![0].coding![0].code!, "83030008")
		XCTAssertEqual(inst!.bodySite![0].coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst!.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.date!.end!.description, "2013-03-22T10:30:10+01:00")
		XCTAssertEqual(inst!.date!.start!.description, "2013-03-22T09:30:10+01:00")
		XCTAssertEqual(inst!.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst!.followUp!, "described in care plan")
		XCTAssertEqual(inst!.indication![0].text!, "ensure breathing during surgery")
		XCTAssertEqual(inst!.outcome!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst!.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst!.performer![0].person!.display!, "A. Langeveld")
		XCTAssertEqual(inst!.performer![0].person!.reference!, "Practitioner/f005")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst!.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst!.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst!.report![0].display!, "???????????")
		XCTAssertEqual(inst!.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst!.type!.coding![0].code!, "48387007")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Tracheotomy")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
	}
}
