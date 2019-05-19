//
//  TaskTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example6.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.basedOn?[0].display, "General Wellness Careplan")
		XCTAssertEqual(inst.businessStatus?.text, "test completed and posted")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.description_fhir, "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen")
		XCTAssertEqual(inst.encounter?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.executionPeriod?.end?.description, "2016-10-31T18:45:05+10:00")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.focus?.display, "Lipid Panel Request")
		XCTAssertEqual(inst.focus?.reference, "ServiceRequest/lipid")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example6")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-001")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T18:45:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.output?[0].type?.text, "DiagnosticReport generated")
		XCTAssertEqual(inst.output?[0].valueReference?.reference, "DiagnosticReport/lipids")
		XCTAssertEqual(inst.output?[1].type?.text, "collected specimen")
		XCTAssertEqual(inst.output?[1].valueReference?.reference, "Specimen/101")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?.text, "The Task.reason should only be included if there is no Task.focus or if it differs from the reason indicated on the focus")
		XCTAssertEqual(inst.requester?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-02T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "completed")!)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example-fm-poll.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-10-12T08:25:05+10:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "poll")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskcode")
		XCTAssertEqual(inst.id, "fm-example2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/happyvalley.com/task")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20181012-005")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].code, "include")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[0].valueCode, "ClaimResponse")
		XCTAssertEqual(inst.input?[1].type?.coding?[0].code, "period")
		XCTAssertEqual(inst.input?[1].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[1].valuePeriod?.end?.description, "2018-10-12")
		XCTAssertEqual(inst.input?[1].valuePeriod?.start?.description, "2018-10-01")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2018-10-12T08:25:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.identifier?.system?.absoluteString, "http://nationalinsurers.com/identifiers")
		XCTAssertEqual(inst.owner?.identifier?.value, "12345")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.requester?.display, "Happy Valley Clinic")
		XCTAssertEqual(inst.requester?.reference, "Organization/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "requested")!)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example1.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.basedOn?[0].display, "General Wellness Careplan")
		XCTAssertEqual(inst.businessStatus?.text, "waiting for specimen")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.contained?[0].id, "signature")
		XCTAssertEqual(inst.description_fhir, "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen")
		XCTAssertEqual(inst.encounter?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.focus?.display, "Lipid Panel Request")
		XCTAssertEqual(inst.focus?.reference, "ServiceRequest/lipid")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-001")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T09:45:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?.text, "The Task.reason should only be included if there is no Task.focus or if it differs from the reason indicated on the focus")
		XCTAssertEqual(inst.relevantHistory?[0].display, "Author's Signature")
		XCTAssertEqual(inst.relevantHistory?[0].reference, "#signature")
		XCTAssertEqual(inst.requester?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-02T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask4() {
		do {
			let instance = try runTask4()
			try runTask4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example-fm-reprocess.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "reprocess")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskcode")
		XCTAssertEqual(inst.focus?.identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.focus?.identifier?.value, "1501")
		XCTAssertEqual(inst.id, "fm-example4")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/happyvalley.com/task")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20181012-006")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].code, "origresponse")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[0].valueReference?.identifier?.system?.absoluteString, "http://nationalinsurers.com/claimresponse")
		XCTAssertEqual(inst.input?[0].valueReference?.identifier?.value, "CR201810040001234")
		XCTAssertEqual(inst.input?[1].type?.coding?[0].code, "reference")
		XCTAssertEqual(inst.input?[1].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[1].valueString, "BR12345")
		XCTAssertEqual(inst.input?[2].type?.coding?[0].code, "item")
		XCTAssertEqual(inst.input?[2].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[2].valuePositiveInt, 2)
		XCTAssertEqual(inst.input?[3].type?.coding?[0].code, "item")
		XCTAssertEqual(inst.input?[3].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskinputtype")
		XCTAssertEqual(inst.input?[3].valuePositiveInt, 3)
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.identifier?.system?.absoluteString, "http://nationalinsurers.com/identifiers")
		XCTAssertEqual(inst.owner?.identifier?.value, "12345")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.requester?.display, "Happy Valley Clinic")
		XCTAssertEqual(inst.requester?.reference, "Organization/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "requested")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask5() {
		do {
			let instance = try runTask5()
			try runTask5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example3.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.code?.text, "Refill Request")
		XCTAssertEqual(inst.focus?.reference, "MedicationRequest/medrx002")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/f001")
		XCTAssertEqual(inst.id, "example3")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2016-03-10T22:39:32-04:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.reference, "Practitioner/example")
		XCTAssertEqual(inst.requester?.reference, "Patient/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask6() {
		do {
			let instance = try runTask6()
			try runTask6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example-fm-status-resp.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "status")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskcode")
		XCTAssertEqual(inst.focus?.identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.focus?.identifier?.value, "1500")
		XCTAssertEqual(inst.id, "fm-example6")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/happyvalley.com/task")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20181012-001")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://nationalinsurers.com/identifiers/12345")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "123GB5674")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.output?[0].type?.coding?[0].code, "status")
		XCTAssertEqual(inst.output?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/financial-taskoutputtype")
		XCTAssertEqual(inst.output?[0].valueCode, "complete")
		XCTAssertEqual(inst.owner?.identifier?.system?.absoluteString, "http://nationalinsurers.com/identifiers")
		XCTAssertEqual(inst.owner?.identifier?.value, "12345")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.requester?.display, "Happy Valley Clinic")
		XCTAssertEqual(inst.requester?.reference, "Organization/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask7() {
		do {
			let instance = try runTask7()
			try runTask7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example2.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:45:05+10:00")
		XCTAssertEqual(inst.businessStatus?.text, "waiting for patient")
		XCTAssertEqual(inst.code?.text, "Specimen Collection")
		XCTAssertEqual(inst.encounter?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:45:05+10:00")
		XCTAssertEqual(inst.focus?.display, "BloodDraw ServiceRequest")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-002")
		XCTAssertEqual(inst.intent, "filler-order")
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T09:45:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.partOf?[0].display, "Lipid Panel")
		XCTAssertEqual(inst.partOf?[0].reference, "Task/example1")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.requester?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.requester?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-01T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask8() {
		do {
			let instance = try runTask8()
			try runTask8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example-fm-release.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "release")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskcode")
		XCTAssertEqual(inst.focus?.identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.focus?.identifier?.value, "1501")
		XCTAssertEqual(inst.id, "fm-example3")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/happyvalley.com/task")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20181012-001")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].code, "origresponse")
		XCTAssertEqual(inst.input?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/financial-taskinputtype")
		XCTAssertEqual(inst.input?[0].valueReference?.identifier?.system?.absoluteString, "http://nationalinsurers.com/claimresponse")
		XCTAssertEqual(inst.input?[0].valueReference?.identifier?.value, "CR201810040001234")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.identifier?.system?.absoluteString, "http://nationalinsurers.com/identifiers")
		XCTAssertEqual(inst.owner?.identifier?.value, "12345")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.requester?.display, "Happy Valley Clinic")
		XCTAssertEqual(inst.requester?.reference, "Organization/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "requested")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask9() {
		do {
			let instance = try runTask9()
			try runTask9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example-fm-cancel.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.code?.coding?[0].code, "cancel")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/financialtaskcode")
		XCTAssertEqual(inst.focus?.identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.focus?.identifier?.value, "1500")
		XCTAssertEqual(inst.id, "fm-example1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/happyvalley.com/task")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20181012-001")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2018-10-04T08:25:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.owner?.identifier?.system?.absoluteString, "http://nationalinsurers.com/identifiers")
		XCTAssertEqual(inst.owner?.identifier?.value, "12345")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "stat")!)
		XCTAssertEqual(inst.requester?.display, "Happy Valley Clinic")
		XCTAssertEqual(inst.requester?.reference, "Organization/example")
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "requested")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testTask10() {
		do {
			let instance = try runTask10()
			try runTask10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Task successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTask10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTask {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "task-example5.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.basedOn?[0].display, "General Wellness Careplan")
		XCTAssertEqual(inst.businessStatus?.text, "specimen received, test in progress")
		XCTAssertEqual(inst.code?.text, "Lipid Panel")
		XCTAssertEqual(inst.description_fhir, "Create order for getting specimen, Set up inhouse testing,  generate order for any sendouts and submit with specimen")
		XCTAssertEqual(inst.encounter?.display, "Example In-Patient Encounter")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.executionPeriod?.start?.description, "2016-10-31T08:25:05+10:00")
		XCTAssertEqual(inst.focus?.display, "Lipid Panel Request")
		XCTAssertEqual(inst.focus?.reference, "ServiceRequest/lipid")
		XCTAssertEqual(inst.for_fhir?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.for_fhir?.reference, "Patient/example")
		XCTAssertEqual(inst.groupIdentifier?.system?.absoluteString, "http:/goodhealth.org/accession/identifiers")
		XCTAssertEqual(inst.groupIdentifier?.use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.groupIdentifier?.value, "G20170201-001")
		XCTAssertEqual(inst.id, "example5")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http:/goodhealth.org/identifiers")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "20170201-001")
		XCTAssertEqual(inst.intent, "order")
		XCTAssertEqual(inst.lastModified?.description, "2016-10-31T16:45:05+10:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.output?[0].type?.text, "collected specimen")
		XCTAssertEqual(inst.output?[0].valueReference?.reference, "Specimen/101")
		XCTAssertEqual(inst.owner?.display, "Clinical Laboratory @ Acme Hospital")
		XCTAssertEqual(inst.owner?.reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.performerType?[0].coding?[0].code, "performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].display, "Performer")
		XCTAssertEqual(inst.performerType?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/task-performer-type")
		XCTAssertEqual(inst.performerType?[0].text, "Performer")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.reasonCode?.text, "The Task.reason should only be included if there is no Task.focus or if it differs from the reason indicated on the focus")
		XCTAssertEqual(inst.requester?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.requester?.reference, "Practitioner/example")
		XCTAssertEqual(inst.restriction?.period?.end?.description, "2016-11-02T09:45:05+10:00")
		XCTAssertEqual(inst.restriction?.repetitions, 1)
		XCTAssertEqual(inst.status, TaskStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
