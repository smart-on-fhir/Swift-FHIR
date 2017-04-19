//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProcedureRequest = Models.ProcedureRequest
#else
import SwiftFHIR
typealias SwiftFHIRProcedureRequest = SwiftFHIR.ProcedureRequest
#endif


class ProcedureRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProcedureRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProcedureRequest {
		return try SwiftFHIRProcedureRequest(json: json)
	}
	
	func testProcedureRequest1() {
		do {
			let instance = try runProcedureRequest1()
			try runProcedureRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-ambulation.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.basedOn?[0].display, "Maternity care plan")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/preg")
		XCTAssertEqual(inst.code?.coding?[0].code, "62013009")
		XCTAssertEqual(inst.code?.coding?[0].display, "Ambulating patient (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Ambulation")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for hypertension during pregnancy")
		XCTAssertEqual(inst.id, "ambulation")
		XCTAssertEqual(inst.identifier?[0].value, "45678")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Blood Pressure")
		XCTAssertEqual(inst.reasonReference?[0].reference, "Observation/blood-pressure")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest2() {
		do {
			let instance = try runProcedureRequest2()
			try runProcedureRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-appendectomy.json")
		
		XCTAssertEqual(inst.code?.text, "Appendectomy")
		XCTAssertEqual(inst.id, "appendectomy-narrative")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Paula Patient")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		
		return inst
	}
	
	func testProcedureRequest3() {
		do {
			let instance = try runProcedureRequest3()
			try runProcedureRequest3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-colonoscopy-bx.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.code?.coding?[0].code, "76164006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Biopsy of colon (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Biopsy of colon")
		XCTAssertEqual(inst.id, "colon-biopsy")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.performer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.requisition?.system?.absoluteString, "http://bumc.org/requisitions")
		XCTAssertEqual(inst.requisition?.value, "req12345")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest4() {
		do {
			let instance = try runProcedureRequest4()
			try runProcedureRequest4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-colonoscopy.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-03-05")
		XCTAssertEqual(inst.code?.coding?[0].code, "73761001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Colonoscopy (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Colonoscopy")
		XCTAssertEqual(inst.id, "colonoscopy")
		XCTAssertEqual(inst.identifier?[0].value, "45678")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.performer?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.requisition?.system?.absoluteString, "http://bumc.org/requisitions")
		XCTAssertEqual(inst.requisition?.value, "req12345")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest5() {
		do {
			let instance = try runProcedureRequest5()
			try runProcedureRequest5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-di.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "24627-2")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Chest CT")
		XCTAssertEqual(inst.id, "di")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for metastatic disease")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/dicom")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest6() {
		do {
			let instance = try runProcedureRequest6()
			try runProcedureRequest6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-edu.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-08-16")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "311401005")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Patient education (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Education")
		XCTAssertEqual(inst.code?.coding?[0].code, "48023004")
		XCTAssertEqual(inst.code?.coding?[0].display, "Breast self-examination technique education (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Health education - breast examination")
		XCTAssertEqual(inst.id, "education")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-08-16")
		XCTAssertEqual(inst.performer?.display, "Pamela Educator, RN")
		XCTAssertEqual(inst.reasonCode?[0].text, "early detection of breast mass")
		XCTAssertEqual(inst.requester?.agent?.display, "Angela Care, MD")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Jane Doe")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest7() {
		do {
			let instance = try runProcedureRequest7()
			try runProcedureRequest7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-ft4.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "3024-7")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Free T4")
		XCTAssertEqual(inst.id, "ft4")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "reflex-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2015-08-27T09:33:27+07:00")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest8() {
		do {
			let instance = try runProcedureRequest8()
			try runProcedureRequest8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-implant.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2015-03-30")
		XCTAssertEqual(inst.code?.coding?[0].code, "25267002")
		XCTAssertEqual(inst.code?.coding?[0].display, "Insertion of intracardiac pacemaker (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Implant Pacemaker")
		XCTAssertEqual(inst.id, "example-implant")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.performer?.display, "Dr Cecil Surgeon")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.reasonCode?[0].text, "Bradycardia")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Beverly Crusher")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest9() {
		do {
			let instance = try runProcedureRequest9()
			try runProcedureRequest9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-lipid.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "LIPID")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.org/tests")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "fasting")
		XCTAssertEqual(inst.contained?[1].id, "serum")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "lipid")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "2345234234234")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.note?[0].text, "patient is afraid of needles")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-02T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "V173")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Fam hx-ischem heart dis")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.specimen?[0].display, "Serum specimen")
		XCTAssertEqual(inst.specimen?[0].reference, "#serum")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.supportingInfo?[0].display, "Fasting status")
		XCTAssertEqual(inst.supportingInfo?[0].reference, "#fasting")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProcedureRequest10() {
		do {
			let instance = try runProcedureRequest10()
			try runProcedureRequest10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ProcedureRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProcedureRequest10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProcedureRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-ob.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "386637004")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Obstetric procedure (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "OB")
		XCTAssertEqual(inst.code?.coding?[0].code, "22633006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Vaginal delivery, medical personnel present (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Vaginal delivery")
		XCTAssertEqual(inst.id, "ob")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2012-06-02")
		XCTAssertEqual(inst.performer?.display, "Martha Midwife, RNP")
		XCTAssertEqual(inst.reasonCode?[0].text, "term pregnancy, active labor")
		XCTAssertEqual(inst.requester?.agent?.display, "Women’s Hospital")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.display, "Jane Doe")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
