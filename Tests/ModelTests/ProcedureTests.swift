//
//  ProcedureTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProcedure = Models.Procedure
#else
import SwiftFHIR
typealias SwiftFHIRProcedure = SwiftFHIR.Procedure
#endif


class ProcedureTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProcedure {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProcedure {
		return try SwiftFHIRProcedure(json: json)
	}
	
	func testProcedure1() {
		do {
			let instance = try runProcedure1()
			try runProcedure1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-ambulation.json")
		
		XCTAssertEqual(inst.basedOn?[0].display, "Maternity care plan")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/preg")
		XCTAssertEqual(inst.code?.coding?[0].code, "62013009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ambulating patient (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Ambulation")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for hypertension during pregnancy")
		XCTAssertEqual(inst.id, "ambulation")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, true)
		XCTAssertEqual(inst.notDoneReason?.coding?[0].code, "398254007")
		XCTAssertEqual(inst.notDoneReason?.coding?[0].display, "  Pre-eclampsia (disorder)")
		XCTAssertEqual(inst.notDoneReason?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.notDoneReason?.text, "Pre-eclampsia")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Carla Espinosa")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f204")
		XCTAssertEqual(inst.performer?[0].onBehalfOf?.display, "University Medical Hospital")
		XCTAssertEqual(inst.performer?[0].onBehalfOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.reasonReference?[0].display, "Blood Pressure")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "suspended")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Ambulation procedure was not done</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure2() {
		do {
			let instance = try runProcedure2()
			try runProcedure2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-biopsy.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "368225008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Entire Left Forearm")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?[0].text, "Left forearm")
		XCTAssertEqual(inst.category?.coding?[0].code, "103693007")
		XCTAssertEqual(inst.category?.coding?[0].display, "Diagnostic procedure (procedure)")
		XCTAssertEqual(inst.category?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?.text, "Diagnostic procedure")
		XCTAssertEqual(inst.code?.coding?[0].code, "90105005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy of soft tissue of forearm (Procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Biopsy of suspected melanoma L) arm")
		XCTAssertEqual(inst.complication?[0].coding?[0].code, "67750007")
		XCTAssertEqual(inst.complication?[0].coding?[0].display, "Ineffective airway clearance (finding)")
		XCTAssertEqual(inst.complication?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.complication?[0].text, "Ineffective airway clearance")
		XCTAssertEqual(inst.followUp?[0].text, "Review in clinic")
		XCTAssertEqual(inst.id, "biopsy")
		XCTAssertEqual(inst.note?[0].text, "Standard Biopsy")
		XCTAssertEqual(inst.performedDateTime?.description, "2014-02-03")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Bert Biopser")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "Dark lesion l) forearm. getting darker last 3 months.")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Biopsy of suspected melanoma L) arm</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.usedCode?[0].coding?[0].code, "79068005")
		XCTAssertEqual(inst.usedCode?[0].coding?[0].display, "Needle, device (physical object)")
		XCTAssertEqual(inst.usedCode?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.usedCode?[0].text, "30-guage needle")
		
		return inst
	}
	
	func testProcedure3() {
		do {
			let instance = try runProcedure3()
			try runProcedure3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-colon-biopsy.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "76164006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy of colon (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Biopsy of colon")
		XCTAssertEqual(inst.id, "colon-biopsy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, false)
		XCTAssertEqual(inst.partOf?[0].display, "Colonoscopy")
		XCTAssertEqual(inst.partOf?[0].reference, "Procedure/colonoscopy")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Biopsy of colon, which was part of colonoscopy</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure4() {
		do {
			let instance = try runProcedure4()
			try runProcedure4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-colonoscopy.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "73761001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Colonoscopy (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Colonoscopy")
		XCTAssertEqual(inst.complicationDetail?[0].display, "Perforated intestine condition")
		XCTAssertEqual(inst.id, "colonoscopy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.location?.display, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notDone, false)
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Colonoscopy with complication</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.usedReference?[0].display, "Colonoscope device")
		
		return inst
	}
	
	func testProcedure5() {
		do {
			let instance = try runProcedure5()
			try runProcedure5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f001-heart.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "17401000")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Heart valve structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "34068001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Heart valve replacement")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f001")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.outcome?.text, "improved blood circulation")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2011-06-27")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2011-06-26")
		XCTAssertEqual(inst.performer?[0].actor?.display, "P. Voigt")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f002")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "Heart valve disorder")
		XCTAssertEqual(inst.report?[0].display, "Lab results blood test")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure6() {
		do {
			let instance = try runProcedure6()
			try runProcedure6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f002-lung.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "39607008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Lung structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "359615001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Partial lobectomy of lung")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f002")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.outcome?.text, "improved blood circulation")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-03-08T09:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-03-08T09:00:10+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "M.I.M. Versteegh")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f003")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "Malignant tumor of lung")
		XCTAssertEqual(inst.report?[0].display, "Lab results blood test")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure7() {
		do {
			let instance = try runProcedure7()
			try runProcedure7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f003-abscess.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "83030008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "172960003")
		XCTAssertEqual(inst.code?.coding?[0].display, "Incision of retropharyngeal abscess")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.outcome?.text, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-03-24T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-03-24T09:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "E.M.J.M. van den broek")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f001")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "abcess in retropharyngeal area")
		XCTAssertEqual(inst.report?[0].display, "Lab results blood test")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure8() {
		do {
			let instance = try runProcedure8()
			try runProcedure8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f004-tracheotomy.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "83030008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Retropharyngeal area")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "48387007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Tracheotomy")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.reference, "Encounter/f003")
		XCTAssertEqual(inst.followUp?[0].text, "described in care plan")
		XCTAssertEqual(inst.id, "f004")
		XCTAssertEqual(inst.outcome?.text, "removal of the retropharyngeal abscess")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-03-22T10:30:10+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-03-22T09:30:10+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "A. Langeveld")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f005")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "01.000")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Arts")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.performer?[0].role?.text, "Care role")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "ensure breathing during surgery")
		XCTAssertEqual(inst.report?[0].display, "???????????")
		XCTAssertEqual(inst.report?[0].reference, "DiagnosticReport/f001")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f001")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure9() {
		do {
			let instance = try runProcedure9()
			try runProcedure9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-f201-tpf.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "272676008")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Sphenoid bone")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "367336001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Chemotherapy")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.context?.display, "Roel's encounter on January 28th, 2013")
		XCTAssertEqual(inst.context?.reference, "Encounter/f202")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.note?[0].text, "Eerste neo-adjuvante TPF-kuur bij groot proces in sphenoid met intracraniale uitbreiding.")
		XCTAssertEqual(inst.performedPeriod?.end?.description, "2013-01-28T14:27:00+01:00")
		XCTAssertEqual(inst.performedPeriod?.start?.description, "2013-01-28T13:31:00+01:00")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dokter Bronsig")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].code, "310512001")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].display, "Medical oncologist")
		XCTAssertEqual(inst.performer?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "DiagnosticReport/f201")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedure10() {
		do {
			let instance = try runProcedure10()
			try runProcedure10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Procedure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedure10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedure-example-implant.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "25267002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Insertion of intracardiac pacemaker (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Implant Pacemaker")
		XCTAssertEqual(inst.focalDevice?[0].action?.coding?[0].code, "implanted")
		XCTAssertEqual(inst.focalDevice?[0].action?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/device-action")
		XCTAssertEqual(inst.focalDevice?[0].manipulated?.reference, "Device/example-pacemaker")
		XCTAssertEqual(inst.followUp?[0].text, "ROS 5 days  - 2013-04-10")
		XCTAssertEqual(inst.id, "example-implant")
		XCTAssertEqual(inst.note?[0].text, "Routine Appendectomy. Appendix was inflamed and in retro-caecal position")
		XCTAssertEqual(inst.performedDateTime?.description, "2015-04-05")
		XCTAssertEqual(inst.performer?[0].actor?.display, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCodeableConcept?[0].text, "Bradycardia")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
