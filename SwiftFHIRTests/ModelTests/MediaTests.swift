//
//  MediaTests.swift
//  MediaTests
//
//  Generated from FHIR 0.4.0.4394 on 2015-03-11.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class MediaTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Media {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Media {
		let instance = Media(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedia1() {
		let instance = testMedia1_impl()
		testMedia1_impl(json: instance.asJSON())
	}
	
	func testMedia1_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example-dicom.json")
		
		XCTAssertEqual(inst.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://nema.org/fhir/extensions#0002-0010")
		XCTAssertEqual(inst.extension_fhir![0].valueUri!.absoluteString!, "urn:oid:1.2.840.10008.1.2.1")
		XCTAssertEqual(inst.height!, 480)
		XCTAssertEqual(inst.id!, "1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier![0].label!, "InstanceUID")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "urn:oid:1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier![1].label!, "accessionNo")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "http://acme-imaging.com/accession/2012")
		XCTAssertEqual(inst.identifier![1].value!, "1234567")
		XCTAssertEqual(inst.identifier![2].label!, "studyId")
		XCTAssertEqual(inst.identifier![2].system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![2].value!, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")
		XCTAssertEqual(inst.identifier![3].label!, "seriesId")
		XCTAssertEqual(inst.identifier![3].system!.absoluteString!, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![3].value!, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "US")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 640)
		
		return inst
	}
	
	func testMedia2() {
		let instance = testMedia2_impl()
		testMedia2_impl(json: instance.asJSON())
	}
	
	func testMedia2_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example.json")
		
		XCTAssertEqual(inst.content!.contentType!, "image/gif")
		XCTAssertEqual(inst.content!.id!, "a1")
		XCTAssertEqual(inst.created!.description, "2009-09-03")
		XCTAssertEqual(inst.deviceName!, "Acme Camera")
		XCTAssertEqual(inst.height!, 145)
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "diagram")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/media-method")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 126)
		
		return inst
	}
}
