//
//  MediaTests.swift
//  MediaTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
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
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example-dicom.canonical.json")
		
		XCTAssertEqual(inst.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst.content!.url!.absoluteString!, "http://imaging.acme.com/wado/server?requestType=WADO&contentType=application%2Fdicom&studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst.height!, 480)
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
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 640)
		
		return inst
	}
	
	func testMedia2() {
		let instance = testMedia2_impl()
		testMedia2_impl(json: instance.asJSON())
	}
	
	func testMedia2_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example-dicom.canonical.json")
		
		XCTAssertEqual(inst.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst.content!.url!.absoluteString!, "http://imaging.acme.com/wado/server?requestType=WADO&contentType=application%2Fdicom&studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst.height!, 480)
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
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 640)
		
		return inst
	}
	
	func testMedia3() {
		let instance = testMedia3_impl()
		testMedia3_impl(json: instance.asJSON())
	}
	
	func testMedia3_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example-dicom.json")
		
		XCTAssertEqual(inst.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst.content!.url!.absoluteString!, "http://imaging.acme.com/wado/server?requestType=WADO&contentType=application%2Fdicom&studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst.height!, 480)
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
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://nema.org/dicom/dcid")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 640)
		
		return inst
	}
	
	func testMedia4() {
		let instance = testMedia4_impl()
		testMedia4_impl(json: instance.asJSON())
	}
	
	func testMedia4_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example.canonical.json")
		
		XCTAssertEqual(inst.content!.contentType!, "image/gif")
		// Don't know how to create unit test for "content!.data!", which is a Base64Binary
		XCTAssertEqual(inst.created!.description, "2009-09-03")
		XCTAssertEqual(inst.deviceName!, "Acme Camera")
		XCTAssertEqual(inst.height!, 145)
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "diagram")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/media-method")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 126)
		
		return inst
	}
	
	func testMedia5() {
		let instance = testMedia5_impl()
		testMedia5_impl(json: instance.asJSON())
	}
	
	func testMedia5_impl(json: JSONDictionary? = nil) -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "media-example.json")
		
		XCTAssertEqual(inst.content!.contentType!, "image/gif")
		// Don't know how to create unit test for "content!.data!", which is a Base64Binary
		XCTAssertEqual(inst.created!.description, "2009-09-03")
		XCTAssertEqual(inst.deviceName!, "Acme Camera")
		XCTAssertEqual(inst.height!, 145)
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "diagram")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/media-method")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, 126)
		
		return inst
	}
}
