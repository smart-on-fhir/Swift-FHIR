//
//  DocumentReferenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DocumentReferenceTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> DocumentReference {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DocumentReference {
		let instance = DocumentReference(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentReference1() throws {
		let instance = try runDocumentReference1()
		try runDocumentReference1(instance.asJSON())
	}
	
	func runDocumentReference1(json: FHIRJSON? = nil) throws -> DocumentReference {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "documentreference-example.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.author![1].reference!, "#a2")
		XCTAssertEqual(inst.class_fhir!.coding![0].code!, "History and Physical")
		XCTAssertEqual(inst.class_fhir!.coding![0].display!, "History and Physical")
		XCTAssertEqual(inst.class_fhir!.coding![0].system!.absoluteString, "http://ihe.net/xds/connectathon/classCodes")
		XCTAssertEqual(inst.confidentiality![0].coding![0].code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst.confidentiality![0].coding![0].display!, "Clinical-Staff")
		XCTAssertEqual(inst.confidentiality![0].coding![0].system!.absoluteString, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst.content![0].contentType!, "application/hl7-v3+xml")
		XCTAssertEqual(inst.content![0].hash!, Base64Binary(value: "2jmj7l5rSw0yVb/vlWAYkK/YBwk="))
		XCTAssertEqual(inst.content![0].language!, "en-US")
		XCTAssertEqual(inst.content![0].size!, UInt(3654))
		XCTAssertEqual(inst.content![0].url!.absoluteString, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.context!.event![0].coding![0].code!, "T-D8200")
		XCTAssertEqual(inst.context!.event![0].coding![0].display!, "Arm")
		XCTAssertEqual(inst.context!.event![0].coding![0].system!.absoluteString, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].code!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].display!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].system!.absoluteString, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context!.period!.end!.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context!.period!.start!.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.created!.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indexed!.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier!.value!, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "34108-1")
		XCTAssertEqual(inst.type!.coding![0].display!, "Outpatient Note")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://loinc.org")
		
		return inst
	}
}
