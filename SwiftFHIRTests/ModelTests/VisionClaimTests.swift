//
//  VisionClaimTests.swift
//  VisionClaimTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class VisionClaimTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> VisionClaim {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> VisionClaim {
		let instance = VisionClaim(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testVisionClaim1() {
		let instance = testVisionClaim1_impl()
		testVisionClaim1_impl(json: instance.asJSON())
	}
	
	func testVisionClaim1_impl(json: JSONDictionary? = nil) -> VisionClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "visionclaim-example-glasses.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654321")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.id!, "660151")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happysight.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "6612346")
		XCTAssertEqual(inst.item![0].detail![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![0].net!.value!, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item![0].detail![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].detail![0].service!.code!, "frame")
		XCTAssertEqual(inst.item![0].detail![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item![0].detail![0].type!.code!, "product")
		XCTAssertEqual(inst.item![0].detail![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![0].unitPrice!.value!, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item![0].detail![1].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![1].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![1].net!.value!, NSDecimalNumber(string: "100.0"))
		XCTAssertEqual(inst.item![0].detail![1].quantity!.value!, NSDecimalNumber(string: "2"))
		XCTAssertEqual(inst.item![0].detail![1].sequence!, 2)
		XCTAssertEqual(inst.item![0].detail![1].service!.code!, "lens")
		XCTAssertEqual(inst.item![0].detail![1].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item![0].detail![1].type!.code!, "product")
		XCTAssertEqual(inst.item![0].detail![1].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![1].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![1].unitPrice!.value!, NSDecimalNumber(string: "50.0"))
		XCTAssertEqual(inst.item![0].detail![2].factor!, NSDecimalNumber(string: "0.07"))
		XCTAssertEqual(inst.item![0].detail![2].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![2].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![2].net!.value!, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst.item![0].detail![2].sequence!, 3)
		XCTAssertEqual(inst.item![0].detail![2].service!.code!, "fst")
		XCTAssertEqual(inst.item![0].detail![2].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item![0].detail![2].type!.code!, "tax")
		XCTAssertEqual(inst.item![0].detail![2].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].detail![2].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].detail![2].unitPrice!.value!, NSDecimalNumber(string: "200.0"))
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "214.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "glasses")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "group")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "214.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.prescription!.reference!, "http://www.optdocs.com/prescription/12345")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Vision Claim for Glasses</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
	
	func testVisionClaim2() {
		let instance = testVisionClaim2_impl()
		testVisionClaim2_impl(json: instance.asJSON())
	}
	
	func testVisionClaim2_impl(json: JSONDictionary? = nil) -> VisionClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "visionclaim-example.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654321")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.id!, "660150")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happysight.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "6612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "exam")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-visionservice")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "80.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Vision Claim</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
}
