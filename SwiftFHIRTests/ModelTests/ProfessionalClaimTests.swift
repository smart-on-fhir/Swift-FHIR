//
//  ProfessionalClaimTests.swift
//  ProfessionalClaimTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProfessionalClaimTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ProfessionalClaim {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> ProfessionalClaim {
		let instance = ProfessionalClaim(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProfessionalClaim1() {
		let instance = testProfessionalClaim1_impl()
		testProfessionalClaim1_impl(json: instance.asJSON())
	}
	
	func testProfessionalClaim1_impl(json: JSONDictionary? = nil) -> ProfessionalClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "professionalclaim-example.canonical.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.id!, "860150")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypdocs.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "8612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "exam")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
	
	func testProfessionalClaim2() {
		let instance = testProfessionalClaim2_impl()
		testProfessionalClaim2_impl(json: instance.asJSON())
	}
	
	func testProfessionalClaim2_impl(json: JSONDictionary? = nil) -> ProfessionalClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "professionalclaim-example.canonical.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.id!, "860150")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypdocs.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "8612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "exam")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
	
	func testProfessionalClaim3() {
		let instance = testProfessionalClaim3_impl()
		testProfessionalClaim3_impl(json: instance.asJSON())
	}
	
	func testProfessionalClaim3_impl(json: JSONDictionary? = nil) -> ProfessionalClaim {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "professionalclaim-example.json")
		
		XCTAssertEqual(inst.coverage![0].coverage!.reference!, "Coverage/9876B1")
		XCTAssertTrue(inst.coverage![0].focal!)
		XCTAssertEqual(inst.coverage![0].relationship!.code!, "self")
		XCTAssertEqual(inst.coverage![0].sequence!, 1)
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.diagnosis![0].diagnosis!.code!, "654456")
		XCTAssertEqual(inst.diagnosis![0].sequence!, 1)
		XCTAssertEqual(inst.id!, "860150")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://happypdocs.com/claims")
		XCTAssertEqual(inst.identifier![0].value!, "8612345")
		XCTAssertEqual(inst.item![0].net!.code!, "USD")
		XCTAssertEqual(inst.item![0].net!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].net!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.item![0].provider!.reference!, "Practitioner/1")
		XCTAssertEqual(inst.item![0].sequence!, 1)
		XCTAssertEqual(inst.item![0].service!.code!, "exam")
		XCTAssertEqual(inst.item![0].service!.system!.absoluteString!, "http://hl7.org/fhir/ex-serviceproduct")
		XCTAssertEqual(inst.item![0].serviceDate!.description, "2014-08-16")
		XCTAssertEqual(inst.item![0].type!.code!, "service")
		XCTAssertEqual(inst.item![0].unitPrice!.code!, "USD")
		XCTAssertEqual(inst.item![0].unitPrice!.system!.absoluteString!, "urn:std:iso:4217")
		XCTAssertEqual(inst.item![0].unitPrice!.value!, NSDecimalNumber(string: "75.0"))
		XCTAssertEqual(inst.organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.patient!.reference!, "Patient/1")
		XCTAssertEqual(inst.payee!.type!.code!, "provider")
		XCTAssertEqual(inst.priority!.code!, "normal")
		XCTAssertEqual(inst.target!.reference!, "Organization/2")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the Claim</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.use!, "complete")
		
		return inst
	}
}
