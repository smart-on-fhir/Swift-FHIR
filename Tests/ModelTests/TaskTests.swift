//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11362 on 2017-02-23.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRTask = Models.Task
#else
import SwiftFHIR
typealias SwiftFHIRTask = SwiftFHIR.Task
#endif


class TaskTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRTask {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRTask {
		return try SwiftFHIRTask(json: json)
	}
	
	func testTask1() {
		do {
			let instance = try runTask1()
			try runTask1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example1.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.businessStatus?.text, "waiting for specimen")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "signature")
		XCTAssertEqual(inst.context?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.description_fhir, "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.focus?.display, "Lipid Panel Request")
		XCTAssertEqual(inst.focus?.reference, "ProcedureRequest/lipid")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-001")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T09:45:05+10:00")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reason?.text, "The Task.reason should only be included if there is no Task.focus or if it differs from the reason indicated on the focus")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Author's Signature")
		XCTAssertEqual(inst.relevantHistory?[0].reference, "#signature")
		XCTAssertEqual(inst.requester?.agent?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.agent?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.onBehalfOf?.display, "Good Health Clinic")
		XCTAssertEqual(inst.requester?.onBehalfOf?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-02T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask2() {
		do {
			let instance = try runTask2()
			try runTask2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example2.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:45:05+10:00")
		XCTAssertEqual(inst.businessStatus?.text, "waiting for patient")
		XCTAssertEqual(inst.code?.text, "Specimen Collection")
		XCTAssertEqual(inst.context?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:45:05+10:00")
		XCTAssertEqual(inst.focus?.display, "BloodDraw ProcedureRequest")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-002")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "filler-order")!)
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T09:45:05+10:00")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.partOf?[0].display, "Lipid Panel")
		XCTAssertEqual(inst.partOf?[0].reference, "Task/example1")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.requester?.agent?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.requester?.agent?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-01T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask3() {
		do {
			let instance = try runTask3()
			try runTask3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example3.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.code?.text, "Refill Request")
		XCTAssertEqual(inst.focus?.reference, "MedicationRequest/medrx002")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/f001")
		XCTAssertEqual(inst.id, "example3")
		XCTAssertEqual(inst.intent, RequestIntent(rawValue: "order")!)
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.owner?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.agent?.reference, "Patient/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
