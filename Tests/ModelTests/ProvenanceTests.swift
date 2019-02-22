//
//  ProvenanceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.activity?.coding?[0].code, "AU")
		XCTAssertEqual(inst.activity?.coding?[0].display, "authenticated")
		XCTAssertEqual(inst.activity?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-DocumentCompletion")
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].code, "VERF")
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/contractsignertypecodes")
		XCTAssertEqual(inst.agent?[0].who?.identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.agent?[0].who?.identifier?.value, "mailto://hhd@ssa.gov")
		XCTAssertEqual(inst.id, "signature")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.reason?[0].coding?[0].code, "TREAT")
		XCTAssertEqual(inst.reason?[0].coding?[0].display, "treatment")
		XCTAssertEqual(inst.reason?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.recorded?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].data, Base64Binary(value: "Li4u"))
		XCTAssertEqual(inst.signature?[0].sigFormat, "application/signature+xml")
		XCTAssertEqual(inst.signature?[0].targetFormat, "application/fhir+xml")
		XCTAssertEqual(inst.signature?[0].type?[0].code, "1.2.840.10065.1.12.1.5")
		XCTAssertEqual(inst.signature?[0].type?[0].display, "Verification Signature")
		XCTAssertEqual(inst.signature?[0].type?[0].system?.absoluteString, "urn:iso-astm:E1762-95:2013")
		XCTAssertEqual(inst.signature?[0].when?.description, "2015-08-27T08:39:24+10:00")
		XCTAssertEqual(inst.signature?[0].who?.reference, "Practitioner/xcda-author")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example-cwl.json")
		
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.agent?[0].who?.reference, "Patient/example")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].code, "CWL")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].display, "lobSTR")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].system?.absoluteString, "https://github.com/common-workflow-language/workflows")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.value, "https://github.com/common-workflow-language/workflows/blob/master/workflows/lobSTR/lobSTR-workflow.cwl")
		XCTAssertEqual(inst.id, "example-cwl")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.occurredPeriod?.start?.description, "2016-11-30")
		XCTAssertEqual(inst.reason?[0].text, "profiling Short Tandem Repeats (STRs) from high throughput sequencing data.")
		XCTAssertEqual(inst.recorded?.description, "2016-12-01T08:12:14+10:00")
		XCTAssertEqual(inst.target?[0].reference, "MolecularSequence/example-pgx-1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProvenance3() {
		do {
			let instance = try runProvenance3()
			try runProvenance3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProvenance3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProvenance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example-biocompute-object.json")
		
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.agent?[0].who?.reference, "Practitioner/example")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].code, "biocompute")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].display, "obj.1001")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.type?.coding?[0].system?.absoluteString, "https://hive.biochemistry.gwu.edu")
		XCTAssertEqual(inst.entity?[0].what?.identifier?.value, "https://hive.biochemistry.gwu.edu/cgi-bin/prd/htscsrs/servlet.cgi?pageid=bcoexample_1")
		XCTAssertEqual(inst.id, "example-biocompute-object")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.occurredPeriod?.start?.description, "2017-06-06")
		XCTAssertEqual(inst.reason?[0].text, "antiviral resistance detection")
		XCTAssertEqual(inst.recorded?.description, "2016-06-09T08:12:14+10:00")
		XCTAssertEqual(inst.target?[0].reference, "MolecularSequence/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testProvenance4() {
		do {
			let instance = try runProvenance4()
			try runProvenance4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Provenance successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runProvenance4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRProvenance {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "provenance-example.json")
		
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].code, "AUT")
		XCTAssertEqual(inst.agent?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.agent?[0].who?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.agent?[1].id, "a1")
		XCTAssertEqual(inst.agent?[1].type?.coding?[0].code, "DEV")
		XCTAssertEqual(inst.agent?[1].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.agent?[1].who?.reference, "Device/software")
		XCTAssertEqual(inst.entity?[0].role, ProvenanceEntityRole(rawValue: "source")!)
		XCTAssertEqual(inst.entity?[0].what?.display, "CDA Document in XDS repository")
		XCTAssertEqual(inst.entity?[0].what?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.occurredPeriod?.end?.description, "2015-06-28")
		XCTAssertEqual(inst.occurredPeriod?.start?.description, "2015-06-27")
		XCTAssertEqual(inst.policy?[0].absoluteString, "http://acme.com/fhir/Consent/25")
		XCTAssertEqual(inst.reason?[0].coding?[0].code, "3457005")
		XCTAssertEqual(inst.reason?[0].coding?[0].display, "Referral")
		XCTAssertEqual(inst.reason?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.recorded?.description, "2015-06-27T08:39:24+10:00")
		XCTAssertEqual(inst.target?[0].reference, "Procedure/example/_history/1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
