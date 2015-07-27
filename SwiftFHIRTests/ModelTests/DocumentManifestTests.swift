//
//  DocumentManifestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class DocumentManifestTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> DocumentManifest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> DocumentManifest {
		let instance = DocumentManifest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDocumentManifest1() throws {
		let instance = try testDocumentManifest1_impl()
		try testDocumentManifest1_impl(instance.asJSON())
	}
	
	func testDocumentManifest1_impl(json: FHIRJSON? = nil) throws -> DocumentManifest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "documentmanifest-example.json")
		
		XCTAssertEqual(inst.author![0].reference!, "#a1")
		XCTAssertEqual(inst.content![0].pReference!.reference!, "DocumentReference/example")
		XCTAssertEqual(inst.created!.description, "2004-12-25T23:50:50-05:00")
		XCTAssertEqual(inst.description_fhir!, "Physical")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.masterIdentifier!.system!.absoluteString, "http://example.org/documents")
		XCTAssertEqual(inst.masterIdentifier!.value!, "23425234234-2346")
		XCTAssertEqual(inst.source!.absoluteString, "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")
		XCTAssertEqual(inst.status!, "current")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.text!.div!, "<div>Text</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.text!, "History and Physical")
		
		return inst
	}
}
