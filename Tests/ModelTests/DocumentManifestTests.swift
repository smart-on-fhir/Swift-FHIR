//
//  DocumentManifestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDocumentManifest = Models.DocumentManifest
#else
import SwiftFHIR
typealias SwiftFHIRDocumentManifest = SwiftFHIR.DocumentManifest
#endif


class DocumentManifestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDocumentManifest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDocumentManifest {
		return try SwiftFHIRDocumentManifest(json: json)
	}
	
	func testDocumentManifest1() {
		do {
			let instance = try runDocumentManifest1()
			try runDocumentManifest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DocumentManifest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDocumentManifest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDocumentManifest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "documentmanifest-example.json")
		
		XCTAssertEqual(inst.author?[0].reference, "#a1")
		XCTAssertEqual(inst.contained?[0].id, "a1")
		XCTAssertEqual(inst.content?[0].pReference?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.created?.description, "2004-12-25T23:50:50-05:00")
		XCTAssertEqual(inst.description_fhir, "Physical")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/documents")
		XCTAssertEqual(inst.identifier?[0].value, "23425234234-2347")
		XCTAssertEqual(inst.masterIdentifier?.system?.absoluteString, "http://example.org/documents")
		XCTAssertEqual(inst.masterIdentifier?.value, "23425234234-2346")
		XCTAssertEqual(inst.recipient?[0].reference, "Practitioner/xcda1")
		XCTAssertEqual(inst.related?[0].identifier?.system?.absoluteString, "http://example.org/documents")
		XCTAssertEqual(inst.related?[0].identifier?.value, "23425234234-9999")
		XCTAssertEqual(inst.related?[0].ref?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.source?.absoluteString, "urn:oid:1.3.6.1.4.1.21367.2009.1.2.1")
		XCTAssertEqual(inst.status, DocumentReferenceStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Text</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.text, "History and Physical")
		
		return inst
	}
}
