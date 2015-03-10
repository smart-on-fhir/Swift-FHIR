//
//  BundleTests.swift
//  BundleTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
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
		XCTAssertEqual(inst.entry![0].resource!.id!, "3123")
		XCTAssertEqual(inst.entry![0].search!.mode!, "match")
		XCTAssertEqual(inst.entry![0].search!.score!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.entry![1].resource!.id!, "example")
		XCTAssertEqual(inst.entry![1].search!.mode!, "include")
		XCTAssertEqual(inst.id!, "bundle-example")
		XCTAssertEqual(inst.link![0].relation!, "self")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&_include=MedicationPrescription.medication")
		XCTAssertEqual(inst.link![1].relation!, "next")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2014-08-18T01:43:30Z")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "searchset")
		
		return inst
	}
	
	func testBundle2() {
		let instance = testBundle2_impl()
		testBundle2_impl(json: instance.asJSON())
	}
	
	func testBundle2_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bundle-example.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://example.com/base")
		XCTAssertEqual(inst.entry![0].resource!.id!, "3123")
		XCTAssertEqual(inst.entry![0].search!.mode!, "match")
		XCTAssertEqual(inst.entry![0].search!.score!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.entry![1].resource!.id!, "example")
		XCTAssertEqual(inst.entry![1].search!.mode!, "include")
		XCTAssertEqual(inst.id!, "bundle-example")
		XCTAssertEqual(inst.link![0].relation!, "self")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&_include=MedicationPrescription.medication")
		XCTAssertEqual(inst.link![1].relation!, "next")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2014-08-18T01:43:30Z")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "searchset")
		
		return inst
	}
	
	func testBundle3() {
		let instance = testBundle3_impl()
		testBundle3_impl(json: instance.asJSON())
	}
	
	func testBundle3_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "bundle-example.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://example.com/base")
		XCTAssertEqual(inst.entry![0].resource!.id!, "3123")
		XCTAssertEqual(inst.entry![0].search!.mode!, "match")
		XCTAssertEqual(inst.entry![0].search!.score!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.entry![1].resource!.id!, "example")
		XCTAssertEqual(inst.entry![1].search!.mode!, "include")
		XCTAssertEqual(inst.id!, "bundle-example")
		XCTAssertEqual(inst.link![0].relation!, "self")
		XCTAssertEqual(inst.link![0].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&_include=MedicationPrescription.medication")
		XCTAssertEqual(inst.link![1].relation!, "next")
		XCTAssertEqual(inst.link![1].url!.absoluteString!, "https://example.com/base/MedicationPrescription?patient=347&searchId=ff15fd40-ff71-4b48-b366-09c706bed9d0&page=2")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2014-08-18T01:43:30Z")
		XCTAssertEqual(inst.total!, 3)
		XCTAssertEqual(inst.type!, "searchset")
		
		return inst
	}
	
	func testBundle4() {
		let instance = testBundle4_impl()
		testBundle4_impl(json: instance.asJSON())
	}
	
	func testBundle4_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples-lab-text.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.entry![0].resource!.id!, "103")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "104")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "105")
		XCTAssertEqual(inst.entry![2].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![3].resource!.id!, "106")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![4].resource!.id!, "107")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![5].resource!.id!, "108")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![6].resource!.id!, "109")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![7].resource!.id!, "110")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![8].resource!.id!, "111")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![9].resource!.id!, "112")
		XCTAssertEqual(inst.entry![9].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.id!, "72ac8493-52ac-41bd-8d5d-7258c289b5ea")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle5() {
		let instance = testBundle5_impl()
		testBundle5_impl(json: instance.asJSON())
	}
	
	func testBundle5_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples-lab-text.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.entry![0].resource!.id!, "103")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "104")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "105")
		XCTAssertEqual(inst.entry![2].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![3].resource!.id!, "106")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![4].resource!.id!, "107")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![5].resource!.id!, "108")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![6].resource!.id!, "109")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![7].resource!.id!, "110")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![8].resource!.id!, "111")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![9].resource!.id!, "112")
		XCTAssertEqual(inst.entry![9].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.id!, "72ac8493-52ac-41bd-8d5d-7258c289b5ea")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle6() {
		let instance = testBundle6_impl()
		testBundle6_impl(json: instance.asJSON())
	}
	
	func testBundle6_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.entry![0].resource!.id!, "3")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "4")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "5")
		XCTAssertEqual(inst.entry![2].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![3].resource!.id!, "6")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![4].resource!.id!, "7")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![5].resource!.id!, "8")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![6].resource!.id!, "9")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![7].resource!.id!, "15")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![8].resource!.id!, "16")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![9].resource!.id!, "17")
		XCTAssertEqual(inst.entry![9].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.id!, "72ac8493-52ac-41bd-8d5d-7258c289b5ea")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle7() {
		let instance = testBundle7_impl()
		testBundle7_impl(json: instance.asJSON())
	}
	
	func testBundle7_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "diagnosticreport-examples.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.entry![0].resource!.id!, "3")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "4")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "5")
		XCTAssertEqual(inst.entry![2].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![3].resource!.id!, "6")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![4].resource!.id!, "7")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![5].resource!.id!, "8")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![6].resource!.id!, "9")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![7].resource!.id!, "15")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![8].resource!.id!, "16")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.entry![9].resource!.id!, "17")
		XCTAssertEqual(inst.entry![9].resource!.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.id!, "72ac8493-52ac-41bd-8d5d-7258c289b5ea")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2012-04-14T10:35:23Z")
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
	
	func testBundle8() {
		let instance = testBundle8_impl()
		testBundle8_impl(json: instance.asJSON())
	}
	
	func testBundle8_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "document-example-dischargesummary.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://fhir.healthintersections.com.au/open")
		XCTAssertEqual(inst.entry![0].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![0].resource!.id!, "180f219f-97a8-486d-99d9-ed631fe4fc57")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "doc-example")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "d1")
		XCTAssertEqual(inst.entry![3].resource!.id!, "doc-example")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![4].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![4].resource!.id!, "d0dd51d3-3ab2-4c84-b697-a630c3e40e7a")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![5].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![5].resource!.id!, "673f8db5-0ffd-4395-9657-6da00420bbc1")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![6].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![6].resource!.id!, "124a6916-5d84-4b8c-b250-10cefb8e6e86")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![7].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![7].resource!.id!, "68f86194-e6e1-4f65-b64a-5314256f8d7b")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![8].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![8].resource!.id!, "47600e0f-b6b5-4308-84b5-5dec157f7637")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.id!, "father")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.meta!.tag![0].code!, "document")
		XCTAssertEqual(inst.meta!.tag![0].system!.absoluteString!, "http://hl7.org/fhir/tag")
		XCTAssertEqual(inst.type!, "document")
		
		return inst
	}
	
	func testBundle9() {
		let instance = testBundle9_impl()
		testBundle9_impl(json: instance.asJSON())
	}
	
	func testBundle9_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "document-example-dischargesummary.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://fhir.healthintersections.com.au/open")
		XCTAssertEqual(inst.entry![0].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![0].resource!.id!, "180f219f-97a8-486d-99d9-ed631fe4fc57")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.entry![1].resource!.id!, "doc-example")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![2].resource!.id!, "d1")
		XCTAssertEqual(inst.entry![3].resource!.id!, "doc-example")
		XCTAssertEqual(inst.entry![3].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![4].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![4].resource!.id!, "d0dd51d3-3ab2-4c84-b697-a630c3e40e7a")
		XCTAssertEqual(inst.entry![4].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![5].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![5].resource!.id!, "673f8db5-0ffd-4395-9657-6da00420bbc1")
		XCTAssertEqual(inst.entry![5].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![6].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![6].resource!.id!, "124a6916-5d84-4b8c-b250-10cefb8e6e86")
		XCTAssertEqual(inst.entry![6].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![7].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![7].resource!.id!, "68f86194-e6e1-4f65-b64a-5314256f8d7b")
		XCTAssertEqual(inst.entry![7].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.entry![8].base!.absoluteString!, "urn:uuid:")
		XCTAssertEqual(inst.entry![8].resource!.id!, "47600e0f-b6b5-4308-84b5-5dec157f7637")
		XCTAssertEqual(inst.entry![8].resource!.meta!.lastUpdated!.description, "2013-05-05T16:13:03Z")
		XCTAssertEqual(inst.id!, "father")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2013-05-28T22:12:21Z")
		XCTAssertEqual(inst.meta!.tag![0].code!, "document")
		XCTAssertEqual(inst.meta!.tag![0].system!.absoluteString!, "http://hl7.org/fhir/tag")
		XCTAssertEqual(inst.type!, "document")
		
		return inst
	}
	
	func testBundle10() {
		let instance = testBundle10_impl()
		testBundle10_impl(json: instance.asJSON())
	}
	
	func testBundle10_impl(json: JSONDictionary? = nil) -> Bundle {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "observation-example-bloodpressure.canonical.json")
		
		XCTAssertEqual(inst.base!.absoluteString!, "http://hl7.org/fhir")
		XCTAssertEqual(inst.entry![0].resource!.id!, "34252345234")
		XCTAssertEqual(inst.entry![0].resource!.meta!.lastUpdated!.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.entry![1].resource!.id!, "34252345234-s")
		XCTAssertEqual(inst.entry![1].resource!.meta!.lastUpdated!.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.entry![2].resource!.id!, "34252345234-d")
		XCTAssertEqual(inst.entry![2].resource!.meta!.lastUpdated!.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.id!, "blood-pressure")
		XCTAssertEqual(inst.meta!.lastUpdated!.description, "2014-01-30T22:35:23+11:00")
		XCTAssertEqual(inst.type!, "collection")
		
		return inst
	}
}
