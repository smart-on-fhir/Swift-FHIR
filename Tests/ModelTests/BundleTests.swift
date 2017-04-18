//
//  BundleTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRBundle = Models.Bundle
#else
import SwiftFHIR
typealias SwiftFHIRBundle = SwiftFHIR.Bundle
#endif


class BundleTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRBundle {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBundle {
		return try SwiftFHIRBundle(json: json)
	}
	
	func testBundle1() {
		do {
			let instance = try runBundle1()
			try runBundle1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "bundle-example.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "https://example.com/base/MedicationRequest/3123")
		XCTAssertEqual(inst.entry?[0].resource?.id, "3123")
		XCTAssertEqual(inst.entry?[0].search?.mode, SearchEntryMode(rawValue: "match")!)
		XCTAssertEqual(inst.entry?[0].search?.score, "1")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "https://example.com/base/Medication/example")
		XCTAssertEqual(inst.entry?[1].resource?.id, "example")
		XCTAssertEqual(inst.entry?[1].search?.mode, SearchEntryMode(rawValue: "include")!)
		XCTAssertEqual(inst.id, "bundle-example")
		XCTAssertEqual(inst.link?[0].relation, "self")
		XCTAssertEqual(inst.link?[0].url?.absoluteString, "https://example.com/base/MedicationRequest?patient=347&_include=MedicationRequest.medication")
		XCTAssertEqual(inst.link?[1].relation, "next")
		XCTAssertEqual(inst.link?[1].url?.absoluteString, "https://example.com/base/MedicationRequest?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2014-08-18T01:43:30Z")
		XCTAssertEqual(inst.total, 3)
		XCTAssertEqual(inst.type, BundleType(rawValue: "searchset")!)
		
		return inst
	}
	
	func testBundle2() {
		do {
			let instance = try runBundle2()
			try runBundle2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-examples-general.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/3")
		XCTAssertEqual(inst.entry?[0].resource?.id, "3")
		XCTAssertEqual(inst.entry?[0].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/4")
		XCTAssertEqual(inst.entry?[1].resource?.id, "4")
		XCTAssertEqual(inst.entry?[1].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/5")
		XCTAssertEqual(inst.entry?[2].resource?.id, "5")
		XCTAssertEqual(inst.entry?[2].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/6")
		XCTAssertEqual(inst.entry?[3].resource?.id, "6")
		XCTAssertEqual(inst.entry?[3].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/7")
		XCTAssertEqual(inst.entry?[4].resource?.id, "7")
		XCTAssertEqual(inst.entry?[4].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/8")
		XCTAssertEqual(inst.entry?[5].resource?.id, "8")
		XCTAssertEqual(inst.entry?[5].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/9")
		XCTAssertEqual(inst.entry?[6].resource?.id, "9")
		XCTAssertEqual(inst.entry?[6].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/15")
		XCTAssertEqual(inst.entry?[7].resource?.id, "15")
		XCTAssertEqual(inst.entry?[7].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/16")
		XCTAssertEqual(inst.entry?[8].resource?.id, "16")
		XCTAssertEqual(inst.entry?[8].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/DiagnosticReport/17")
		XCTAssertEqual(inst.entry?[9].resource?.id, "17")
		XCTAssertEqual(inst.entry?[9].resource?.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.id, "72ac8493-52ac-41bd-8d5d-7258c289b5ea")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle3() {
		do {
			let instance = try runBundle3()
			try runBundle3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "diagnosticreport-hla-genetics-results-example.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "urn:uuid:b0a4b18e-94e7-4b1b-8031-c7ae4bdd8db9")
		XCTAssertEqual(inst.entry?[0].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[0].request?.url?.absoluteString, "DiagnosticReport")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "urn:uuid:8200dab6-18a2-4550-b913-a7db480c0804")
		XCTAssertEqual(inst.entry?[1].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[1].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "urn:uuid:7c393185-f15c-45bc-a714-c0fdbea32675")
		XCTAssertEqual(inst.entry?[2].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[2].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "urn:uuid:65c85f14-c3a0-4b72-818f-820e04fcc621")
		XCTAssertEqual(inst.entry?[3].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[3].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "urn:uuid:fbba9fe7-0ece-4ec1-9233-a437a8d242a0")
		XCTAssertEqual(inst.entry?[4].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[4].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "urn:uuid:cbabf93e-1b4b-46f2-ba1e-d84862670670")
		XCTAssertEqual(inst.entry?[5].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[5].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "urn:uuid:c233ad3d-1572-48d6-93da-0a583535e138")
		XCTAssertEqual(inst.entry?[6].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[6].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "urn:uuid:05fa52d7-5c67-460a-8722-d3460b24d6fe")
		XCTAssertEqual(inst.entry?[7].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[7].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "urn:uuid:db69e549-6267-4777-b4b9-8813f3329309")
		XCTAssertEqual(inst.entry?[8].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[8].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "urn:uuid:bb55c2bc-5ad2-4bc1-8ff3-c407d06b12d0")
		XCTAssertEqual(inst.entry?[9].request?.method, HTTPVerb(rawValue: "POST")!)
		XCTAssertEqual(inst.entry?[9].request?.url?.absoluteString, "Sequence")
		XCTAssertEqual(inst.id, "hla-1")
		XCTAssertEqual(inst.type, BundleType(rawValue: "transaction")!)
		
		return inst
	}
	
	func testBundle4() {
		do {
			let instance = try runBundle4()
			try runBundle4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "document-example-dischargesummary.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://fhir.healthintersections.com.au/open/Composition/180f219f-97a8-486d-99d9-ed631fe4fc57")
		XCTAssertEqual(inst.entry?[0].resource?.id, "180f219f-97a8-486d-99d9-ed631fe4fc57")
		XCTAssertEqual(inst.entry?[0].resource?.meta?.lastUpdated?.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://fhir.healthintersections.com.au/open/Practitioner/example")
		XCTAssertEqual(inst.entry?[1].resource?.id, "example")
		XCTAssertEqual(inst.entry?[1].resource?.meta?.lastUpdated?.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://fhir.healthintersections.com.au/open/Patient/d1")
		XCTAssertEqual(inst.entry?[2].resource?.id, "d1")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://fhir.healthintersections.com.au/open/Encounter/doc-example")
		XCTAssertEqual(inst.entry?[3].resource?.id, "doc-example")
		XCTAssertEqual(inst.entry?[3].resource?.meta?.lastUpdated?.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "urn:uuid:541a72a8-df75-4484-ac89-ac4923f03b81")
		XCTAssertEqual(inst.entry?[4].resource?.meta?.lastUpdated?.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "urn:uuid:124a6916-5d84-4b8c-b250-10cefb8e6e86")
		XCTAssertEqual(inst.entry?[5].resource?.meta?.lastUpdated?.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc1")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "urn:uuid:47600e0f-b6b5-4308-84b5-5dec157f7637")
		XCTAssertEqual(inst.entry?[7].resource?.meta?.lastUpdated?.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.id, "father")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?.value, "urn:uuid:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.signature?.contentType, "image/jpg")
		XCTAssertEqual(inst.signature?.onBehalfOfReference?.reference, "Organization/example")
		XCTAssertEqual(inst.signature?.type?[0].code, "1.2.840.10065.1.12.1.1")
		XCTAssertEqual(inst.signature?.type?[0].display, "Author's Signature")
		XCTAssertEqual(inst.signature?.type?[0].system?.absoluteString, "urn:iso-astm:E1762-95:2013")
		XCTAssertEqual(inst.signature?.when?.description, "2015-08-31T07:42:33+10:00")
		XCTAssertEqual(inst.signature?.whoReference?.reference, "Device/software")
		XCTAssertEqual(inst.type, BundleType(rawValue: "document")!)
		
		return inst
	}
	
	func testBundle5() {
		do {
			let instance = try runBundle5()
			try runBundle5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "endpoint-examples-general-template.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/71")
		XCTAssertEqual(inst.entry?[0].resource?.id, "71")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/72")
		XCTAssertEqual(inst.entry?[1].resource?.id, "72")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/73")
		XCTAssertEqual(inst.entry?[2].resource?.id, "73")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/74")
		XCTAssertEqual(inst.entry?[3].resource?.id, "74")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/75")
		XCTAssertEqual(inst.entry?[4].resource?.id, "75")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/76")
		XCTAssertEqual(inst.entry?[5].resource?.id, "76")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/77")
		XCTAssertEqual(inst.entry?[6].resource?.id, "77")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/78")
		XCTAssertEqual(inst.entry?[7].resource?.id, "78")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/79")
		XCTAssertEqual(inst.entry?[8].resource?.id, "79")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/Endpoint/80")
		XCTAssertEqual(inst.entry?[9].resource?.id, "80")
		XCTAssertEqual(inst.id, "b0a5e4277-83c4-4adb-87e2-e3efe3369b6f")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle6() {
		do {
			let instance = try runBundle6()
			try runBundle6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-examples-general.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/Location/2")
		XCTAssertEqual(inst.entry?[0].resource?.id, "2")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/Location/3")
		XCTAssertEqual(inst.entry?[1].resource?.id, "3")
		XCTAssertEqual(inst.id, "3ad0687e-f477-468c-afd5-fcc2bf897819")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle7() {
		do {
			let instance = try runBundle7()
			try runBundle7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-examples-cypress-template.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/71")
		XCTAssertEqual(inst.entry?[0].resource?.id, "71")
		XCTAssertEqual(inst.entry?[0].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/72")
		XCTAssertEqual(inst.entry?[1].resource?.id, "72")
		XCTAssertEqual(inst.entry?[1].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/73")
		XCTAssertEqual(inst.entry?[2].resource?.id, "73")
		XCTAssertEqual(inst.entry?[2].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/74")
		XCTAssertEqual(inst.entry?[3].resource?.id, "74")
		XCTAssertEqual(inst.entry?[3].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/75")
		XCTAssertEqual(inst.entry?[4].resource?.id, "75")
		XCTAssertEqual(inst.entry?[4].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/76")
		XCTAssertEqual(inst.entry?[5].resource?.id, "76")
		XCTAssertEqual(inst.entry?[5].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/77")
		XCTAssertEqual(inst.entry?[6].resource?.id, "77")
		XCTAssertEqual(inst.entry?[6].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/78")
		XCTAssertEqual(inst.entry?[7].resource?.id, "78")
		XCTAssertEqual(inst.entry?[7].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/79")
		XCTAssertEqual(inst.entry?[8].resource?.id, "79")
		XCTAssertEqual(inst.entry?[8].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/80")
		XCTAssertEqual(inst.entry?[9].resource?.id, "80")
		XCTAssertEqual(inst.entry?[9].resource?.meta?.lastUpdated?.description, "2012-06-03T23:45:32Z")
		XCTAssertEqual(inst.id, "b0a5e4277-83c4-4adb-87e2-e3efe3369b6f")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle8() {
		do {
			let instance = try runBundle8()
			try runBundle8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-examples-general.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/1")
		XCTAssertEqual(inst.entry?[0].resource?.id, "1")
		XCTAssertEqual(inst.entry?[0].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/2")
		XCTAssertEqual(inst.entry?[1].resource?.id, "2")
		XCTAssertEqual(inst.entry?[1].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/3")
		XCTAssertEqual(inst.entry?[2].resource?.id, "3")
		XCTAssertEqual(inst.entry?[2].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/4")
		XCTAssertEqual(inst.entry?[3].resource?.id, "4")
		XCTAssertEqual(inst.entry?[3].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/5")
		XCTAssertEqual(inst.entry?[4].resource?.id, "5")
		XCTAssertEqual(inst.entry?[4].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/6")
		XCTAssertEqual(inst.entry?[5].resource?.id, "6")
		XCTAssertEqual(inst.entry?[5].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/7")
		XCTAssertEqual(inst.entry?[6].resource?.id, "7")
		XCTAssertEqual(inst.entry?[6].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/8")
		XCTAssertEqual(inst.entry?[7].resource?.id, "8")
		XCTAssertEqual(inst.entry?[7].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/9")
		XCTAssertEqual(inst.entry?[8].resource?.id, "9")
		XCTAssertEqual(inst.entry?[8].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/Patient/10")
		XCTAssertEqual(inst.entry?[9].resource?.id, "10")
		XCTAssertEqual(inst.entry?[9].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.id, "b248b1b2-1686-4b94-9936-37d7a5f94b51")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle9() {
		do {
			let instance = try runBundle9()
			try runBundle9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-examples-general.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/1")
		XCTAssertEqual(inst.entry?[0].resource?.id, "1")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/13")
		XCTAssertEqual(inst.entry?[1].resource?.id, "13")
		XCTAssertEqual(inst.entry?[1].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/14")
		XCTAssertEqual(inst.entry?[2].resource?.id, "14")
		XCTAssertEqual(inst.entry?[2].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/15")
		XCTAssertEqual(inst.entry?[3].resource?.id, "15")
		XCTAssertEqual(inst.entry?[3].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/16")
		XCTAssertEqual(inst.entry?[4].resource?.id, "16")
		XCTAssertEqual(inst.entry?[4].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/17")
		XCTAssertEqual(inst.entry?[5].resource?.id, "17")
		XCTAssertEqual(inst.entry?[5].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/18")
		XCTAssertEqual(inst.entry?[6].resource?.id, "18")
		XCTAssertEqual(inst.entry?[6].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/19")
		XCTAssertEqual(inst.entry?[7].resource?.id, "19")
		XCTAssertEqual(inst.entry?[7].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/20")
		XCTAssertEqual(inst.entry?[8].resource?.id, "20")
		XCTAssertEqual(inst.entry?[8].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/Practitioner/21")
		XCTAssertEqual(inst.entry?[9].resource?.id, "21")
		XCTAssertEqual(inst.entry?[9].resource?.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.id, "3ad0687e-f477-468c-afd5-fcc2bf897809")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
	
	func testBundle10() {
		do {
			let instance = try runBundle10()
			try runBundle10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Bundle successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBundle10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBundle {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitionerrole-examples-general.json")
		
		XCTAssertEqual(inst.entry?[0].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f003-0")
		XCTAssertEqual(inst.entry?[0].resource?.id, "f003-0")
		XCTAssertEqual(inst.entry?[1].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/example-0")
		XCTAssertEqual(inst.entry?[1].resource?.id, "example-0")
		XCTAssertEqual(inst.entry?[2].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/example-1")
		XCTAssertEqual(inst.entry?[2].resource?.id, "example-1")
		XCTAssertEqual(inst.entry?[3].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/example-2")
		XCTAssertEqual(inst.entry?[3].resource?.id, "example-2")
		XCTAssertEqual(inst.entry?[4].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f007-0")
		XCTAssertEqual(inst.entry?[4].resource?.id, "f007-0")
		XCTAssertEqual(inst.entry?[5].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f004-0")
		XCTAssertEqual(inst.entry?[5].resource?.id, "f004-0")
		XCTAssertEqual(inst.entry?[6].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/xcda1-0")
		XCTAssertEqual(inst.entry?[6].resource?.id, "xcda1-0")
		XCTAssertEqual(inst.entry?[7].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f202-0")
		XCTAssertEqual(inst.entry?[7].resource?.id, "f202-0")
		XCTAssertEqual(inst.entry?[8].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f201-0")
		XCTAssertEqual(inst.entry?[8].resource?.id, "f201-0")
		XCTAssertEqual(inst.entry?[9].fullUrl?.absoluteString, "http://hl7.org/fhir/PractitionerRole/f203-0")
		XCTAssertEqual(inst.entry?[9].resource?.id, "f203-0")
		XCTAssertEqual(inst.id, "3ad0687e-f477-468c-afd5-fcc2bf897808")
		XCTAssertEqual(inst.type, BundleType(rawValue: "collection")!)
		
		return inst
	}
}
