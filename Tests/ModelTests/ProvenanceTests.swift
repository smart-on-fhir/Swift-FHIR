//
//  ProvenanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ProvenanceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Provenance {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Provenance {
		let instance = SwiftFHIR.Provenance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProvenance1() {
		do {
			let instance = try runProvenance1()
			try runProvenance1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw")
		}
	}
	
	@discardableResult
	func runProvenance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Provenance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example-sig.json")
		
		XCTAssertEqual(inst.activity?.coding?[0].code, "AU")
		XCTAssertEqual(inst.activity?.coding?[0].display, "authenticated")
		XCTAssertEqual(inst.activity?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/DocumentCompletion")
		XCTAssertEqual(inst.agent?[0].actor?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.agent?[0].role?.code, "verifier")
		XCTAssertEqual(inst.agent?[0].role?.system?.absoluteString, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent?[0].userId?.system?.absoluteString, "http://acme.com/fhir/users/sso")
		XCTAssertEqual(inst.agent?[0].userId?.value, "hhd")
		XCTAssertEqual(inst.id, "signature")
		XCTAssertEqual(inst.reason?[0].coding?[0].code, "TREAT")
		XCTAssertEqual(inst.reason?[0].coding?[0].display, "treatment")
		XCTAssertEqual(inst.reason?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.recorded?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].blob, Base64Binary(value: "Li4u"))
		XCTAssertEqual(inst.signature?[0].contentType, "application/signature+xml")
		XCTAssertEqual(inst.signature?[0].type?[0].code, "1.2.840.10065.1.12.1.5")
		XCTAssertEqual(inst.signature?[0].type?[0].display, "Verification")
		XCTAssertEqual(inst.signature?[0].type?[0].system?.absoluteString, "http://hl7.org/fhir/valueset-signature-type")
		XCTAssertEqual(inst.signature?[0].when?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].whoReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.target?[0].reference, "DocumentReference/example")
		XCTAssertEqual(inst.text?.div, "<div>procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testProvenance2() {
		do {
			let instance = try runProvenance2()
			try runProvenance2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw")
		}
	}
	
	@discardableResult
	func runProvenance2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Provenance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example.json")
		
		XCTAssertEqual(inst.agent?[0].actor?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.agent?[0].relatedAgent?[0].target?.absoluteString, "#a1")
		XCTAssertEqual(inst.agent?[0].relatedAgent?[0].type?.text, "used")
		XCTAssertEqual(inst.agent?[0].role?.code, "author")
		XCTAssertEqual(inst.agent?[0].role?.system?.absoluteString, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent?[0].userId?.system?.absoluteString, "http://acme.com/fhir/users/sso")
		XCTAssertEqual(inst.agent?[0].userId?.value, "hhd")
		XCTAssertEqual(inst.agent?[1].actor?.reference, "Device/software")
		XCTAssertEqual(inst.agent?[1].id, "a1")
		XCTAssertEqual(inst.agent?[1].role?.code, "DEV")
		XCTAssertEqual(inst.agent?[1].role?.system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.entity?[0].display, "CDA Document in XDS repository")
		XCTAssertEqual(inst.entity?[0].reference?.absoluteString, "DocumentReference/90f55916-9d15-4b8f-87a9-2d7ade8670c8")
		XCTAssertEqual(inst.entity?[0].role, "source")
		XCTAssertEqual(inst.entity?[0].type?.code, "57133-1")
		XCTAssertEqual(inst.entity?[0].type?.display, "Referral note")
		XCTAssertEqual(inst.entity?[0].type?.system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.period?.start?.description, "2015-06-27")
		XCTAssertEqual(inst.policy?[0].absoluteString, "http://acme.com/fhir/Consent/25")
		XCTAssertEqual(inst.reason?[0].coding?[0].code, "3457005")
		XCTAssertEqual(inst.reason?[0].coding?[0].display, "Referral")
		XCTAssertEqual(inst.reason?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason?[0].text, "Accepting a referral")
		XCTAssertEqual(inst.recorded?.description, "2015-06-27T08:39:24+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Procedure/example/_history/1")
		XCTAssertEqual(inst.text?.div, "<div>procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
