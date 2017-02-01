//
//  ReferralRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRReferralRequest = Models.ReferralRequest
#else
import SwiftFHIR
typealias SwiftFHIRReferralRequest = SwiftFHIR.ReferralRequest
#endif


class ReferralRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRReferralRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRReferralRequest {
		return try SwiftFHIRReferralRequest(json: json)
	}
	
	func testReferralRequest1() {
		do {
			let instance = try runReferralRequest1()
			try runReferralRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ReferralRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runReferralRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRReferralRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "referralrequest-example.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2014-02-14")
		XCTAssertEqual(inst.category, ReferralCategory(rawValue: "request")!)
		XCTAssertEqual(inst.context?.display, "Beverly Waver's encounter on 2014-02-14")
		XCTAssertEqual(inst.description_fhir, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst.groupIdentifier?.value, "1234")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst.identifier?[0].value, "ret4421")
		XCTAssertEqual(inst.patient?.display, "Beverly Weaver")
		XCTAssertEqual(inst.patient?.reference, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst.priority?.coding?[0].code, "med")
		XCTAssertEqual(inst.priority?.coding?[0].display, "Medium")
		XCTAssertEqual(inst.priority?.coding?[0].system?.absoluteString, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst.reason?.text, "For consideration of Grommets")
		XCTAssertEqual(inst.recipient?[0].display, "Dr Dave")
		XCTAssertEqual(inst.recipient?[0].reference, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst.requester?.display, "Serena Shrink")
		XCTAssertEqual(inst.requester?.reference, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].code, "172676009")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].display, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.serviceRequested?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceRequested?[0].text, "Insertion of grommets")
		XCTAssertEqual(inst.specialty?.coding?[0].code, "ent")
		XCTAssertEqual(inst.specialty?.coding?[0].display, "ENT")
		XCTAssertEqual(inst.specialty?.coding?[0].system?.absoluteString, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst.status, ReferralStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Referral to Dr Dave for Beverly weaver to have grommets inserted in her r) ear</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "rfs")
		XCTAssertEqual(inst.type?.coding?[0].display, "Referral for service")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://orionhealth.com/fhir/apps/referraltypes")
		
		return inst
	}
}
