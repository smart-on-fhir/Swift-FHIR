//
//  ProcedureTests.swift
//  ProcedureTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProcedureTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Procedure {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Procedure {
		let instance = Procedure(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedure1() {
		let instance = testProcedure1_impl()
		testProcedure1_impl(json: instance.asJSON())
	}
	
	func testProcedure1_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-biopsy.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "368225008")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Entire Left Forearm")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite![0].text!, "Left forearm")
		XCTAssertEqual(inst.date!.start!.description, "2014-02-03")
		XCTAssertEqual(inst.followUp!, "Review in clinic")
		XCTAssertEqual(inst.id!, "biopsy")
		XCTAssertEqual(inst.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst.notes!, "Standard Biopsy")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Bert Biopser")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.text!.div!, "<div>Biopsy of suspected melanoma L) arm</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "90105005")
		XCTAssertEqual(inst.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Biopsy of suspected melanoma L) arm")
		
		return inst
	}
	
	func testProcedure2() {
		let instance = testProcedure2_impl()
		testProcedure2_impl(json: instance.asJSON())
	}
	
	func testProcedure2_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-f001-heart.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "17401000")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Heart valve structure")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.date!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.date!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.followUp!, "described in care plan")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.indication![0].text!, "Heart valve disorder")
		XCTAssertEqual(inst.outcome!, "improved blood circulation")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performer![0].person!.display!, "P. Voigt")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "34068001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure3() {
		let instance = testProcedure3_impl()
		testProcedure3_impl(json: instance.asJSON())
	}
	
	func testProcedure3_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-f002-lung.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "39607008")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Lung structure")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.date!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.date!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.followUp!, "described in care plan")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.indication![0].text!, "Malignant tumor of lung")
		XCTAssertEqual(inst.outcome!, "improved blood circulation")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performer![0].person!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure4() {
		let instance = testProcedure4_impl()
		testProcedure4_impl(json: instance.asJSON())
	}
	
	func testProcedure4_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-f003-abscess.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "83030008")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.date!.end!.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst.date!.start!.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.followUp!, "described in care plan")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.indication![0].text!, "abcess in retropharyngeal area")
		XCTAssertEqual(inst.outcome!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performer![0].person!.display!, "E.M.J.M. van den broek")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure5() {
		let instance = testProcedure5_impl()
		testProcedure5_impl(json: instance.asJSON())
	}
	
	func testProcedure5_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-f004-tracheotomy.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "83030008")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.date!.end!.description, "2013-03-22T10:30:10+01:00")
		XCTAssertEqual(inst.date!.start!.description, "2013-03-22T09:30:10+01:00")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.followUp!, "described in care plan")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertEqual(inst.indication![0].text!, "ensure breathing during surgery")
		XCTAssertEqual(inst.outcome!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performer![0].person!.display!, "A. Langeveld")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f005")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "???????????")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "48387007")
		XCTAssertEqual(inst.type!.coding![0].display!, "Tracheotomy")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure6() {
		let instance = testProcedure6_impl()
		testProcedure6_impl(json: instance.asJSON())
	}
	
	func testProcedure6_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example-f201-tpf.json")
		
		XCTAssertEqual(inst.bodySite![0].coding![0].code!, "272676008")
		XCTAssertEqual(inst.bodySite![0].coding![0].display!, "Sphenoid bone")
		XCTAssertEqual(inst.bodySite![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.date!.end!.description, "2013-01-28T14:27:00+01:00")
		XCTAssertEqual(inst.date!.start!.description, "2013-01-28T13:31:00+01:00")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on January 28th, 2013")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f202")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.indication![0].text!, "DiagnosticReport/f201")
		XCTAssertEqual(inst.notes!, "Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "310512001")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Medical oncologist")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "367336001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure7() {
		let instance = testProcedure7_impl()
		testProcedure7_impl(json: instance.asJSON())
	}
	
	func testProcedure7_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-example.json")
		
		XCTAssertEqual(inst.date!.start!.description, "2013-04-05")
		XCTAssertEqual(inst.followUp!, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indication![0].text!, "Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding")
		XCTAssertEqual(inst.notes!, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.text!.div!, "<div>Routine Appendectomy</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "80146002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Appendectomy")
		
		return inst
	}
	
	func testProcedure8() {
		let instance = testProcedure8_impl()
		testProcedure8_impl(json: instance.asJSON())
	}
	
	func testProcedure8_impl(json: JSONDictionary? = nil) -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "procedure-qicore-example.json")
		
		XCTAssertEqual(inst.date!.start!.description, "2013-04-05")
		XCTAssertEqual(inst.followUp!, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.indication![0].text!, "Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding")
		XCTAssertEqual(inst.notes!, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.text!.div!, "<div>Routine Appendectomy</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "80146002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Appendectomy")
		
		return inst
	}
}
