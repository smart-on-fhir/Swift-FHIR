//
//  AuditEventTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-09-15.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AuditEventTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.AuditEvent {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.AuditEvent {
		let instance = SwiftFHIR.AuditEvent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAuditEvent1() {
		do {
			let instance = try runAuditEvent1()
			try runAuditEvent1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-login.json")
		
		XCTAssertEqual(inst.action, "E")
		XCTAssertEqual(inst.agent?[0].altId, "601847123")
		XCTAssertEqual(inst.agent?[0].name, "Grahame Grieve")
		XCTAssertEqual(inst.agent?[0].network?.address, "127.0.0.1")
		XCTAssertEqual(inst.agent?[0].network?.type, "2")
		XCTAssertTrue(inst.agent?[0].requestor ?? false)
		XCTAssertEqual(inst.agent?[0].userId?.value, "95")
		XCTAssertEqual(inst.agent?[1].altId, "6580")
		XCTAssertEqual(inst.agent?[1].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.id, "example-login")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2013-06-20T23:41:23Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source?.site, "Cloud")
		XCTAssertEqual(inst.source?.type?[0].code, "3")
		XCTAssertEqual(inst.source?.type?[0].display, "Web Server")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.subtype?[0].code, "110122")
		XCTAssertEqual(inst.subtype?[0].display, "Login")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110114")
		XCTAssertEqual(inst.type?.display, "User Authentication")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
	
	func testAuditEvent2() {
		do {
			let instance = try runAuditEvent2()
			try runAuditEvent2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-logout.json")
		
		XCTAssertEqual(inst.action, "E")
		XCTAssertEqual(inst.agent?[0].altId, "601847123")
		XCTAssertEqual(inst.agent?[0].name, "Grahame Grieve")
		XCTAssertEqual(inst.agent?[0].network?.address, "127.0.0.1")
		XCTAssertEqual(inst.agent?[0].network?.type, "2")
		XCTAssertTrue(inst.agent?[0].requestor ?? false)
		XCTAssertEqual(inst.agent?[0].userId?.value, "95")
		XCTAssertEqual(inst.agent?[1].altId, "6580")
		XCTAssertEqual(inst.agent?[1].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.id, "example-logout")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2013-06-20T23:46:41Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source?.site, "Cloud")
		XCTAssertEqual(inst.source?.type?[0].code, "3")
		XCTAssertEqual(inst.source?.type?[0].display, "Web Server")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.subtype?[0].code, "110123")
		XCTAssertEqual(inst.subtype?[0].display, "Logout")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110114")
		XCTAssertEqual(inst.type?.display, "User Authentication")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
	
	func testAuditEvent3() {
		do {
			let instance = try runAuditEvent3()
			try runAuditEvent3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-media.json")
		
		XCTAssertEqual(inst.action, "R")
		XCTAssertFalse(inst.agent?[0].requestor ?? true)
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[0].userId?.value, "ExportToMedia.app")
		XCTAssertEqual(inst.agent?[1].altId, "601847123")
		XCTAssertEqual(inst.agent?[1].name, "Grahame Grieve")
		XCTAssertTrue(inst.agent?[1].requestor ?? false)
		XCTAssertEqual(inst.agent?[1].userId?.value, "95")
		XCTAssertEqual(inst.agent?[2].media?.code, "110033")
		XCTAssertEqual(inst.agent?[2].media?.display, "DVD")
		XCTAssertEqual(inst.agent?[2].media?.system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[2].name, "Media title: Hello World")
		XCTAssertFalse(inst.agent?[2].requestor ?? true)
		XCTAssertEqual(inst.entity?[0].identifier?.value, "e3cdfc81a0d24bd^^^&2.16.840.1.113883.4.2&ISO")
		XCTAssertEqual(inst.entity?[0].role?.code, "1")
		XCTAssertEqual(inst.entity?[0].role?.display, "Patient")
		XCTAssertEqual(inst.entity?[0].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[0].type?.code, "1")
		XCTAssertEqual(inst.entity?[0].type?.display, "Person")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.entity?[1].identifier?.type?.coding?[0].code, "IHE XDS Metadata")
		XCTAssertEqual(inst.entity?[1].identifier?.type?.coding?[0].display, "submission set classificationNode")
		XCTAssertEqual(inst.entity?[1].identifier?.type?.coding?[0].system?.absoluteString, "urn:uuid:a54d6aa5-d40d-43f9-88c5-b4633d873bdd")
		XCTAssertEqual(inst.entity?[1].identifier?.value, "e3cdfc81a0d24bd^^^&2.16.840.1.113883.4.2&ISO")
		XCTAssertEqual(inst.entity?[1].role?.code, "20")
		XCTAssertEqual(inst.entity?[1].role?.display, "Job")
		XCTAssertEqual(inst.entity?[1].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[1].type?.code, "2")
		XCTAssertEqual(inst.entity?[1].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[1].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.entity?[2].reference?.reference, "DocumentManifest/example")
		XCTAssertEqual(inst.entity?[2].type?.code, "2")
		XCTAssertEqual(inst.entity?[2].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[2].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example-media")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2015-08-27T23:42:24Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.subtype?[0].code, "ITI-32")
		XCTAssertEqual(inst.subtype?[0].display, "Distribute Document Set on Media")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "urn:oid:1.3.6.1.4.1.19376.1.2")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110106")
		XCTAssertEqual(inst.type?.display, "Export")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
	
	func testAuditEvent4() {
		do {
			let instance = try runAuditEvent4()
			try runAuditEvent4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-pixQuery.json")
		
		XCTAssertEqual(inst.action, "E")
		XCTAssertEqual(inst.agent?[0].altId, "6580")
		XCTAssertEqual(inst.agent?[0].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[0].network?.type, "1")
		XCTAssertFalse(inst.agent?[0].requestor ?? true)
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[0].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.agent?[1].altId, "601847123")
		XCTAssertEqual(inst.agent?[1].name, "Grahame Grieve")
		XCTAssertTrue(inst.agent?[1].requestor ?? false)
		XCTAssertEqual(inst.agent?[1].userId?.value, "95")
		XCTAssertEqual(inst.entity?[0].identifier?.value, "e3cdfc81a0d24bd^^^&2.16.840.1.113883.4.2&ISO")
		XCTAssertEqual(inst.entity?[0].role?.code, "1")
		XCTAssertEqual(inst.entity?[0].role?.display, "Patient")
		XCTAssertEqual(inst.entity?[0].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[0].type?.code, "1")
		XCTAssertEqual(inst.entity?[0].type?.display, "Person")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.entity?[1].detail?[0].type, "MSH-10")
		XCTAssertEqual(inst.entity?[1].detail?[0].value, Base64Binary(value: "MS4yLjg0MC4xMTQzNTAuMS4xMy4wLjEuNy4xLjE="))
		XCTAssertEqual(inst.entity?[1].role?.code, "24")
		XCTAssertEqual(inst.entity?[1].role?.display, "Query")
		XCTAssertEqual(inst.entity?[1].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[1].type?.code, "2")
		XCTAssertEqual(inst.entity?[1].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[1].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example-pixQuery")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2015-08-26T23:42:24Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.subtype?[0].code, "ITI-9")
		XCTAssertEqual(inst.subtype?[0].display, "PIX Query")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "urn:oid:1.3.6.1.4.1.19376.1.2")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110112")
		XCTAssertEqual(inst.type?.display, "Query")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
	
	func testAuditEvent5() {
		do {
			let instance = try runAuditEvent5()
			try runAuditEvent5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-search.json")
		
		XCTAssertEqual(inst.action, "E")
		XCTAssertEqual(inst.agent?[0].altId, "601847123")
		XCTAssertEqual(inst.agent?[0].name, "Grahame Grieve")
		XCTAssertTrue(inst.agent?[0].requestor ?? false)
		XCTAssertEqual(inst.agent?[0].userId?.value, "95")
		XCTAssertEqual(inst.agent?[1].altId, "6580")
		XCTAssertEqual(inst.agent?[1].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.entity?[0].query, Base64Binary(value: "aHR0cDovL2ZoaXItZGV2LmhlYWx0aGludGVyc2VjdGlvbnMuY29tLmF1L29wZW4vRW5jb3VudGVyP3BhcnRpY2lwYW50PTEz"))
		XCTAssertEqual(inst.entity?[0].role?.code, "24")
		XCTAssertEqual(inst.entity?[0].role?.display, "Query")
		XCTAssertEqual(inst.entity?[0].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[0].type?.code, "2")
		XCTAssertEqual(inst.entity?[0].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example-search")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2015-08-22T23:42:24Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source?.site, "Cloud")
		XCTAssertEqual(inst.source?.type?[0].code, "3")
		XCTAssertEqual(inst.source?.type?[0].display, "Web Server")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.subtype?[0].code, "search")
		XCTAssertEqual(inst.subtype?[0].display, "search")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "http://hl7.org/fhir/restful-interaction")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "rest")
		XCTAssertEqual(inst.type?.display, "Restful Operation")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/audit-event-type")
		
		return inst
	}
	
	func testAuditEvent6() {
		do {
			let instance = try runAuditEvent6()
			try runAuditEvent6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "audit-event-example-vread.json")
		
		XCTAssertEqual(inst.action, "R")
		XCTAssertEqual(inst.agent?[0].altId, "601847123")
		XCTAssertEqual(inst.agent?[0].name, "Grahame Grieve")
		XCTAssertTrue(inst.agent?[0].requestor ?? false)
		XCTAssertEqual(inst.agent?[0].userId?.value, "95")
		XCTAssertEqual(inst.agent?[1].altId, "6580")
		XCTAssertEqual(inst.agent?[1].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.entity?[0].lifecycle?.code, "6")
		XCTAssertEqual(inst.entity?[0].lifecycle?.display, "Access / Use")
		XCTAssertEqual(inst.entity?[0].lifecycle?.system?.absoluteString, "http://hl7.org/fhir/object-lifecycle")
		XCTAssertEqual(inst.entity?[0].reference?.reference, "Patient/example/_history/1")
		XCTAssertEqual(inst.entity?[0].type?.code, "2")
		XCTAssertEqual(inst.entity?[0].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example-rest")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2013-06-20T23:42:24Z")
		XCTAssertEqual(inst.source?.identifier?.value, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source?.site, "Cloud")
		XCTAssertEqual(inst.source?.type?[0].code, "3")
		XCTAssertEqual(inst.source?.type?[0].display, "Web Server")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.subtype?[0].code, "vread")
		XCTAssertEqual(inst.subtype?[0].display, "vread")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "http://hl7.org/fhir/restful-interaction")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "rest")
		XCTAssertEqual(inst.type?.display, "Restful Operation")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://hl7.org/fhir/audit-event-type")
		
		return inst
	}
	
	func testAuditEvent7() {
		do {
			let instance = try runAuditEvent7()
			try runAuditEvent7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "auditevent-example-disclosure.json")
		
		XCTAssertEqual(inst.action, "R")
		XCTAssertEqual(inst.agent?[0].altId, "notMe")
		XCTAssertEqual(inst.agent?[0].location?.reference, "Location/1")
		XCTAssertEqual(inst.agent?[0].name, "That guy everyone wishes would be caught")
		XCTAssertEqual(inst.agent?[0].network?.address, "custodian.net")
		XCTAssertEqual(inst.agent?[0].network?.type, "1")
		XCTAssertEqual(inst.agent?[0].policy?[0].absoluteString, "http://consent.com/yes")
		XCTAssertTrue(inst.agent?[0].requestor ?? false)
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[0].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[0].userId?.value, "SomeIdiot@nowhere.com")
		XCTAssertEqual(inst.agent?[1].network?.address, "marketing.land")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertEqual(inst.agent?[1].purposeOfUse?[0].code, "HMARKT")
		XCTAssertEqual(inst.agent?[1].purposeOfUse?[0].display, "healthcare marketing")
		XCTAssertEqual(inst.agent?[1].purposeOfUse?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.agent?[1].reference?.reference, "Practitioner/example")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110152")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Destination Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "Where")
		XCTAssertEqual(inst.entity?[0].reference?.reference, "Patient/example")
		XCTAssertEqual(inst.entity?[0].role?.code, "1")
		XCTAssertEqual(inst.entity?[0].role?.display, "Patient")
		XCTAssertEqual(inst.entity?[0].role?.system?.absoluteString, "http://hl7.org/fhir/valueset-object-role")
		XCTAssertEqual(inst.entity?[0].type?.code, "1")
		XCTAssertEqual(inst.entity?[0].type?.display, "Person")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.entity?[1].description_fhir, "data about Everthing important")
		XCTAssertEqual(inst.entity?[1].identifier?.value, "What.id")
		XCTAssertEqual(inst.entity?[1].lifecycle?.code, "11")
		XCTAssertEqual(inst.entity?[1].lifecycle?.display, "Disclosure")
		XCTAssertEqual(inst.entity?[1].lifecycle?.system?.absoluteString, "http://hl7.org/fhir/object-lifecycle")
		XCTAssertEqual(inst.entity?[1].name, "Namne of What")
		XCTAssertEqual(inst.entity?[1].reference?.reference, "Patient/example/_history/1")
		XCTAssertEqual(inst.entity?[1].role?.code, "4")
		XCTAssertEqual(inst.entity?[1].role?.display, "DomainResource")
		XCTAssertEqual(inst.entity?[1].role?.system?.absoluteString, "http://hl7.org/fhir/valueset-object-role")
		XCTAssertEqual(inst.entity?[1].securityLabel?[0].code, "V")
		XCTAssertEqual(inst.entity?[1].securityLabel?[0].display, "very restricted")
		XCTAssertEqual(inst.entity?[1].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.entity?[1].securityLabel?[1].code, "STD")
		XCTAssertEqual(inst.entity?[1].securityLabel?[1].display, "sexually transmitted disease information sensitivity")
		XCTAssertEqual(inst.entity?[1].securityLabel?[1].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.entity?[1].securityLabel?[2].code, "DELAU")
		XCTAssertEqual(inst.entity?[1].securityLabel?[2].display, "delete after use")
		XCTAssertEqual(inst.entity?[1].securityLabel?[2].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.entity?[1].type?.code, "2")
		XCTAssertEqual(inst.entity?[1].type?.display, "System Object")
		XCTAssertEqual(inst.entity?[1].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example-disclosure")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.outcomeDesc, "Successful  Disclosure")
		XCTAssertEqual(inst.purposeOfEvent?[0].code, "HMARKT")
		XCTAssertEqual(inst.purposeOfEvent?[0].display, "healthcare marketing")
		XCTAssertEqual(inst.purposeOfEvent?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.recorded?.description, "2013-09-22T00:08:00Z")
		XCTAssertEqual(inst.source?.identifier?.value, "Watchers Accounting of Disclosures Application")
		XCTAssertEqual(inst.source?.site, "Watcher")
		XCTAssertEqual(inst.source?.type?[0].code, "4")
		XCTAssertEqual(inst.source?.type?[0].display, "Application Server")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.subtype?[0].code, "Disclosure")
		XCTAssertEqual(inst.subtype?[0].display, "HIPAA disclosure")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Disclosure by some idiot, for marketing reasons, to places unknown, of a Poor Sap, data about Everthing important.</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110106")
		XCTAssertEqual(inst.type?.display, "Export")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
	
	func testAuditEvent8() {
		do {
			let instance = try runAuditEvent8()
			try runAuditEvent8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AuditEvent successfully, but threw")
		}
	}
	
	@discardableResult
	func runAuditEvent8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "auditevent-example.json")
		
		XCTAssertEqual(inst.action, "E")
		XCTAssertEqual(inst.agent?[0].network?.address, "127.0.0.1")
		XCTAssertEqual(inst.agent?[0].network?.type, "2")
		XCTAssertFalse(inst.agent?[0].requestor ?? true)
		XCTAssertEqual(inst.agent?[0].role?[0].text, "Service User (Logon)")
		XCTAssertEqual(inst.agent?[0].userId?.value, "Grahame")
		XCTAssertEqual(inst.agent?[1].altId, "6580")
		XCTAssertEqual(inst.agent?[1].network?.address, "Workstation1.ehr.familyclinic.com")
		XCTAssertEqual(inst.agent?[1].network?.type, "1")
		XCTAssertFalse(inst.agent?[1].requestor ?? true)
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].code, "110153")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].display, "Source Role ID")
		XCTAssertEqual(inst.agent?[1].role?[0].coding?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.agent?[1].userId?.value, "2.16.840.1.113883.4.2|2.16.840.1.113883.4.2")
		XCTAssertEqual(inst.entity?[0].identifier?.type?.coding?[0].code, "SNO")
		XCTAssertEqual(inst.entity?[0].identifier?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/identifier-type")
		XCTAssertEqual(inst.entity?[0].identifier?.type?.text, "Dell Serial Number")
		XCTAssertEqual(inst.entity?[0].identifier?.value, "ABCDEF")
		XCTAssertEqual(inst.entity?[0].lifecycle?.code, "6")
		XCTAssertEqual(inst.entity?[0].lifecycle?.display, "Access / Use")
		XCTAssertEqual(inst.entity?[0].lifecycle?.system?.absoluteString, "http://hl7.org/fhir/object-lifecycle")
		XCTAssertEqual(inst.entity?[0].name, "Grahame's Laptop")
		XCTAssertEqual(inst.entity?[0].role?.code, "4")
		XCTAssertEqual(inst.entity?[0].role?.display, "Domain Resource")
		XCTAssertEqual(inst.entity?[0].role?.system?.absoluteString, "http://hl7.org/fhir/object-role")
		XCTAssertEqual(inst.entity?[0].type?.code, "4")
		XCTAssertEqual(inst.entity?[0].type?.display, "Other")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://hl7.org/fhir/object-type")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.outcome, "0")
		XCTAssertEqual(inst.recorded?.description, "2012-10-25T22:04:27+11:00")
		XCTAssertEqual(inst.source?.identifier?.value, "Grahame's Laptop")
		XCTAssertEqual(inst.source?.site, "Development")
		XCTAssertEqual(inst.source?.type?[0].code, "1")
		XCTAssertEqual(inst.source?.type?[0].system?.absoluteString, "http://hl7.org/fhir/audit-event-sub-type")
		XCTAssertEqual(inst.subtype?[0].code, "110120")
		XCTAssertEqual(inst.subtype?[0].display, "Application Start")
		XCTAssertEqual(inst.subtype?[0].system?.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Application Start for under service login &quot;Grahame&quot; (id: Grahame's Test HL7Connect)</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.code, "110100")
		XCTAssertEqual(inst.type?.display, "Application Activity")
		XCTAssertEqual(inst.type?.system?.absoluteString, "http://nema.org/dicom/dicm")
		
		return inst
	}
}
