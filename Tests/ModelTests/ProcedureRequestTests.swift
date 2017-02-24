//
//  ProcedureRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-pgx.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-10T15:00:00-07:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "47403-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "CYP2D6 gene targeted mutation analysis")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "example-pgx")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/12345")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/899962")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example-subrequest.json")
		
		XCTAssertEqual(inst.basedOn?[0].display, "Original Request")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Right arm")
		XCTAssertEqual(inst.bodySite?[0].text, "Right arm")
		XCTAssertEqual(inst.code?.coding?[0].code, "35542-0")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Peanut IgG")
		XCTAssertEqual(inst.definition?[0].display, "Protocol for alergies")
		XCTAssertEqual(inst.id, "subrequest")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "instance-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2013-05-08T09:33:27+07:00")
		XCTAssertEqual(inst.performerType?.coding?[0].display, "Qualified nurse")
		XCTAssertEqual(inst.performerType?.text, "Nurse")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?[0].text, "Check for Peanut Allergy")
		XCTAssertEqual(inst.replaces?[0].display, "Previous allergy test")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr. Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requisition?.value, "A13848392")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "103693007")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Diagnostic procedure (procedure)")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.category?[0].text, "Diagnostics Procedure")
		XCTAssertEqual(inst.code?.coding?[0].code, "303653007")
		XCTAssertEqual(inst.code?.coding?[0].display, "Computed tomography of head")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be added</div>")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example2.json")
		
		XCTAssertEqual(inst.asNeededCodeableConcept?.text, "as needed to clear mucus")
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.basedOn?[0].reference, "CarePlan/gpvisit")
		XCTAssertEqual(inst.code?.coding?[0].code, "34431008")
		XCTAssertEqual(inst.code?.coding?[0].display, "Physiotherapy of chest (regime/therapy) ")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contained?[0].id, "signature")
		XCTAssertEqual(inst.contained?[1].id, "cystic-fibrosis")
		XCTAssertEqual(inst.id, "physiotherapy")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "PLAC")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].display, "Placer Identifier")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Placer")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0001")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.frequencyMax, 4)
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.occurrenceTiming?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.reasonReference?[0].reference, "#cystic-fibrosis")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Author's Signature")
		XCTAssertEqual(inst.relevantHistory?[0].reference, "#signature")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.display, "Good Health Clinic")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/2")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-example3.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2017-02-01T17:23:07Z")
		XCTAssertEqual(inst.code?.coding?[0].code, "359962006")
		XCTAssertEqual(inst.code?.coding?[0].display, "Turning patient in bed (procedure)")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.doNotPerform, true)
		XCTAssertEqual(inst.id, "do-not-turn")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://goodhealth.org/placer-ids")
		XCTAssertEqual(inst.identifier?[0].value, "20170201-0002")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.reasonReference?[0].display, "Patient has a spinal fracture")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "procedurerequest-genetics-example-1.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "49874-1")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "ABCB4 gene mutation analysis")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "og-example1")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "original-order")!)
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2014-05-12T16:16:00-07:00")
		XCTAssertEqual(inst.performer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
