//
//  PharmacyClaimTests.swift
//  PharmacyClaimTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PharmacyClaimTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> PharmacyClaim? {
		let json = readJSONFile(filename)
		let instance = PharmacyClaim(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPharmacyClaim1() {
		let inst = instantiateFrom("pharmacyclaim-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PharmacyClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happypharma.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "7612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-pharmaservice")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "stat")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
	
	func testPharmacyClaim2() {
		let inst = instantiateFrom("pharmacyclaim-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a PharmacyClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happypharma.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "7612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-pharmaservice")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "stat")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
	
	func testPharmacyClaim3() {
		let inst = instantiateFrom("pharmacyclaim-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a PharmacyClaim instance")
	
		XCTAssertEqual(inst!.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst!.coverage![0].focal!)
		XCTAssertEqual(inst!.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst!.coverage![0].sequence!, 1)
		XCTAssertEqual(inst!.created!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst!.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://happypharma.com/claims")!)
		XCTAssertEqual(inst!.identifier![0].value!, "7612345")
		XCTAssertEqual(inst!.item![0].net!.code!, "USD")
		XCTAssertEqual(inst!.item![0].net!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].net!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst!.item![0].sequence!, 1)
		XCTAssertEqual(inst!.item![0].service!.code!, "smokecess")
		XCTAssertEqual(inst!.item![0].service!.system!, NSURL(string: "http://hl7.org/fhir/ex-pharmaservice")!)
		XCTAssertEqual(inst!.item![0].serviceDate!, NSDate.dateFromISOString("2014-08-16")!)
		XCTAssertEqual(inst!.item![0].type!.code!, "service")
		XCTAssertEqual(inst!.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst!.item![0].unitPrice!.system!, NSURL(string: "urn:std:iso:4217")!)
		XCTAssertEqual(inst!.item![0].unitPrice!.value!, NSDecimalNumber(string: "60.0"))
		XCTAssertEqual(inst!.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst!.payee!.type!.code!, "provider")
		XCTAssertEqual(inst!.priority!.code!, "stat")
		XCTAssertEqual(inst!.target!.reference!, "Organization/2")
		XCTAssertEqual(inst!.use!, "complete")
	}
}
