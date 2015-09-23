//
//  ReferralRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ReferralRequestTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> ReferralRequest {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> ReferralRequest {
		let instance = ReferralRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReferralRequest1() {
		let instance = try? runReferralRequest1()
		XCTAssertNotNil(instance, "Must instantiate ReferralRequest")
		try! runReferralRequest1(instance!.asJSON())
	}
	
	func runReferralRequest1(json: FHIRJSON? = nil) throws -> ReferralRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "referralrequest-example.json")
		
		XCTAssertEqual(inst.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst.description_fhir!, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst.identifier![0].value!, "ret4421")
		XCTAssertEqual(inst.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst.priority!.coding![0].code!, "med")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Medium")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst.reason!.text!, "For consideration of Grommets")
		XCTAssertEqual(inst.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceRequested![0].text!, "Insertion of grommets")
		XCTAssertEqual(inst.specialty!.coding![0].code!, "ent")
		XCTAssertEqual(inst.specialty!.coding![0].display!, "ENT")
		XCTAssertEqual(inst.specialty!.coding![0].system!.absoluteString, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.text!.div!, "<div>Referral to Dr Dave for Beverly weaver to have grommets inserted in her r) ear</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "rfs")
		XCTAssertEqual(inst.type!.coding![0].display!, "Referral for service")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://orionhealth.com/fhir/apps/referraltypes")
		
		return inst
	}
}
