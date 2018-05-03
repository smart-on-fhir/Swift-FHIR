//
//  ContractTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notOrg.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Michigan Health")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/3")
		XCTAssertEqual(inst.domain?[0].display, "UK Pharmacies")
		XCTAssertEqual(inst.domain?[0].reference, "Location/ukp")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notOrg")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].offer?.text, "Withhold this order and any results or related objects from any provider.")
		XCTAssertEqual(inst.term?[0].offer?.topic?.display, "Good Health Clinic")
		XCTAssertEqual(inst.term?[0].offer?.topic?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-from")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data from specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example-ins-policy.json")
		
		XCTAssertEqual(inst.applies?.start?.description, "2017-01-01")
		XCTAssertEqual(inst.id, "INS-101")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://xyz-insurance.com/forms")
		XCTAssertEqual(inst.identifier?[0].value, "YCSCWLN(01-2017)")
		XCTAssertEqual(inst.term?[0].asset?[0].`class`?.code, "RicardianContract")
		XCTAssertEqual(inst.term?[0].asset?[0].`class`?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.term?[0].asset?[0].code?.display, "sample")
		XCTAssertEqual(inst.term?[0].asset?[0].period?.start?.description, "2017-06-01")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].effectiveTime?.description, "1995")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].entityCodeableConcept?.text, "Ford Bobcat")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].factor, "1.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].identifier?.system?.absoluteString, "http://somewhere.motor-vehicle.com/vin")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].identifier?.value, "XXSVT34-7665t952236")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.code, "CAD")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.value, "200.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].points, "1.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].quantity?.value, "1")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.code, "CAD")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.value, "200.0")
		XCTAssertEqual(inst.term?[0].group?[0].offer?.text, "Eligible Providers")
		XCTAssertEqual(inst.term?[0].group?[1].offer?.text, "Responsibility for Payment")
		XCTAssertEqual(inst.term?[0].group?[2].group?[0].group?[0].offer?.text, "Emergency Room Copay")
		XCTAssertEqual(inst.term?[0].group?[2].group?[0].group?[1].offer?.text, "Professional Visit Copay")
		XCTAssertEqual(inst.term?[0].group?[2].group?[0].offer?.text, "Copays")
		XCTAssertEqual(inst.term?[0].group?[2].group?[1].offer?.text, "Calendar Year Deductible")
		XCTAssertEqual(inst.term?[0].group?[2].group?[2].offer?.text, "Out-Of-Pocket Maximum")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].group?[0].offer?.text, "Ambulance Services")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].group?[1].offer?.text, "Dental Services")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].group?[2].offer?.text, "Diagnostic Services")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].group?[3].offer?.text, "Emergency Room Services")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].group?[4].offer?.text, "Hospital Inpatient Care")
		XCTAssertEqual(inst.term?[0].group?[2].group?[3].offer?.text, "Medical Services")
		XCTAssertEqual(inst.term?[0].group?[2].offer?.text, "List of Benefits")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "healthinsurance")
		XCTAssertEqual(inst.type?.coding?[0].display, "Health Insurance")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contracttypecodes")
		
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example-42cfr-part2.json")
		
		XCTAssertEqual(inst.applies?.start?.description, "2013-11-01T21:18:27-04:00")
		XCTAssertEqual(inst.contentDerivative?.coding?[0].code, "registration")
		XCTAssertEqual(inst.contentDerivative?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contract-content-derivative")
		XCTAssertEqual(inst.id, "C-2121")
		XCTAssertEqual(inst.issued?.description, "2013-11-01T21:18:27-04:00")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.language, "en-US")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "MDHHS-5515 Consent To Share Your Health Information")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.url?.absoluteString, "http://org.mihin.ecms/ConsentDirective-2121")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2016-07-19T18:18:42.108-04:00")
		XCTAssertEqual(inst.meta?.versionId, "1")
		XCTAssertEqual(inst.signer?[0].party?.display, "Alice Recruit")
		XCTAssertEqual(inst.signer?[0].party?.reference, "Patient/f201")
		XCTAssertEqual(inst.signer?[0].signature?[0].type?[0].code, "1.2.840.10065.1.12.1.1")
		XCTAssertEqual(inst.signer?[0].signature?[0].type?[0].system?.absoluteString, "urn:iso-astm:E1762-95:2013")
		XCTAssertEqual(inst.signer?[0].signature?[0].when?.description, "2017-02-08T10:57:34+01:00")
		XCTAssertEqual(inst.signer?[0].signature?[0].whoReference?.reference, "Patient/f201")
		XCTAssertEqual(inst.signer?[0].type?.code, "SELF")
		XCTAssertEqual(inst.signer?[0].type?.system?.absoluteString, "http://org.mdhhs.fhir.consent-signer-type")
		XCTAssertEqual(inst.status, "executed")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "hcd")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentcategorycodes")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f201")
		XCTAssertEqual(inst.term?[0].action?[0].coding?[0].code, "action-a")
		XCTAssertEqual(inst.term?[0].action?[0].coding?[0].system?.absoluteString, "http://www.hl7.org/fhir/contractaction")
		XCTAssertEqual(inst.term?[0].actionReason?[0].coding?[0].code, "HPRGRP")
		XCTAssertEqual(inst.term?[0].actionReason?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.term?[0].agent?[0].actor?.display, "VA Ann Arbor Healthcare System")
		XCTAssertEqual(inst.term?[0].agent?[0].actor?.reference, "Organization/f001")
		XCTAssertEqual(inst.term?[0].agent?[0].role?[0].coding?[0].code, "IR")
		XCTAssertEqual(inst.term?[0].agent?[0].role?[0].coding?[0].display, "Recipient")
		XCTAssertEqual(inst.term?[0].agent?[0].role?[0].coding?[0].system?.absoluteString, "http://org.mdhhs.fhir.consent-actor-type")
		XCTAssertEqual(inst.term?[0].agent?[0].role?[0].text, "Recipient of restricted health information")
		XCTAssertEqual(inst.term?[0].agent?[1].actor?.display, "Community Mental Health Clinic")
		XCTAssertEqual(inst.term?[0].agent?[1].actor?.reference, "Organization/2")
		XCTAssertEqual(inst.term?[0].agent?[1].role?[0].coding?[0].code, "IS")
		XCTAssertEqual(inst.term?[0].agent?[1].role?[0].coding?[0].display, "Sender")
		XCTAssertEqual(inst.term?[0].agent?[1].role?[0].coding?[0].system?.absoluteString, "http://org.mdhhs.fhir.consent-actor-type")
		XCTAssertEqual(inst.term?[0].agent?[1].role?[0].text, "Sender of restricted health information")
		XCTAssertEqual(inst.term?[0].asset?[0].data?[0].meaning, ContractDataMeaning(rawValue: "instance")!)
		XCTAssertEqual(inst.term?[0].asset?[0].data?[0].reference?.display, "Some data")
		XCTAssertEqual(inst.term?[0].asset?[0].dataPeriod?.end?.description, "2019-11-01T21:18:27-04:00")
		XCTAssertEqual(inst.term?[0].asset?[0].dataPeriod?.start?.description, "2013-11-01T21:18:27-04:00")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[0].code, "R")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[0].display, "Restricted")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[1].code, "ETH")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[1].display, "substance abuse information sensitivity")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[1].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[2].code, "42CFRPart2")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[2].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[3].code, "TREAT")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[3].display, "treatment")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[3].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[4].code, "HPAYMT")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[4].display, "healthcare payment")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[4].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[5].code, "HOPERAT")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[5].display, "healthcare operations")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[5].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[6].code, "PERSISTLABEL")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[6].display, "persist security label")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[6].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[7].code, "PRIVMARK")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[7].display, "privacy mark")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[7].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[8].code, "NORDSCLCD")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[8].display, "no redisclosure without consent directive")
		XCTAssertEqual(inst.term?[0].asset?[0].securityLabel?[8].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].offer?.decision?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.term?[0].offer?.decision?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.term?[0].offer?.text, "Can't refuse")
		XCTAssertEqual(inst.term?[0].offer?.type?.coding?[0].code, "statutory")
		XCTAssertEqual(inst.term?[0].offer?.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contract-term-type")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://org.mdhhs.fhir.consentdirective-type")
		XCTAssertEqual(inst.type?.text, "Opt-in consent directive")
		
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notLabs.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Michigan Health")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/3")
		XCTAssertEqual(inst.domain?[0].display, "UK Pharmacies")
		XCTAssertEqual(inst.domain?[0].reference, "Location/ukp")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notLabs")
		XCTAssertEqual(inst.issued?.description, "2014-08-17")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].group?[0].offer?.text, "Withhold orders from any provider.")
		XCTAssertEqual(inst.term?[0].group?[0].subType?.coding?[0].code, "ServiceRequest")
		XCTAssertEqual(inst.term?[0].group?[0].subType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.term?[0].group?[0].type?.coding?[0].code, "withhold-object-type")
		XCTAssertEqual(inst.term?[0].group?[0].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.term?[0].group?[1].offer?.text, "Withhold order results from any provider.")
		XCTAssertEqual(inst.term?[0].group?[1].subType?.coding?[0].code, "DiagnosticReport")
		XCTAssertEqual(inst.term?[0].group?[1].subType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.term?[0].group?[1].type?.coding?[0].code, "withhold-object-type")
		XCTAssertEqual(inst.term?[0].group?[1].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.term?[0].offer?.text, "sample")
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
		
		XCTAssertEqual(inst.authority?[0].display, "Michigan Health")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/3")
		XCTAssertEqual(inst.domain?[0].display, "UK Pharmacies")
		XCTAssertEqual(inst.domain?[0].reference, "Location/ukp")
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
		XCTAssertEqual(inst.term?[0].agent?[0].actor?.reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].offer?.text, "Withhold this order and any results or related objects from specified nurse provider.")
		XCTAssertEqual(inst.term?[0].offer?.topic?.display, "Fictive Nurse")
		XCTAssertEqual(inst.term?[0].offer?.topic?.reference, "Practitioner/f204")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-from")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data from specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notAuthor.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Michigan Health")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/3")
		XCTAssertEqual(inst.domain?[0].display, "UK Pharmacies")
		XCTAssertEqual(inst.domain?[0].reference, "Location/ukp")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notAuthor")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].offer?.text, "Withhold all data authored by Good Health provider.")
		XCTAssertEqual(inst.term?[0].offer?.topic?.display, "Good Health Clinic")
		XCTAssertEqual(inst.term?[0].offer?.topic?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-authored-by")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold all data authored by specified actor entity.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
	
	func testContract7() {
		do {
			let instance = try runContract7()
			try runContract7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "contract-example.json")
		
		XCTAssertEqual(inst.id, "C-123")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://happyvalley.com/contract")
		XCTAssertEqual(inst.identifier?[0].value, "12347")
		XCTAssertEqual(inst.legallyBindingAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.legallyBindingAttachment?.url?.absoluteString, "http://www.aws3.com/storage/doc.pdf")
		XCTAssertEqual(inst.rule?.contentAttachment?.contentType, "application/txt")
		XCTAssertEqual(inst.rule?.contentAttachment?.url?.absoluteString, "http://www.rfc-editor.org/bcp/bcp13.txt")
		XCTAssertEqual(inst.term?[0].asset?[0].`class`?.code, "RicardianContract")
		XCTAssertEqual(inst.term?[0].asset?[0].`class`?.system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.term?[0].asset?[0].code?.display, "sample")
		XCTAssertEqual(inst.term?[0].asset?[0].period?.start?.description, "2017-06-01")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].effectiveTime?.description, "1995")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].entityCodeableConcept?.text, "Ford Bobcat")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].factor, "1.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].identifier?.system?.absoluteString, "http://somewhere.motor-vehicle.com/vin")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].identifier?.value, "XXSVT34-7665t952236")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.code, "CAD")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].net?.value, "200.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].points, "1.0")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].quantity?.value, "1")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.code, "CAD")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.term?[0].asset?[0].valuedItem?[0].unitPrice?.value, "200.0")
		XCTAssertEqual(inst.term?[0].offer?.text, "Can't refuse")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the contract</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testContract8() {
		do {
			let instance = try runContract8()
			try runContract8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Contract successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runContract8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRContract {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "pcd-example-notThis.json")
		
		XCTAssertEqual(inst.authority?[0].display, "Michigan Health")
		XCTAssertEqual(inst.authority?[0].reference, "Organization/3")
		XCTAssertEqual(inst.domain?[0].display, "UK Pharmacies")
		XCTAssertEqual(inst.domain?[0].reference, "Location/ukp")
		XCTAssertEqual(inst.friendly?[0].contentAttachment?.title, "The terms of the consent in friendly consumer speak.")
		XCTAssertEqual(inst.id, "pcd-example-notThis")
		XCTAssertEqual(inst.issued?.description, "2015-11-18")
		XCTAssertEqual(inst.legal?[0].contentAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.subType?[0].coding?[0].code, "Opt-In")
		XCTAssertEqual(inst.subType?[0].coding?[0].display, "Default Authorization with exceptions.")
		XCTAssertEqual(inst.subType?[0].coding?[0].system?.absoluteString, "http://www.infoway-inforoute.ca.org/Consent-subtype-codes")
		XCTAssertEqual(inst.subject?[0].display, "P. van de Heuvel")
		XCTAssertEqual(inst.subject?[0].reference, "Patient/f001")
		XCTAssertEqual(inst.term?[0].applies?.start?.description, "2015-11-18")
		XCTAssertEqual(inst.term?[0].identifier?.system?.absoluteString, "http://example.org/fhir/term-items")
		XCTAssertEqual(inst.term?[0].identifier?.value, "3347689")
		XCTAssertEqual(inst.term?[0].issued?.description, "2015-11-01")
		XCTAssertEqual(inst.term?[0].offer?.text, "Withhold this order and any results or related objects from any provider.")
		XCTAssertEqual(inst.term?[0].offer?.topic?.reference, "ServiceRequest/lipid")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].code, "withhold-identified-object-and-related")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].display, "Withhold the identified object and any other resources that are related to this object.")
		XCTAssertEqual(inst.term?[0].type?.coding?[0].system?.absoluteString, "http://example.org/fhir/consent-term-type-codes")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "57016-8")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://loinc.org")
		
		return inst
	}
}
