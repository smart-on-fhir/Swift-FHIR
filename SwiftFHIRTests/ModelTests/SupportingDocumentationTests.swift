//
//  SupportingDocumentationTests.swift
//  SupportingDocumentationTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SupportingDocumentationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> SupportingDocumentation {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> SupportingDocumentation {
		let instance = SupportingDocumentation(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupportingDocumentation1() {
		let instance = testSupportingDocumentation1_impl()
		testSupportingDocumentation1_impl(json: instance.asJSON())
	}
	
	func testSupportingDocumentation1_impl(json: JSONDictionary? = nil) -> SupportingDocumentation {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "supportingdocumentation-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-09-21")
		XCTAssertEqual(inst.detail![0].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![0].contentAttachment!.data!", which is a Base64Binary
		XCTAssertEqual(inst.detail![0].contentAttachment!.title!, "accident notes 20100201.pdf")
		XCTAssertEqual(inst.detail![0].dateTime!.description, "2010-02-01")
		XCTAssertEqual(inst.detail![0].linkId!, 1)
		XCTAssertEqual(inst.detail![1].contentAttachment!.contentType!, "application/pdf")
		// Don't know how to create unit test for "detail![1].contentAttachment!.hash!", which is a Base64Binary
		XCTAssertEqual(inst.detail![1].contentAttachment!.size!, 104274)
		XCTAssertEqual(inst.detail![1].contentAttachment!.url!.absoluteString!, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst.detail![1].dateTime!.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst.detail![1].linkId!, 2)
		XCTAssertEqual(inst.id!, "654789")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happyvalley.com/elegibility")
		XCTAssertEqual(inst.identifier![0].value!, "52345")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Eligibility</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
