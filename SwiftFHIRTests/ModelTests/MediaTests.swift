//
//  MediaTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class MediaTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Media {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Media {
		let instance = Media(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedia1() throws {
		let instance = try runMedia1()
		try runMedia1(instance.asJSON())
	}
	
	func runMedia1(json: FHIRJSON? = nil) throws -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example-dicom.json")
		
		XCTAssertEqual(inst.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://nema.org/fhir/extensions#0002-0010")
		XCTAssertEqual(inst.extension_fhir![0].valueUri!.absoluteString, "urn:oid:1.2.840.10008.1.2.1")
		XCTAssertEqual(inst.height!, UInt(480))
		XCTAssertEqual(inst.id!, "1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![0].type!.text!, "InstanceUID")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "urn:oid:1.2.840.11361907579238403408700.3.0.14.19970327150033")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "http://acme-imaging.com/accession/2012")
		XCTAssertEqual(inst.identifier![1].type!.text!, "accessionNo")
		XCTAssertEqual(inst.identifier![1].value!, "1234567")
		XCTAssertEqual(inst.identifier![2].system!.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![2].type!.text!, "studyId")
		XCTAssertEqual(inst.identifier![2].value!, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")
		XCTAssertEqual(inst.identifier![3].system!.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![3].type!.text!, "seriesId")
		XCTAssertEqual(inst.identifier![3].value!, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")
		XCTAssertEqual(inst.subject!.reference!, "Patient/example")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "US")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString, "http://nema.org/dicom/dicm")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, UInt(640))
		
		return inst
	}
	
	func testMedia2() throws {
		let instance = try runMedia2()
		try runMedia2(instance.asJSON())
	}
	
	func runMedia2(json: FHIRJSON? = nil) throws -> Media {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "media-example.json")
		
		XCTAssertEqual(inst.content!.contentType!, "image/gif")
		XCTAssertEqual(inst.content!.creation!.description, "2009-09-03")
		XCTAssertEqual(inst.content!.id!, "a1")
		XCTAssertEqual(inst.deviceName!, "Acme Camera")
		XCTAssertEqual(inst.height!, UInt(145))
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.subject!.reference!, "Patient/xcda")
		XCTAssertEqual(inst.subtype!.coding![0].code!, "diagram")
		XCTAssertEqual(inst.subtype!.coding![0].system!.absoluteString, "http://hl7.org/fhir/media-method")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "photo")
		XCTAssertEqual(inst.width!, UInt(126))
		
		return inst
	}
}
