//
//  ProvenanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProvenanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Provenance {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Provenance {
		let instance = Provenance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProvenance1() throws {
		let instance = try runProvenance1()
		try runProvenance1(instance.asJSON())
	}
	
	func runProvenance1(json: FHIRJSON? = nil) throws -> Provenance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example.json")
		
		XCTAssertEqual(inst.agent![0].display!, "Grahame Grieve")
		XCTAssertEqual(inst.agent![0].referenceUri!.absoluteString, "mailto:grahame@healthintersections.com.au")
		XCTAssertEqual(inst.agent![0].role!.code!, "author")
		XCTAssertEqual(inst.agent![0].role!.system!.absoluteString, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent![0].type!.code!, "person")
		XCTAssertEqual(inst.agent![0].type!.system!.absoluteString, "http://hl7.org/fhir/provenance-participant-type")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.location!.reference!, "Location/2")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-23")
		XCTAssertEqual(inst.reason!.text!, "Editing the FHIR Specification")
		XCTAssertEqual(inst.recorded!.description, "2012-11-08T23:16:03+11:00")
		XCTAssertEqual(inst.target![0].reference!, "Patient/example/_history/1")
		XCTAssertEqual(inst.text!.div!, "<div>Authored on 8-Nov 2011 by Grahame Grieve. Content extracted from ISO-21090</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
