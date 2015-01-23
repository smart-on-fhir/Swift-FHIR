//
//  SecurityEventTests.swift
//  SecurityEventTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SecurityEventTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> SecurityEvent {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> SecurityEvent {
		let instance = SecurityEvent(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSecurityEvent1() {
		let instance = testSecurityEvent1_impl()
		testSecurityEvent1_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent1_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-login.canonical.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:41:23Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		
		return inst
	}
	
	func testSecurityEvent2() {
		let instance = testSecurityEvent2_impl()
		testSecurityEvent2_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent2_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-login.canonical.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:41:23Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		
		return inst
	}
	
	func testSecurityEvent3() {
		let instance = testSecurityEvent3_impl()
		testSecurityEvent3_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent3_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-login.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:41:23Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110122")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Login")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		
		return inst
	}
	
	func testSecurityEvent4() {
		let instance = testSecurityEvent4_impl()
		testSecurityEvent4_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent4_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-logout.canonical.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:46:41Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110123")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Logout")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		
		return inst
	}
	
	func testSecurityEvent5() {
		let instance = testSecurityEvent5_impl()
		testSecurityEvent5_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent5_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-logout.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:46:41Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110123")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Logout")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110114")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "User Authentication")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		
		return inst
	}
	
	func testSecurityEvent6() {
		let instance = testSecurityEvent6_impl()
		testSecurityEvent6_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent6_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-vread.canonical.json")
		
		XCTAssertEqual(inst.event!.action!, "R")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:42:24Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/restful-interaction")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "rest")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/security-event-type")
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
		
		return inst
	}
	
	func testSecurityEvent7() {
		let instance = testSecurityEvent7_impl()
		testSecurityEvent7_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent7_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "security-event-example-vread.json")
		
		XCTAssertEqual(inst.event!.action!, "R")
		XCTAssertEqual(inst.event!.dateTime!.description, "2013-06-20T23:42:24Z")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/restful-interaction")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "rest")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/security-event-type")
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
		
		return inst
	}
	
	func testSecurityEvent8() {
		let instance = testSecurityEvent8_impl()
		testSecurityEvent8_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent8_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "securityevent-example.canonical.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2012-10-25T22:04:27+11:00")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110120")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Application Start")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110100")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Application Activity")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/security-event-sub-type")
		
		return inst
	}
	
	func testSecurityEvent9() {
		let instance = testSecurityEvent9_impl()
		testSecurityEvent9_impl(json: instance.asJSON())
	}
	
	func testSecurityEvent9_impl(json: JSONDictionary? = nil) -> SecurityEvent {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "securityevent-example.json")
		
		XCTAssertEqual(inst.event!.action!, "E")
		XCTAssertEqual(inst.event!.dateTime!.description, "2012-10-25T22:04:27+11:00")
		XCTAssertEqual(inst.event!.outcome!, "0")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].code!, "110120")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].display!, "Application Start")
		XCTAssertEqual(inst.event!.subtype![0].coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.event!.type!.coding![0].code!, "110100")
		XCTAssertEqual(inst.event!.type!.coding![0].display!, "Application Activity")
		XCTAssertEqual(inst.event!.type!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
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
		XCTAssertEqual(inst.source!.type![0].system!.absoluteString!, "http://hl7.org/fhir/security-event-sub-type")
		
		return inst
	}
}
