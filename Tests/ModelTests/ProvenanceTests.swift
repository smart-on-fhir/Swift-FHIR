//
//  ProvenanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRProvenance = Models.Provenance
#else
import SwiftFHIR
typealias SwiftFHIRProvenance = SwiftFHIR.Provenance
#endif


class ProvenanceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRProvenance {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRProvenance {
		return try SwiftFHIRProvenance(json: json)
	}
	
	func testProvenance1() {
		do {
			let instance = try runProvenance1()
			try runProvenance1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProvenance1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProvenance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example-sig.json")
		
		XCTAssertEqual(inst.activity?.code, "AU")
		XCTAssertEqual(inst.activity?.display, "authenticated")
		XCTAssertEqual(inst.activity?.system?.absoluteString, "http://hl7.org/fhir/v3/DocumentCompletion")
		XCTAssertEqual(inst.agent?[0].role?.code, "verifier")
		XCTAssertEqual(inst.agent?[0].role?.system?.absoluteString, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent?[0].whoUri?.absoluteString, "mailto://hhd@ssa.gov")
		XCTAssertEqual(inst.id, "signature")
		XCTAssertEqual(inst.reason?[0].code, "TREAT")
		XCTAssertEqual(inst.reason?[0].display, "treatment")
		XCTAssertEqual(inst.reason?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.recorded?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].blob, Base64Binary(value: "Li4u"))
		XCTAssertEqual(inst.signature?[0].contentType, "application/signature+xml")
		XCTAssertEqual(inst.signature?[0].type?[0].code, "1.2.840.10065.1.12.1.5")
		XCTAssertEqual(inst.signature?[0].type?[0].display, "Verification Signature")
		XCTAssertEqual(inst.signature?[0].type?[0].system?.absoluteString, "http://hl7.org/fhir/valueset-signature-type")
		XCTAssertEqual(inst.signature?[0].when?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].whoReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.target?[0].reference, "DocumentReference/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProvenance2() {
		do {
			let instance = try runProvenance2()
			try runProvenance2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProvenance2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProvenance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example.json")
		
		XCTAssertEqual(inst.agent?[0].onBehalfOfUri?.absoluteString, "#a1")
		XCTAssertEqual(inst.agent?[0].relatedAgentType?.text, "used")
		XCTAssertEqual(inst.agent?[0].role?.code, "author")
		XCTAssertEqual(inst.agent?[0].role?.system?.absoluteString, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent?[0].whoReference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.agent?[1].id, "a1")
		XCTAssertEqual(inst.agent?[1].role?.code, "DEV")
		XCTAssertEqual(inst.agent?[1].role?.system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.agent?[1].whoReference?.reference, "Device/software")
		XCTAssertEqual(inst.entity?[0].reference?.display, "CDA Document in XDS repository")
		XCTAssertEqual(inst.entity?[0].reference?.reference, "DocumentReference/90f55916-9d15-4b8f-87a9-2d7ade8670c8")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.period?.start?.description, "2015-06-27")
		XCTAssertEqual(inst.policy?[0].absoluteString, "http://acme.com/fhir/Consent/25")
		XCTAssertEqual(inst.reason?[0].code, "3457005")
		XCTAssertEqual(inst.reason?[0].display, "Referral")
		XCTAssertEqual(inst.reason?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.recorded?.description, "2015-06-27T08:39:24+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Procedure/example/_history/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">procedure record authored on 27-June 2015 by Harold Hippocrates, MD Content extracted from XDS managed CDA Referral received 26-June</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
