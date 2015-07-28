//
//  ProcedureTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProcedureTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Procedure {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Procedure {
		let instance = Procedure(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProcedure1() throws {
		let instance = try runProcedure1()
		try runProcedure1(instance.asJSON())
	}
	
	func runProcedure1(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-biopsy.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "368225008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Entire Left Forearm")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.text!, "Left forearm")
		XCTAssertEqual(inst.followUp![0].text!, "Review in clinic")
		XCTAssertEqual(inst.id!, "biopsy")
		XCTAssertEqual(inst.indication![0].text!, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst.notes!, "Standard Biopsy")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performedDateTime!.description, "2014-02-03")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Bert Biopser")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.div!, "<div>Biopsy of suspected melanoma L) arm</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "90105005")
		XCTAssertEqual(inst.type!.coding![0].display!, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Biopsy of suspected melanoma L) arm")
		
		return inst
	}
	
	func testProcedure2() throws {
		let instance = try runProcedure2()
		try runProcedure2(instance.asJSON())
	}
	
	func runProcedure2(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f001-heart.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "17401000")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Heart valve structure")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f001")
		XCTAssertEqual(inst.followUp![0].text!, "described in care plan")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.indication![0].text!, "Heart valve disorder")
		XCTAssertEqual(inst.outcome!.text!, "improved blood circulation")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2011-06-27")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2011-06-26")
		XCTAssertEqual(inst.performer![0].person!.display!, "P. Voigt")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f002")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "34068001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Heart valve replacement")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure3() throws {
		let instance = try runProcedure3()
		try runProcedure3(instance.asJSON())
	}
	
	func runProcedure3(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f002-lung.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "39607008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Lung structure")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f002")
		XCTAssertEqual(inst.followUp![0].text!, "described in care plan")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.indication![0].text!, "Malignant tumor of lung")
		XCTAssertEqual(inst.outcome!.text!, "improved blood circulation")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.performer![0].person!.display!, "M.I.M. Versteegh")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f003")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "359615001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Partial lobectomy of lung")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure4() throws {
		let instance = try runProcedure4()
		try runProcedure4(instance.asJSON())
	}
	
	func runProcedure4(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f003-abscess.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "83030008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.followUp![0].text!, "described in care plan")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.indication![0].text!, "abcess in retropharyngeal area")
		XCTAssertEqual(inst.outcome!.text!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst.performer![0].person!.display!, "E.M.J.M. van den broek")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f001")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "Lab results blood test")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "172960003")
		XCTAssertEqual(inst.type!.coding![0].display!, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure5() throws {
		let instance = try runProcedure5()
		try runProcedure5(instance.asJSON())
	}
	
	func runProcedure5(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f004-tracheotomy.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "83030008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f003")
		XCTAssertEqual(inst.followUp![0].text!, "described in care plan")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertEqual(inst.indication![0].text!, "ensure breathing during surgery")
		XCTAssertEqual(inst.outcome!.text!, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.patient!.display!, "P. van de Heuvel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2013-03-22T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2013-03-22T09:30:10+01:00")
		XCTAssertEqual(inst.performer![0].person!.display!, "A. Langeveld")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f005")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer![0].role!.text!, "Care role")
		XCTAssertEqual(inst.report![0].display!, "???????????")
		XCTAssertEqual(inst.report![0].reference!, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "48387007")
		XCTAssertEqual(inst.type!.coding![0].display!, "Tracheotomy")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure6() throws {
		let instance = try runProcedure6()
		try runProcedure6(instance.asJSON())
	}
	
	func runProcedure6(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f201-tpf.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "272676008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Sphenoid bone")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.display!, "Roel's encounter on January 28th, 2013")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/f202")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.indication![0].text!, "DiagnosticReport/f201")
		XCTAssertEqual(inst.notes!, "Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.")
		XCTAssertEqual(inst.patient!.display!, "Roel")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2013-01-28T14:27:00+01:00")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2013-01-28T13:31:00+01:00")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dokter Bronsig")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/f201")
		XCTAssertEqual(inst.performer![0].role!.coding![0].code!, "310512001")
		XCTAssertEqual(inst.performer![0].role!.coding![0].display!, "Medical oncologist")
		XCTAssertEqual(inst.performer![0].role!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "367336001")
		XCTAssertEqual(inst.type!.coding![0].display!, "Chemotherapy")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testProcedure7() throws {
		let instance = try runProcedure7()
		try runProcedure7(instance.asJSON())
	}
	
	func runProcedure7(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-implant.json")
		
		XCTAssertEqual(inst.device![0].action!.coding![0].code!, "implanted")
		XCTAssertEqual(inst.device![0].action!.coding![0].system!.absoluteString, "http://hl7.org/fhir/device-action")
		XCTAssertEqual(inst.device![0].manipulated!.reference!, "Device/example-pacemaker")
		XCTAssertEqual(inst.followUp![0].text!, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id!, "example-implant")
		XCTAssertEqual(inst.indication![0].text!, "Bradycardia")
		XCTAssertEqual(inst.notes!, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performedDateTime!.description, "2015-04-05")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "25267002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Insertion of intracardiac pacemaker (procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Implant Pacemaker")
		
		return inst
	}
	
	func testProcedure8() throws {
		let instance = try runProcedure8()
		try runProcedure8(instance.asJSON())
	}
	
	func runProcedure8(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example.json")
		
		XCTAssertEqual(inst.followUp![0].text!, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indication![0].text!, "Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding")
		XCTAssertEqual(inst.notes!, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performedDateTime!.description, "2013-04-05")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.div!, "<div>Routine Appendectomy</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "80146002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Appendectomy")
		
		return inst
	}
	
	func testProcedure9() throws {
		let instance = try runProcedure9()
		try runProcedure9(instance.asJSON())
	}
	
	func runProcedure9(json: FHIRJSON? = nil) throws -> Procedure {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-qicore-example.json")
		
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].code!, "66754008")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].display!, "Appendix structure")
		XCTAssertEqual(inst.bodySite![0].siteCodeableConcept!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.encounter!.reference!, "Encounter/example")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/procedure-approachBodySite")
		XCTAssertEqual(inst.extension_fhir![0].valueReference!.reference!, "BodySite/example")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime")
		XCTAssertEqual(inst.extension_fhir![1].valueDateTime!.description, "2013-04-05T09:30:00-04:00")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.indication![0].coding![0].code!, "163220003")
		XCTAssertEqual(inst.indication![0].coding![0].display!, "On examination - abdominal pain - right iliac")
		XCTAssertEqual(inst.indication![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.performedPeriod!.end!.description, "2013-04-05T10:30:00-04:00")
		XCTAssertEqual(inst.performedPeriod!.start!.description, "2013-04-05T09:20:00-04:00")
		XCTAssertEqual(inst.performer![0].person!.display!, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer![0].person!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "80146002")
		XCTAssertEqual(inst.type!.coding![0].display!, "Appendectomy (Procedure)")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.text!, "Appendectomy")
		
		return inst
	}
}
