//
//  ReferralRequestTests.swift
//  ReferralRequestTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ReferralRequestTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> ReferralRequest? {
		let json = readJSONFile(filename)
		let instance = ReferralRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReferralRequest1() {
		let inst = instantiateFrom("referralrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ReferralRequest instance")
		
		XCTAssertEqual(inst!.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst!.description!, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst!.identifier![0].value!, "ret4421")
		XCTAssertEqual(inst!.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst!.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst!.priority!.coding![0].code!, "med")
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Medium")
		XCTAssertEqual(inst!.priority!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst!.reason!.text!, "For consideration of Grommets")
		XCTAssertEqual(inst!.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst!.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst!.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst!.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.serviceRequested![0].text!, "Insertion of grommets")
		XCTAssertEqual(inst!.specialty!.coding![0].code!, "ent")
		XCTAssertEqual(inst!.specialty!.coding![0].display!, "ENT")
		XCTAssertEqual(inst!.specialty!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst!.status!, "sent")
		XCTAssertEqual(inst!.type!.coding![0].code!, "rfs")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Referral for service")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referraltypes")
	}
	
	func testReferralRequest2() {
		let inst = instantiateFrom("referralrequest-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a ReferralRequest instance")
		
		XCTAssertEqual(inst!.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst!.description!, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst!.identifier![0].value!, "ret4421")
		XCTAssertEqual(inst!.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst!.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst!.priority!.coding![0].code!, "med")
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Medium")
		XCTAssertEqual(inst!.priority!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst!.reason!.text!, "For consideration of Grommets")
		XCTAssertEqual(inst!.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst!.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst!.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst!.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.serviceRequested![0].text!, "Insertion of grommets")
		XCTAssertEqual(inst!.specialty!.coding![0].code!, "ent")
		XCTAssertEqual(inst!.specialty!.coding![0].display!, "ENT")
		XCTAssertEqual(inst!.specialty!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst!.status!, "sent")
		XCTAssertEqual(inst!.type!.coding![0].code!, "rfs")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Referral for service")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referraltypes")
	}
	
	func testReferralRequest3() {
		let inst = instantiateFrom("referralrequest-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a ReferralRequest instance")
		
		XCTAssertEqual(inst!.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst!.description!, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst!.identifier![0].value!, "ret4421")
		XCTAssertEqual(inst!.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst!.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst!.priority!.coding![0].code!, "med")
		XCTAssertEqual(inst!.priority!.coding![0].display!, "Medium")
		XCTAssertEqual(inst!.priority!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst!.reason!.text!, "For consideration of Grommets")
		XCTAssertEqual(inst!.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst!.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst!.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst!.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst!.serviceRequested![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst!.serviceRequested![0].text!, "Insertion of grommets")
		XCTAssertEqual(inst!.specialty!.coding![0].code!, "ent")
		XCTAssertEqual(inst!.specialty!.coding![0].display!, "ENT")
		XCTAssertEqual(inst!.specialty!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst!.status!, "sent")
		XCTAssertEqual(inst!.type!.coding![0].code!, "rfs")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Referral for service")
		XCTAssertEqual(inst!.type!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referraltypes")
	}
}
