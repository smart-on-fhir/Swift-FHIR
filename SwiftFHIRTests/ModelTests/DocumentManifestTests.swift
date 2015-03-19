//
//  DocumentManifestTests.swift
//  DocumentManifestTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class DocumentManifestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> DocumentManifest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> DocumentManifest {
		let instance = DocumentManifest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentManifest1() {
		let instance = testDocumentManifest1_impl()
		testDocumentManifest1_impl(json: instance.asJSON())
	}
	
	func testDocumentManifest1_impl(json: JSONDictionary? = nil) -> DocumentManifest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "documentmanifest-example.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.content![0].reference!, "DocumentReference/example")
		XCTAssertEqual(inst.created!.description, "2004-12-25T23:50:50-05:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString!, "http://example.org/documents")
		XCTAssertEqual(inst.masterIdentifier!.value!, "23425234234-2346")
		XCTAssertEqual(inst.source!.absoluteString!, "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.text!.div!, "<div>Text</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "History and Physical")
		
		return inst
	}
}
