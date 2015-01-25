//
//  DocumentReferenceTests.swift
//  DocumentReferenceTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-25.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DocumentReferenceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DocumentReference {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DocumentReference {
		let instance = DocumentReference(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentReference1() {
		let instance = testDocumentReference1_impl()
		testDocumentReference1_impl(json: instance.asJSON())
	}
	
	func testDocumentReference1_impl(json: JSONDictionary? = nil) -> DocumentReference {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "documentreference-example.canonical.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.author![1].reference!, "#a2")
		XCTAssertEqual(inst.confidentiality![0].coding![0].code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst.confidentiality![0].coding![0].display!, "Clinical-Staff")
		XCTAssertEqual(inst.confidentiality![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst.context!.event![0].coding![0].code!, "T-D8200")
		XCTAssertEqual(inst.context!.event![0].coding![0].display!, "Arm")
		XCTAssertEqual(inst.context!.event![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].code!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].display!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].system!.absoluteString!, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context!.period!.end!.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context!.period!.start!.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.created!.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		// Don't know how to create unit test for "hash!", which is a Base64Binary
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indexed!.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.location!.absoluteString!, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier!.value!, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.mimeType!, "application/hl7-v3+xml")
		XCTAssertEqual(inst.primaryLanguage!, "en-US")
		XCTAssertEqual(inst.size!, 3654)
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.type!.coding![0].code!, "34108-1")
		XCTAssertEqual(inst.type!.coding![0].display!, "Outpatient Note")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://loinc.org")
		
		return inst
	}
	
	func testDocumentReference2() {
		let instance = testDocumentReference2_impl()
		testDocumentReference2_impl(json: instance.asJSON())
	}
	
	func testDocumentReference2_impl(json: JSONDictionary? = nil) -> DocumentReference {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "documentreference-example.canonical.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.author![1].reference!, "#a2")
		XCTAssertEqual(inst.confidentiality![0].coding![0].code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst.confidentiality![0].coding![0].display!, "Clinical-Staff")
		XCTAssertEqual(inst.confidentiality![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst.context!.event![0].coding![0].code!, "T-D8200")
		XCTAssertEqual(inst.context!.event![0].coding![0].display!, "Arm")
		XCTAssertEqual(inst.context!.event![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].code!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].display!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].system!.absoluteString!, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context!.period!.end!.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context!.period!.start!.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.created!.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		// Don't know how to create unit test for "hash!", which is a Base64Binary
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indexed!.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.location!.absoluteString!, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier!.value!, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.mimeType!, "application/hl7-v3+xml")
		XCTAssertEqual(inst.primaryLanguage!, "en-US")
		XCTAssertEqual(inst.size!, 3654)
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.type!.coding![0].code!, "34108-1")
		XCTAssertEqual(inst.type!.coding![0].display!, "Outpatient Note")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://loinc.org")
		
		return inst
	}
	
	func testDocumentReference3() {
		let instance = testDocumentReference3_impl()
		testDocumentReference3_impl(json: instance.asJSON())
	}
	
	func testDocumentReference3_impl(json: JSONDictionary? = nil) -> DocumentReference {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "documentreference-example.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.author![1].reference!, "#a2")
		XCTAssertEqual(inst.confidentiality![0].coding![0].code!, "1.3.6.1.4.1.21367.2006.7.101")
		XCTAssertEqual(inst.confidentiality![0].coding![0].display!, "Clinical-Staff")
		XCTAssertEqual(inst.confidentiality![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/confidentialityCodes")
		XCTAssertEqual(inst.context!.event![0].coding![0].code!, "T-D8200")
		XCTAssertEqual(inst.context!.event![0].coding![0].display!, "Arm")
		XCTAssertEqual(inst.context!.event![0].coding![0].system!.absoluteString!, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].code!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].display!, "Outpatient")
		XCTAssertEqual(inst.context!.facilityType!.coding![0].system!.absoluteString!, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context!.period!.end!.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context!.period!.start!.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.created!.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		// Don't know how to create unit test for "hash!", which is a Base64Binary
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.indexed!.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.location!.absoluteString!, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier!.value!, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.mimeType!, "application/hl7-v3+xml")
		XCTAssertEqual(inst.primaryLanguage!, "en-US")
		XCTAssertEqual(inst.size!, 3654)
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.type!.coding![0].code!, "34108-1")
		XCTAssertEqual(inst.type!.coding![0].display!, "Outpatient Note")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://loinc.org")
		
		return inst
	}
}
