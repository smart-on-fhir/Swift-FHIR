//
//  SecurityEventTests.swift
//  SecurityEventTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-26.
//  2014, SMART Platforms.
//

import Cocoa
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
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <h3>Events</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Subtype</b>\n          </td>\n          <td>\n            <b>Action</b>\n          </td>\n          <td>\n            <b>DateTime</b>\n          </td>\n          <td>\n            <b>Outcome</b>\n          </td>\n          <td>\n            <b>OutcomeDesc</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://nema.org/dicom/dcid 110114}\">User Authentication</span>\n          </td>\n          <td>\n            <span title=\"Codes: {http://nema.org/dicom/dcid 110122}\">Login</span>\n          </td>\n          <td>E</td>\n          <td>20-Jun 2013 23:41</td>\n          <td>_0</td>\n          <td> </td>\n        </tr>\n      </table>\n      <blockquote>\n        <p>\n          <b>participant</b>\n        </p>\n        <p>\n          <b>userId</b>: 95\n        </p>\n        <p>\n          <b>altId</b>: 601847123\n        </p>\n        <p>\n          <b>name</b>: Grahame Grieve\n        </p>\n        <p>\n          <b>requestor</b>: true\n        </p>\n        <h3>Networks</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Identifier</b>\n            </td>\n            <td>\n              <b>Type</b>\n            </td>\n          </tr>\n          <tr>\n            <td>127.0.0.1</td>\n            <td>_2</td>\n          </tr>\n        </table>\n      </blockquote>\n      <h3>Sources</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Site</b>\n          </td>\n          <td>\n            <b>Identifier</b>\n          </td>\n          <td>\n            <b>Type</b>\n          </td>\n        </tr>\n        <tr>\n          <td>Cloud</td>\n          <td>hl7connect.healthintersections.com.au</td>\n          <td>\n            <span title=\"{http://hl7.org/fhir/security-source-type 3}\">Web Server</span>\n          </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testSecurityEvent2() {
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
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <h3>Events</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Subtype</b>\n          </td>\n          <td>\n            <b>Action</b>\n          </td>\n          <td>\n            <b>DateTime</b>\n          </td>\n          <td>\n            <b>Outcome</b>\n          </td>\n          <td>\n            <b>OutcomeDesc</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://nema.org/dicom/dcid 110114}\">User Authentication</span>\n          </td>\n          <td>\n            <span title=\"Codes: {http://nema.org/dicom/dcid 110123}\">Logout</span>\n          </td>\n          <td>E</td>\n          <td>20-Jun 2013 23:46</td>\n          <td>_0</td>\n          <td> </td>\n        </tr>\n      </table>\n      <blockquote>\n        <p>\n          <b>participant</b>\n        </p>\n        <p>\n          <b>userId</b>: 95\n        </p>\n        <p>\n          <b>altId</b>: 601847123\n        </p>\n        <p>\n          <b>name</b>: Grahame Grieve\n        </p>\n        <p>\n          <b>requestor</b>: true\n        </p>\n        <h3>Networks</h3>\n        <table class=\"grid\">\n          <tr>\n            <td>\n              <b>Identifier</b>\n            </td>\n            <td>\n              <b>Type</b>\n            </td>\n          </tr>\n          <tr>\n            <td>127.0.0.1</td>\n            <td>_2</td>\n          </tr>\n        </table>\n      </blockquote>\n      <h3>Sources</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Site</b>\n          </td>\n          <td>\n            <b>Identifier</b>\n          </td>\n          <td>\n            <b>Type</b>\n          </td>\n        </tr>\n        <tr>\n          <td>Cloud</td>\n          <td>hl7connect.healthintersections.com.au</td>\n          <td>\n            <span title=\"{http://hl7.org/fhir/security-source-type 3}\">Web Server</span>\n          </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
	
	func testSecurityEvent3() {
		let inst = instantiateFrom("security-event-example-vread.json")
		XCTAssertNotNil(inst, "Must have instantiated a SecurityEvent instance")
		
		XCTAssertEqual(inst!.event!.action!, "R")
		XCTAssertEqual(inst!.event!.dateTime!, NSDate.dateFromISOString("2013-06-20T23:42:24Z")!)	
		XCTAssertEqual(inst!.event!.outcome!, "0")	
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].code!, "vread")	
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].display!, "vread")
		XCTAssertEqual(inst!.event!.subtype![0].coding![0].system!, NSURL(string: "http://hl7.org/fhir/restful-operation")!)	
		XCTAssertEqual(inst!.event!.type!.coding![0].code!, "rest")	
		XCTAssertEqual(inst!.event!.type!.coding![0].display!, "Restful Operation")
		XCTAssertEqual(inst!.event!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/security-event-type")!)	
		XCTAssertEqual(inst!.object![0].lifecycle!, "6")	
		XCTAssertEqual(inst!.object![0].reference!.reference!, "Patient/example/history/1")	
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
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <h3>Events</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Type</b>\n          </td>\n          <td>\n            <b>Subtype</b>\n          </td>\n          <td>\n            <b>Action</b>\n          </td>\n          <td>\n            <b>DateTime</b>\n          </td>\n          <td>\n            <b>Outcome</b>\n          </td>\n          <td>\n            <b>OutcomeDesc</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/security-event-type rest}\">Restful Operation</span>\n          </td>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/restful-operation vread}\">vread</span>\n          </td>\n          <td>R</td>\n          <td>20-Jun 2013 23:42</td>\n          <td>_0</td>\n          <td> </td>\n        </tr>\n      </table>\n      <blockquote>\n        <p>\n          <b>participant</b>\n        </p>\n        <p>\n          <b>userId</b>: 95\n        </p>\n        <p>\n          <b>altId</b>: 601847123\n        </p>\n        <p>\n          <b>name</b>: Grahame Grieve\n        </p>\n        <p>\n          <b>requestor</b>: true\n        </p>\n      </blockquote>\n      <h3>Sources</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Site</b>\n          </td>\n          <td>\n            <b>Identifier</b>\n          </td>\n          <td>\n            <b>Type</b>\n          </td>\n        </tr>\n        <tr>\n          <td>Cloud</td>\n          <td>hl7connect.healthintersections.com.au</td>\n          <td>\n            <span title=\"{http://hl7.org/fhir/security-source-type 3}\">Web Server</span>\n          </td>\n        </tr>\n      </table>\n      <blockquote>\n        <p>\n          <b>object</b>\n        </p>\n        <p>\n          <b>reference</b>: \n          <a href=\"Patient/example/history/1\">Patient/example/history/1</a>\n        </p>\n        <p>\n          <b>type</b>: _2\n        </p>\n        <p>\n          <b>lifecycle</b>: _6\n        </p>\n      </blockquote>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
