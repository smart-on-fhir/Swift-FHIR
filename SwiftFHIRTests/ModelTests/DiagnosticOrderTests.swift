//
//  DiagnosticOrderTests.swift
//  DiagnosticOrderTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class DiagnosticOrderTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> DiagnosticOrder? {
		let json = readJSONFile(filename)
		let instance = DiagnosticOrder(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testDiagnosticOrder1() {
		let inst = instantiateFrom("diagnosticorder-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a DiagnosticOrder instance")
	
		XCTAssertEqual(inst!.event![0].dateTime!, NSDate.dateFromISOString("2013-05-02T16:16:00")!)	
		XCTAssertEqual(inst!.event![0].status!, "requested")	
		XCTAssertEqual(inst!.identifier![0].label!, "Placer")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:1.3.4.5.6.7")!)	
		XCTAssertEqual(inst!.identifier![0].value!, "2345234234234")	
		XCTAssertEqual(inst!.item![0].code!.coding![0].code!, "LIPID")
		XCTAssertEqual(inst!.item![0].code!.coding![0].system!, NSURL(string: "http://acme.org/tests")!)	
		XCTAssertEqual(inst!.item![0].code!.text!, "Lipid Panel")	
		XCTAssertEqual(inst!.orderer!.reference!, "Practitioner/example")	
		XCTAssertEqual(inst!.status!, "received")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")	
		XCTAssertEqual(inst!.text!.div!, "<div> \n        Example Diagnostic Order\n        </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")
	}
}
