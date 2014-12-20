//
//  DocumentManifestTests.swift
//  DocumentManifestTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DocumentManifestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DocumentManifest? {
		let json = readJSONFile(filename)
		let instance = DocumentManifest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentManifest1() {
		let inst = instantiateFrom("documentmanifest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DocumentManifest instance")
	
		XCTAssertEqual(inst!.author![0].reference!, "#a1")
		XCTAssertEqual(inst!.content![0].reference!, "DocumentReference/example")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2004-12-25T23:50:50")!)
		XCTAssertEqual(inst!.description!, "Physical")
		XCTAssertEqual(inst!.masterIdentifier!.system!, NSURL(string: "http://example.org/documents")!)
		XCTAssertEqual(inst!.masterIdentifier!.value!, "23425234234-2346")
		XCTAssertEqual(inst!.source!, NSURL(string: "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")!)
		XCTAssertEqual(inst!.status!, "current")
		XCTAssertEqual(inst!.subject![0].reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.text!, "History and Physical")
	}
	
	func testDocumentManifest2() {
		let inst = instantiateFrom("documentmanifest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a DocumentManifest instance")
	
		XCTAssertEqual(inst!.author![0].reference!, "#a1")
		XCTAssertEqual(inst!.content![0].reference!, "DocumentReference/example")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2004-12-25T23:50:50")!)
		XCTAssertEqual(inst!.description!, "Physical")
		XCTAssertEqual(inst!.masterIdentifier!.system!, NSURL(string: "http://example.org/documents")!)
		XCTAssertEqual(inst!.masterIdentifier!.value!, "23425234234-2346")
		XCTAssertEqual(inst!.source!, NSURL(string: "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")!)
		XCTAssertEqual(inst!.status!, "current")
		XCTAssertEqual(inst!.subject![0].reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.text!, "History and Physical")
	}
	
	func testDocumentManifest3() {
		let inst = instantiateFrom("documentmanifest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DocumentManifest instance")
	
		XCTAssertEqual(inst!.author![0].reference!, "#a1")
		XCTAssertEqual(inst!.content![0].reference!, "DocumentReference/example")
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2004-12-25T23:50:50")!)
		XCTAssertEqual(inst!.description!, "Physical")
		XCTAssertEqual(inst!.masterIdentifier!.system!, NSURL(string: "http://example.org/documents")!)
		XCTAssertEqual(inst!.masterIdentifier!.value!, "23425234234-2346")
		XCTAssertEqual(inst!.source!, NSURL(string: "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")!)
		XCTAssertEqual(inst!.status!, "current")
		XCTAssertEqual(inst!.subject![0].reference!, "Patient/xcda")
		XCTAssertEqual(inst!.type!.text!, "History and Physical")
	}
}
