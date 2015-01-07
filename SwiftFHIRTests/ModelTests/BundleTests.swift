//
//  BundleTests.swift
//  BundleTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class BundleTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Bundle? {
		let json = readJSONFile(filename)
		let instance = Bundle(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBundle1() {
		let inst = instantiateFrom("bundle-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.base!, NSURL(string: "http://example.com/base")!)
		XCTAssertEqual(inst!.entry![0].status!, "update")
		XCTAssertEqual(inst!.link![0].relation!, "next")
		XCTAssertEqual(inst!.link![0].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")!)
		XCTAssertEqual(inst!.link![1].relation!, "self")
		XCTAssertEqual(inst!.link![1].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347")!)
		XCTAssertEqual(inst!.total!, 3)
		XCTAssertEqual(inst!.type!, "transaction")
	}
	
	func testBundle2() {
		let inst = instantiateFrom("bundle-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.base!, NSURL(string: "http://example.com/base")!)
		XCTAssertEqual(inst!.entry![0].status!, "update")
		XCTAssertEqual(inst!.link![0].relation!, "next")
		XCTAssertEqual(inst!.link![0].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")!)
		XCTAssertEqual(inst!.link![1].relation!, "self")
		XCTAssertEqual(inst!.link![1].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347")!)
		XCTAssertEqual(inst!.total!, 3)
		XCTAssertEqual(inst!.type!, "transaction")
	}
	
	func testBundle3() {
		let inst = instantiateFrom("bundle-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.base!, NSURL(string: "http://example.com/base")!)
		XCTAssertEqual(inst!.entry![0].status!, "update")
		XCTAssertEqual(inst!.link![0].relation!, "next")
		XCTAssertEqual(inst!.link![0].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")!)
		XCTAssertEqual(inst!.link![1].relation!, "self")
		XCTAssertEqual(inst!.link![1].url!, NSURL(string: "https://example.com/base/MedicationPrescription?patient=347")!)
		XCTAssertEqual(inst!.total!, 3)
		XCTAssertEqual(inst!.type!, "transaction")
	}
	
	func testBundle4() {
		let inst = instantiateFrom("diagnosticreport-examples-lab-text.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "collection")
	}
	
	func testBundle5() {
		let inst = instantiateFrom("diagnosticreport-examples-lab-text.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "collection")
	}
	
	func testBundle6() {
		let inst = instantiateFrom("diagnosticreport-examples.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "collection")
	}
	
	func testBundle7() {
		let inst = instantiateFrom("diagnosticreport-examples.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "collection")
	}
	
	func testBundle8() {
		let inst = instantiateFrom("document-example-dischargesummary.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "document")
	}
	
	func testBundle9() {
		let inst = instantiateFrom("document-example-dischargesummary.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "document")
	}
	
	func testBundle10() {
		let inst = instantiateFrom("observation-example-bloodpressure.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Bundle instance")
	
		XCTAssertEqual(inst!.type!, "collection")
	}
}
