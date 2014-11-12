//
//  DocumentReferenceTests.swift
//  DocumentReferenceTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DocumentReferenceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DocumentReference? {
		let json = readJSONFile(filename)
		let instance = DocumentReference(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentReference1() {
		let inst = instantiateFrom("documentreference-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DocumentReference instance")
		
		XCTAssertEqual(inst!.author![0].reference!, "#a1")	
		XCTAssertEqual(inst!.author![1].reference!, "#a2")	
//		XCTAssertEqual(inst!.confidentiality![0].coding![0].code!, "1.3.6.1.4.1.21367.2006.7.101")	
//		XCTAssertEqual(inst!.confidentiality![0].coding![0].display!, "Clinical-Staff")
//		XCTAssertEqual(inst!.confidentiality![0].coding![0].system!, NSURL(string: "http://ihe.net/xds/connectathon/confidentialityCodes")!)	
		XCTAssertEqual(inst!.context!.event![0].coding![0].code!, "T-D8200")
		XCTAssertEqual(inst!.context!.event![0].coding![0].display!, "Arm")
		XCTAssertEqual(inst!.context!.event![0].coding![0].system!, NSURL(string: "http://ihe.net/xds/connectathon/eventCodes")!)	
		XCTAssertEqual(inst!.context!.facilityType!.coding![0].code!, "Outpatient")	
		XCTAssertEqual(inst!.context!.facilityType!.coding![0].display!, "Outpatient")
		XCTAssertEqual(inst!.context!.facilityType!.coding![0].system!, NSURL(string: "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")!)
		XCTAssertEqual(inst!.context!.period!.end!, NSDate.dateFromISOString("2004-12-23T08:01:00")!)
		XCTAssertEqual(inst!.context!.period!.start!, NSDate.dateFromISOString("2004-12-23T08:00:00")!)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2005-12-24T09:35:00+11:00")!)	
		XCTAssertEqual(inst!.description!, "Physical")	
		XCTAssertEqual(inst!.hash!, "da39a3ee5e6b4b0d3255bfef95601890afd80709")
		XCTAssertEqual(inst!.indexed!, NSDate.dateFromISOString("2005-12-24T09:43:41+11:00")!)
		XCTAssertEqual(inst!.location!, NSURL(string: "http://example.org/xds/mhd/Binary/@07a6483f-732b-461e-86b6-edb665c45510")!)
		XCTAssertEqual(inst!.masterIdentifier!.system!, NSURL(string: "urn:ietf:rfc:3986")!)	
		XCTAssertEqual(inst!.masterIdentifier!.value!, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")	
		XCTAssertEqual(inst!.mimeType!, "application/hl7-v3+xml")	
		XCTAssertEqual(inst!.primaryLanguage!, "en-US")
		XCTAssertEqual(inst!.size!, 3654)	
		XCTAssertEqual(inst!.status!, "current")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/xcda")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>masterIdentifier</b>: urn:oid:1.3.6.1.4.1.21367.2005.3.7\n      </p>\n      <p>\n        <b>subject</b>: \n        <a href=\"patient-example-xcda.html\">MRN = 12345 (usual); Henry Levin ; Male; birthDate: 24-Sep 1932; active</a>\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://loinc.org 34108-1}\">Outpatient Note</span>\n      </p>\n      <p>\n        <b>author</b>: Sherry Dopplemeyer ; Primary Surgon; Orthopedic, Gerald Smitty ; Attending; Orthopedic\n      </p>\n      <p>\n        <b>created</b>: 24-Dec 2005 9:35\n      </p>\n      <p>\n        <b>indexed</b>: 24-Dec 2005 9:43\n      </p>\n      <p>\n        <b>status</b>: current\n      </p>\n      <p>\n        <b>description</b>: Physical\n      </p>\n      <p>\n        <b>confidentiality</b>: \n        <span title=\"Codes: {http://ihe.net/xds/connectathon/confidentialityCodes 1.3.6.1.4.1.21367.2006.7.101}\">Clinical-Staff</span>\n      </p>\n      <p>\n        <b>primaryLanguage</b>: en-US\n      </p>\n      <p>\n        <b>mimeType</b>: application/hl7-v3+xml\n      </p>\n      <p>\n        <b>size</b>: 3654\n      </p>\n      <p>\n        <b>hash</b>: da39a3ee5e6b4b0d3255bfef95601890afd80709\n      </p>\n      <p>\n        <b>location</b>: \n        <a href=\"http://example.org/xds/mhd/Binary/@07a6483f-732b-461e-86b6-edb665c45510\">http://example.org/xds/mhd/Binary/@07a6483f-732b-461e-86b6-edb665c45510</a>\n      </p>\n      <h3>Contexts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Event</b>\n          </td>\n          <td>\n            <b>Period</b>\n          </td>\n          <td>\n            <b>FacilityType</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://ihe.net/xds/connectathon/eventCodes T-D8200}\">Arm</span>\n          </td>\n          <td>23-Dec 2004 8:0 --&gt; 23-Dec 2004 8:1</td>\n          <td>\n            <span title=\"Codes: {http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes Outpatient}\">Outpatient</span>\n          </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "34108-1")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Outpatient Note")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://loinc.org")!)
	}
}
