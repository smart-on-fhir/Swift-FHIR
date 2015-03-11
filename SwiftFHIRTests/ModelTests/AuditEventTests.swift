//
//  AuditEventTests.swift
//  AuditEventTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class AuditEventTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> AuditEvent {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> AuditEvent {
		let instance = AuditEvent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAuditEvent1() {
		let instance = testAuditEvent1_impl()
		testAuditEvent1_impl(json: instance.asJSON())
	}
	
	func testAuditEvent1_impl(json: JSONDictionary? = nil) -> AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "audit-event-example-login.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:41:23Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.id!, "example-login")
		XCTAssertEqual(inst.participant![0].altId!, "601847123")
		XCTAssertEqual(inst.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst.participant![0].network!.type!, "2")
		XCTAssertTrue(inst.participant![0].requestor!)
		XCTAssertEqual(inst.participant![0].userId!, "95")
		XCTAssertEqual(inst.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source!.site!, "Cloud")
		XCTAssertEqual(inst.source!.type![0].code!, "3")
		XCTAssertEqual(inst.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testAuditEvent2() {
		let instance = testAuditEvent2_impl()
		testAuditEvent2_impl(json: instance.asJSON())
	}
	
	func testAuditEvent2_impl(json: JSONDictionary? = nil) -> AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "audit-event-example-logout.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:46:41Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110123")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Logout")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.id!, "example-logout")
		XCTAssertEqual(inst.participant![0].altId!, "601847123")
		XCTAssertEqual(inst.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst.participant![0].network!.type!, "2")
		XCTAssertTrue(inst.participant![0].requestor!)
		XCTAssertEqual(inst.participant![0].userId!, "95")
		XCTAssertEqual(inst.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source!.site!, "Cloud")
		XCTAssertEqual(inst.source!.type![0].code!, "3")
		XCTAssertEqual(inst.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testAuditEvent3() {
		let instance = testAuditEvent3_impl()
		testAuditEvent3_impl(json: instance.asJSON())
	}
	
	func testAuditEvent3_impl(json: JSONDictionary? = nil) -> AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "audit-event-example-vread.json")
		
		XCTAssertEqual(inst.event!.action!, "R")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:42:24Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/restful-interaction")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "rest")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/audit-event-type")
		XCTAssertEqual(inst.id!, "example-rest")
		XCTAssertEqual(inst.object![0].lifecycle!, "6")
		XCTAssertEqual(inst.object![0].reference!.reference!, "Patient/example/_history/1")
		XCTAssertEqual(inst.object![0].type!, "2")
		XCTAssertEqual(inst.participant![0].altId!, "601847123")
		XCTAssertEqual(inst.participant![0].name!, "Grahame Grieve")
		XCTAssertTrue(inst.participant![0].requestor!)
		XCTAssertEqual(inst.participant![0].userId!, "95")
		XCTAssertEqual(inst.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst.source!.site!, "Cloud")
		XCTAssertEqual(inst.source!.type![0].code!, "3")
		XCTAssertEqual(inst.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/security-source-type")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testAuditEvent4() {
		let instance = testAuditEvent4_impl()
		testAuditEvent4_impl(json: instance.asJSON())
	}
	
	func testAuditEvent4_impl(json: JSONDictionary? = nil) -> AuditEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "auditevent-example.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2012-10-25T22:04:27+11:00")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110120")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Application Start")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110100")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Application Activity")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.object![0].identifier!.label!, "Dell Serial Number")
		XCTAssertEqual(inst.object![0].identifier!.value!, "ABCDEF")
		XCTAssertEqual(inst.object![0].lifecycle!, "6")
		XCTAssertEqual(inst.object![0].name!, "Grahame's Laptop")
		XCTAssertEqual(inst.object![0].role!, "4")
		XCTAssertEqual(inst.object![0].type!, "4")
		XCTAssertEqual(inst.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst.participant![0].network!.type!, "2")
		XCTAssertFalse(inst.participant![0].requestor!)
		XCTAssertEqual(inst.participant![0].role![0].text!, "Service User (Logon)")
		XCTAssertEqual(inst.participant![0].userId!, "Grahame")
		XCTAssertEqual(inst.source!.identifier!, "Grahame's Laptop")
		XCTAssertEqual(inst.source!.site!, "Development")
		XCTAssertEqual(inst.source!.type![0].code!, "1")
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/audit-event-sub-type")
		XCTAssertEqual(inst.text!.div!, "<div>Application Start for under service login &quot;Grahame&quot; (id: Grahame's Test HL7Connect)</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
