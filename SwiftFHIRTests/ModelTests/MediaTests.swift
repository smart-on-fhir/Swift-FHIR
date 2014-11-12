//
//  MediaTests.swift
//  MediaTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-11-12.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class MediaTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Media? {
		let json = readJSONFile(filename)
		let instance = Media(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testMedia1() {
		let inst = instantiateFrom("media-example-dicom.json")
		XCTAssertNotNil(inst, "Must have instantiated a Media instance")
		
		XCTAssertEqual(inst!.content!.contentType!, "application/dicom")
		XCTAssertEqual(inst!.content!.url!, NSURL(string: "http://imaging.acme.com/wado/server?requestType=WADO&contentType=application%2Fdicom&studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033")!)	
		XCTAssertEqual(inst!.deviceName!, "G.E. Medical Systems")
		XCTAssertEqual(inst!.height!, 480)	
		XCTAssertEqual(inst!.identifier![0].label!, "InstanceUID")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:ietf:rfc:3986")!)	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].value!, "urn:oid:1.2.840.11361907579238403408700.3.0.14.19970327150033")	
		XCTAssertEqual(inst!.identifier![1].label!, "accessionNo")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "http://acme-imaging.com/accession/2012")!)	
		XCTAssertEqual(inst!.identifier![1].value!, "1234567")	
		XCTAssertEqual(inst!.identifier![2].label!, "studyId")
		XCTAssertEqual(inst!.identifier![2].system!, NSURL(string: "urn:ietf:rfc:3986")!)	
		XCTAssertEqual(inst!.identifier![2].value!, "urn:oid:1.2.840.113619.2.21.848.34082.0.538976288.3")	
		XCTAssertEqual(inst!.identifier![3].label!, "seriesId")
		XCTAssertEqual(inst!.identifier![3].system!, NSURL(string: "urn:ietf:rfc:3986")!)	
		XCTAssertEqual(inst!.identifier![3].value!, "urn:oid:1.2.840.113619.2.21.3408.700.0.757923840.3.0")	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/example")	
		XCTAssertEqual(inst!.subtype!.coding![0].code!, "US")
		XCTAssertEqual(inst!.subtype!.coding![0].system!, NSURL(string: "http://nema.org/dicom/dcid")!)	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      Ultrasound Image on patient &quot;James Chalmers&quot;:<br/>\n      <img alt=\"WADO reference to image\" src=\"http://imaging.acme.com/wado/server?requestType=WADO&amp;contentType=application%2Fdicom&amp;studyUid=1.2.840.113619.2.21.848.34082.0.538976288.3&amp;seriesUid=1.2.840.113619.2.21.3408.700.0.757923840.3.0&amp;objectUid=1.2.840.11361907579238403408700.3.0.14.19970327150033\"/>\n        \n    </div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!, "photo")
		XCTAssertEqual(inst!.width!, 640)
	}
	
	func testMedia2() {
		let inst = instantiateFrom("media-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Media instance")
		
		XCTAssertEqual(inst!.content!.contentType!, "image/gif")	
		XCTAssertEqual(inst!.content!.data!, "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")
		XCTAssertEqual(inst!.dateTime!, NSDate.dateFromISOString("2009-09-03")!)	
		XCTAssertEqual(inst!.deviceName!, "Acme Camera")
		XCTAssertEqual(inst!.height!, 145)	
		XCTAssertEqual(inst!.subject!.reference!, "Patient/xcda")	
		XCTAssertEqual(inst!.subtype!.coding![0].code!, "diagram")
		XCTAssertEqual(inst!.subtype!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/media-method")!)	
		XCTAssertEqual(inst!.text!.div!, "<div>Diagram for Patient Henry Levin (MRN 12345):<br/><img alt=\"diagram\" src=\"#11\"/></div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!, "photo")
		XCTAssertEqual(inst!.width!, 126)
	}
}
