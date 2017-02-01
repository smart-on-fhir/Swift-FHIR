//
//  DocumentReferenceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRDocumentReference = Models.DocumentReference
#else
import SwiftFHIR
typealias SwiftFHIRDocumentReference = SwiftFHIR.DocumentReference
#endif


class DocumentReferenceTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRDocumentReference {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRDocumentReference {
		return try SwiftFHIRDocumentReference(json: json)
	}
	
	func testDocumentReference1() {
		do {
			let instance = try runDocumentReference1()
			try runDocumentReference1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test DocumentReference successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runDocumentReference1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRDocumentReference {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "documentreference-example.json")
		
		XCTAssertEqual(inst.`class`?.coding?[0].code, "History and Physical")
		XCTAssertEqual(inst.`class`?.coding?[0].display, "History and Physical")
		XCTAssertEqual(inst.`class`?.coding?[0].system?.absoluteString, "http://ihe.net/xds/connectathon/classCodes")
		XCTAssertEqual(inst.authenticator?.reference, "Organization/organization-example")
		XCTAssertEqual(inst.author?[0].reference, "Practitioner/xcda1")
		XCTAssertEqual(inst.author?[1].reference, "#a2")
		XCTAssertEqual(inst.contained?[0].id, "a2")
		XCTAssertEqual(inst.content?[0].attachment?.contentType, "application/hl7-v3+xml")
		XCTAssertEqual(inst.content?[0].attachment?.hash, Base64Binary(value: "2jmj7l5rSw0yVb/vlWAYkK/YBwk="))
		XCTAssertEqual(inst.content?[0].attachment?.language, "en-US")
		XCTAssertEqual(inst.content?[0].attachment?.size, 3654)
		XCTAssertEqual(inst.content?[0].attachment?.url?.absoluteString, "http://example.org/xds/mhd/Binary/07a6483f-732b-461e-86b6-edb665c45510")
		XCTAssertEqual(inst.content?[0].format?[0].code, "urn:ihe:pcc:handp:2008")
		XCTAssertEqual(inst.content?[0].format?[0].display, "History and Physical Specification")
		XCTAssertEqual(inst.content?[0].format?[0].system?.absoluteString, "urn:oid:1.3.6.1.4.1.19376.1.2.3")
		XCTAssertEqual(inst.context?.encounter?.reference, "Encounter/xcda")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].code, "T-D8200")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].display, "Arm")
		XCTAssertEqual(inst.context?.event?[0].coding?[0].system?.absoluteString, "http://ihe.net/xds/connectathon/eventCodes")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].code, "Outpatient")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].display, "Outpatient")
		XCTAssertEqual(inst.context?.facilityType?.coding?[0].system?.absoluteString, "http://www.ihe.net/xds/connectathon/healthcareFacilityTypeCodes")
		XCTAssertEqual(inst.context?.period?.end?.description, "2004-12-23T08:01:00+11:00")
		XCTAssertEqual(inst.context?.period?.start?.description, "2004-12-23T08:00:00+11:00")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].code, "General Medicine")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].display, "General Medicine")
		XCTAssertEqual(inst.context?.practiceSetting?.coding?[0].system?.absoluteString, "http://www.ihe.net/xds/connectathon/practiceSettingCodes")
		XCTAssertEqual(inst.context?.related?[0].identifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.context?.related?[0].identifier?.value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.2345")
		XCTAssertEqual(inst.context?.related?[0].ref?.reference, "Patient/xcda")
		XCTAssertEqual(inst.context?.sourcePatientInfo?.reference, "Patient/xcda")
		XCTAssertEqual(inst.created?.description, "2005-12-24T09:35:00+11:00")
		XCTAssertEqual(inst.custodian?.reference, "Organization/organization-example")
		XCTAssertEqual(inst.description_fhir, "Physical")
		XCTAssertEqual(inst.docStatus?.coding?[0].code, "preliminary")
		XCTAssertEqual(inst.docStatus?.coding?[0].display, "preliminary")
		XCTAssertEqual(inst.docStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/composition-status")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.indexed?.description, "2005-12-24T09:43:41+11:00")
		XCTAssertEqual(inst.masterIdentifier?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.masterIdentifier?.value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7")
		XCTAssertEqual(inst.relatesTo?[0].code, DocumentRelationshipType(rawValue: "appends")!)
		XCTAssertEqual(inst.relatesTo?[0].target?.reference, "DocumentReference/example")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].code, "V")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].display, "very restricted")
		XCTAssertEqual(inst.securityLabel?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.status, DocumentReferenceStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/xcda")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "34108-1")
		XCTAssertEqual(inst.type?.coding?[0].display, "Outpatient Note")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
}
