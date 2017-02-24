//
//  ContractTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRContract = Models.Contract
#else
import SwiftFHIR
typealias SwiftFHIRContract = SwiftFHIR.Contract
#endif


class ContractTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRContract {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRContract {
		return try SwiftFHIRContract(json: json)
	}
	
	func testContract1() {
		do {
			let instance = try runContract1()
			try runContract1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id, "C-123")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://happyvalley.com/contract")
		XCTAssertEqual(inst.identifier?.value, "12347")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testContract2() {
		do {
			let instance = try runContract2()
			try runContract2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notAuthor.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.domain?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.domain?[0].reference, "Location/Infoway")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notAuthor")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].text, "Withhold all data authored by Good Health provider.")
		XCTAssertEqual(inst.term?[0].topic?[0].display, "Good Health Clinic")
		XCTAssertEqual(inst.term?[0].topic?[0].reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-authored-by")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data authored by specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
	
	func testContract3() {
		do {
			let instance = try runContract3()
			try runContract3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notLabs.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.domain?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.domain?[0].reference, "Location/Infoway")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notLabs")
		XCTAssertEqual(inst.issued?.description, "2014-08-17")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].subType?.coding?[0].code, "ProcedureRequest")
		XCTAssertEqual(inst.term?[0].subType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.term?[0].text, "Withhold orders from any provider.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-object-type")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.term?[1].subType?.coding?[0].code, "DiagnosticReport")
		XCTAssertEqual(inst.term?[1].subType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.term?[1].text, "Withhold order results from any provider.")
		XCTAssertEqual(inst.term?[1].type?.coding?[0].code, "withhold-object-type")
		XCTAssertEqual(inst.term?[1].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
	
	func testContract4() {
		do {
			let instance = try runContract4()
			try runContract4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notOrg.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.domain?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.domain?[0].reference, "Location/Infoway")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notOrg")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].text, "Withhold this order and any results or related objects from any provider.")
		XCTAssertEqual(inst.term?[0].topic?[0].display, "Good Health Clinic")
		XCTAssertEqual(inst.term?[0].topic?[0].reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-from")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data from specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
	
	func testContract5() {
		do {
			let instance = try runContract5()
			try runContract5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notThem.json")
		
		XCTAssertEqual(inst.agent?[0].actor?.reference, "Patient/f001")
		XCTAssertEqual(inst.authority?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.domain?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.domain?[0].reference, "Location/Infoway")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notThem")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.signer?[0].party?.reference, "Patient/f001")
		XCTAssertEqual(inst.signer?[0].signature?[0].type?[0].code, "1.2.840.10065.1.12.1.1")
		XCTAssertEqual(inst.signer?[0].signature?[0].type?[0].system?.absoluteString, "urn:iso-astm:E1762-95:2013")
		XCTAssertEqual(inst.signer?[0].signature?[0].when?.description, "2013-06-08T10:57:34-07:00")
		XCTAssertEqual(inst.signer?[0].signature?[0].whoReference?.reference, "Patient/f001")
		XCTAssertEqual(inst.signer?[0].type?.code, "COVPTY")
		XCTAssertEqual(inst.signer?[0].type?.system?.absoluteString, "http://www.hl7.org/fhir/contractsignertypecodes")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].text, "Withhold this order and any results or related objects from specified nurse provider.")
		XCTAssertEqual(inst.term?[0].topic?[0].display, "Fictive Nurse")
		XCTAssertEqual(inst.term?[0].topic?[0].reference, "Practitioner/f204")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-from")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data from specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
	
	func testContract6() {
		do {
			let instance = try runContract6()
			try runContract6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notThis.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.domain?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.domain?[0].reference, "Location/Infoway")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notThis")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].text, "Withhold this order and any results or related objects from any provider.")
		XCTAssertEqual(inst.term?[0].topic?[0].reference, "ProcedureRequest/example-lipid")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-identified-object-and-related")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold the identified object and any other resources that are related to this object.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
}
