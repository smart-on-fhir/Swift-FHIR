//
//  ProvenanceTests.swift
//  ProvenanceTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProvenanceTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Provenance? {
		let json = readJSONFile(filename)
		let instance = Provenance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProvenance1() {
		let inst = instantiateFrom("provenance-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Provenance instance")
	
		XCTAssertEqual(inst!.agent![0].display!, "Grahame Grieve")
		XCTAssertEqual(inst!.agent![0].reference!, NSURL(string: "mailto:grahame@healthintersections.com.au")!)
		XCTAssertEqual(inst!.agent![0].role!.code!, "author")
		XCTAssertEqual(inst!.agent![0].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![0].type!.code!, "person")
		XCTAssertEqual(inst!.agent![0].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.agent![1].display!, "ISO 21090")
		XCTAssertEqual(inst!.agent![1].reference!, NSURL(string: "urn:iso:std:21090")!)
		XCTAssertEqual(inst!.agent![1].role!.code!, "source")
		XCTAssertEqual(inst!.agent![1].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![1].type!.code!, "document")
		XCTAssertEqual(inst!.agent![1].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.location!.reference!, "Location/2")
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-06-23")!)
		XCTAssertEqual(inst!.reason!.text!, "Editing the FHIR Specification")
		XCTAssertEqual(inst!.recorded!, NSDate.dateFromISOString("2012-11-08T23:16:03+11:00")!)
		XCTAssertEqual(inst!.target![0].reference!, "Patient/example/_history/1")
	}
	
	func testProvenance2() {
		let inst = instantiateFrom("provenance-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Provenance instance")
	
		XCTAssertEqual(inst!.agent![0].display!, "Grahame Grieve")
		XCTAssertEqual(inst!.agent![0].reference!, NSURL(string: "mailto:grahame@healthintersections.com.au")!)
		XCTAssertEqual(inst!.agent![0].role!.code!, "author")
		XCTAssertEqual(inst!.agent![0].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![0].type!.code!, "person")
		XCTAssertEqual(inst!.agent![0].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.agent![1].display!, "ISO 21090")
		XCTAssertEqual(inst!.agent![1].reference!, NSURL(string: "urn:iso:std:21090")!)
		XCTAssertEqual(inst!.agent![1].role!.code!, "source")
		XCTAssertEqual(inst!.agent![1].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![1].type!.code!, "document")
		XCTAssertEqual(inst!.agent![1].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.location!.reference!, "Location/2")
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-06-23")!)
		XCTAssertEqual(inst!.reason!.text!, "Editing the FHIR Specification")
		XCTAssertEqual(inst!.recorded!, NSDate.dateFromISOString("2012-11-08T23:16:03+11:00")!)
		XCTAssertEqual(inst!.target![0].reference!, "Patient/example/_history/1")
	}
	
	func testProvenance3() {
		let inst = instantiateFrom("provenance-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Provenance instance")
	
		XCTAssertEqual(inst!.agent![0].display!, "Grahame Grieve")
		XCTAssertEqual(inst!.agent![0].reference!, NSURL(string: "mailto:grahame@healthintersections.com.au")!)
		XCTAssertEqual(inst!.agent![0].role!.code!, "author")
		XCTAssertEqual(inst!.agent![0].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![0].type!.code!, "person")
		XCTAssertEqual(inst!.agent![0].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.agent![1].display!, "ISO 21090")
		XCTAssertEqual(inst!.agent![1].reference!, NSURL(string: "urn:iso:std:21090")!)
		XCTAssertEqual(inst!.agent![1].role!.code!, "source")
		XCTAssertEqual(inst!.agent![1].role!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-role")!)
		XCTAssertEqual(inst!.agent![1].type!.code!, "document")
		XCTAssertEqual(inst!.agent![1].type!.system!, NSURL(string: "http://hl7.org/fhir/provenance-participant-type")!)
		XCTAssertEqual(inst!.location!.reference!, "Location/2")
		XCTAssertEqual(inst!.period!.start!, NSDate.dateFromISOString("2011-06-23")!)
		XCTAssertEqual(inst!.reason!.text!, "Editing the FHIR Specification")
		XCTAssertEqual(inst!.recorded!, NSDate.dateFromISOString("2012-11-08T23:16:03+11:00")!)
		XCTAssertEqual(inst!.target![0].reference!, "Patient/example/_history/1")
	}
}
