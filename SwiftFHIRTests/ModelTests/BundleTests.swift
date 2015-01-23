//
//  BundleTests.swift
//  BundleTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class BundleTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Bundle {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Bundle {
		let instance = Bundle(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testBundle1() {
		let instance = testBundle1_impl()
		testBundle1_impl(json: instance.asJSON())
	}
	
	func testBundle1_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bundle-example.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://example.com/base")
		XCTAssertEqual(inst.entry![0].status!, "update")
		XCTAssertEqual(inst.link![0].relation!, "next")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.link![1].relation!, "self")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "transaction")
		
		return inst
	}
	
	func testBundle2() {
		let instance = testBundle2_impl()
		testBundle2_impl(json: instance.asJSON())
	}
	
	func testBundle2_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bundle-example.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://example.com/base")
		XCTAssertEqual(inst.entry![0].status!, "update")
		XCTAssertEqual(inst.link![0].relation!, "next")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.link![1].relation!, "self")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "transaction")
		
		return inst
	}
	
	func testBundle3() {
		let instance = testBundle3_impl()
		testBundle3_impl(json: instance.asJSON())
	}
	
	func testBundle3_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bundle-example.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://example.com/base")
		XCTAssertEqual(inst.entry![0].status!, "update")
		XCTAssertEqual(inst.link![0].relation!, "next")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.link![1].relation!, "self")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "transaction")
		
		return inst
	}
	
	func testBundle4() {
		let instance = testBundle4_impl()
		testBundle4_impl(json: instance.asJSON())
	}
	
	func testBundle4_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples-lab-text.canonical.json")
		
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle5() {
		let instance = testBundle5_impl()
		testBundle5_impl(json: instance.asJSON())
	}
	
	func testBundle5_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples-lab-text.json")
		
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle6() {
		let instance = testBundle6_impl()
		testBundle6_impl(json: instance.asJSON())
	}
	
	func testBundle6_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples.canonical.json")
		
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle7() {
		let instance = testBundle7_impl()
		testBundle7_impl(json: instance.asJSON())
	}
	
	func testBundle7_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples.json")
		
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle8() {
		let instance = testBundle8_impl()
		testBundle8_impl(json: instance.asJSON())
	}
	
	func testBundle8_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "document-example-dischargesummary.canonical.json")
		
		XCTAssertEqual(inst.type!, "document")
		
		return inst
	}
	
	func testBundle9() {
		let instance = testBundle9_impl()
		testBundle9_impl(json: instance.asJSON())
	}
	
	func testBundle9_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "document-example-dischargesummary.json")
		
		XCTAssertEqual(inst.type!, "document")
		
		return inst
	}
	
	func testBundle10() {
		let instance = testBundle10_impl()
		testBundle10_impl(json: instance.asJSON())
	}
	
	func testBundle10_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "observation-example-bloodpressure.canonical.json")
		
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
}
