//
//  PharmacyClaimTests.swift
//  PharmacyClaimTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PharmacyClaimTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> PharmacyClaim {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> PharmacyClaim {
		let instance = PharmacyClaim(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPharmacyClaim1() {
		let instance = testPharmacyClaim1_impl()
		testPharmacyClaim1_impl(json: instance.asJSON())
	}
	
	func testPharmacyClaim1_impl(json: JSONDictionary? = nil) -> PharmacyClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pharmacyclaim-example.canonical.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypharma.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "7612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "stat")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
	
	func testPharmacyClaim2() {
		let instance = testPharmacyClaim2_impl()
		testPharmacyClaim2_impl(json: instance.asJSON())
	}
	
	func testPharmacyClaim2_impl(json: JSONDictionary? = nil) -> PharmacyClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pharmacyclaim-example.canonical.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypharma.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "7612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "stat")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
	
	func testPharmacyClaim3() {
		let instance = testPharmacyClaim3_impl()
		testPharmacyClaim3_impl(json: instance.asJSON())
	}
	
	func testPharmacyClaim3_impl(json: JSONDictionary? = nil) -> PharmacyClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "pharmacyclaim-example.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypharma.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "7612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-pharmaservice")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "stat")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
}
