//
//  SecurityEventTests.swift
//  SecurityEventTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SecurityEventTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> SecurityEvent? {
		let json = readJSONFile(filename)
		let instance = SecurityEvent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSecurityEvent1() {
		let inst = instantiateFrom("security-event-example-login.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:41:23Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent2() {
		let inst = instantiateFrom("security-event-example-login.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:41:23Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent3() {
		let inst = instantiateFrom("security-event-example-login.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:41:23Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent4() {
		let inst = instantiateFrom("security-event-example-logout.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:46:41Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110123")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Logout")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent5() {
		let inst = instantiateFrom("security-event-example-logout.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:46:41Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110123")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Logout")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent6() {
		let inst = instantiateFrom("security-event-example-vread.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "R")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:42:24Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "vread")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/restful-interaction")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "rest")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/security-event-type")!)
		XCTAssertEqual(inst!.object![0].lifecycle!, "6")
		XCTAssertEqual(inst!.object![0].reference!.reference!, "Patient/example/_history/1")
		XCTAssertEqual(inst!.object![0].type!, "2")
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent7() {
		let inst = instantiateFrom("security-event-example-vread.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "R")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:42:24Z")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "vread")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/restful-interaction")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "rest")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/security-event-type")!)
		XCTAssertEqual(inst!.object![0].lifecycle!, "6")
		XCTAssertEqual(inst!.object![0].reference!.reference!, "Patient/example/_history/1")
		XCTAssertEqual(inst!.object![0].type!, "2")
		XCTAssertEqual(inst!.participant![0].altId!, "601847123")
		XCTAssertEqual(inst!.participant![0].name!, "Grahame Grieve")
		XCTAssertTrue(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].userId!, "95")
		XCTAssertEqual(inst!.source!.identifier!, "hl7connect.healthintersections.com.au")
		XCTAssertEqual(inst!.source!.site!, "Cloud")
		XCTAssertEqual(inst!.source!.type![0].code!, "3")
		XCTAssertEqual(inst!.source!.type![0].display!, "Web Server")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-source-type")!)
	}
	
	func testSecurityEvent8() {
		let inst = instantiateFrom("securityevent-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2012-10-25T22:04:27+11:00")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110120")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Application Start")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110100")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "Application Activity")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.object![0].identifier!.label!, "Dell Serial Number")
		XCTAssertEqual(inst!.object![0].identifier!.value!, "ABCDEF")
		XCTAssertEqual(inst!.object![0].lifecycle!, "6")
		XCTAssertEqual(inst!.object![0].name!, "Grahame's Laptop")
		XCTAssertEqual(inst!.object![0].role!, "4")
		XCTAssertEqual(inst!.object![0].type!, "4")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertFalse(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].role![0].text!, "Service User (Logon)")
		XCTAssertEqual(inst!.participant![0].userId!, "Grahame")
		XCTAssertEqual(inst!.source!.identifier!, "Grahame's Laptop")
		XCTAssertEqual(inst!.source!.site!, "Development")
		XCTAssertEqual(inst!.source!.type![0].code!, "1")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-event-sub-type")!)
	}
	
	func testSecurityEvent9() {
		let inst = instantiateFrom("securityevent-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
	
		XCTAssertEqual(inst!.event!.action!, "E")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2012-10-25T22:04:27+11:00")!)
		XCTAssertEqual(inst!.event!.outcome!, "0")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "110120")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "Application Start")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "110100")
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "Application Activity")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)
		XCTAssertEqual(inst!.object![0].identifier!.label!, "Dell Serial Number")
		XCTAssertEqual(inst!.object![0].identifier!.value!, "ABCDEF")
		XCTAssertEqual(inst!.object![0].lifecycle!, "6")
		XCTAssertEqual(inst!.object![0].name!, "Grahame's Laptop")
		XCTAssertEqual(inst!.object![0].role!, "4")
		XCTAssertEqual(inst!.object![0].type!, "4")
		XCTAssertEqual(inst!.participant![0].network!.identifier!, "127.0.0.1")
		XCTAssertEqual(inst!.participant![0].network!.type!, "2")
		XCTAssertFalse(inst!.participant![0].requestor!)
		XCTAssertEqual(inst!.participant![0].role![0].text!, "Service User (Logon)")
		XCTAssertEqual(inst!.participant![0].userId!, "Grahame")
		XCTAssertEqual(inst!.source!.identifier!, "Grahame's Laptop")
		XCTAssertEqual(inst!.source!.site!, "Development")
		XCTAssertEqual(inst!.source!.type![0].code!, "1")
		XCTAssertEqual(inst!.source!.type![0].system!, NSURL(string: "http://hl7.org/fhir/security-event-sub-type")!)
	}
}
