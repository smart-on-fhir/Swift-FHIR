//
//  ConsentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRConsent = Models.Consent
#else
import SwiftFHIR
typealias SwiftFHIRConsent = SwiftFHIR.Consent
#endif


class ConsentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRConsent {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRConsent {
		return try SwiftFHIRConsent(json: json)
	}
	
	func testConsent1() {
		do {
			let instance = try runConsent1()
			try runConsent1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-Emergency.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Good Health Psychiatric Hospital")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.6")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].purpose?[0].code, "ETREAT")
		XCTAssertEqual(inst.except?[0].purpose?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[1].actor?[0].reference?.display, "Good Health Psychiatric Hospital")
		XCTAssertEqual(inst.except?[1].actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.6")
		XCTAssertEqual(inst.except?[1].actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.except?[1].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[1].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-Emergency")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-out")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent2() {
		do {
			let instance = try runConsent2()
			try runConsent2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-grantor.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Good Health Psychiatric Hospital")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.6")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].actor?[1].reference?.display, "Good Health Clinic")
		XCTAssertEqual(inst.except?[0].actor?[1].reference?.reference, "Patient/example")
		XCTAssertEqual(inst.except?[0].actor?[1].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[0].actor?[1].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.id, "consent-example-grantor")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-out")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent3() {
		do {
			let instance = try runConsent3()
			try runConsent3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notAuthor.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Good Health Clinic")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-notAuthor")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent4() {
		do {
			let instance = try runConsent4()
			try runConsent4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notOrg.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].action?[1].coding?[0].code, "correct")
		XCTAssertEqual(inst.except?[0].action?[1].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Good Health Clinic")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-notOrg")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent5() {
		do {
			let instance = try runConsent5()
			try runConsent5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notThem.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].action?[1].coding?[0].code, "correct")
		XCTAssertEqual(inst.except?[0].action?[1].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Fictive Nurse")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Practitioner/f204")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-notThem")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent6() {
		do {
			let instance = try runConsent6()
			try runConsent6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notThis.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].data?[0].meaning, ConsentDataMeaning(rawValue: "related")!)
		XCTAssertEqual(inst.except?[0].data?[0].reference?.reference, "Task/f201")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-notThis")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent7() {
		do {
			let instance = try runConsent7()
			try runConsent7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notTime.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.except?[0].period?.end?.description, "2015-02-01")
		XCTAssertEqual(inst.except?[0].period?.start?.description, "2015-01-01")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "deny")!)
		XCTAssertEqual(inst.id, "consent-example-notTime")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent8() {
		do {
			let instance = try runConsent8()
			try runConsent8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-Out.json")
		
		XCTAssertEqual(inst.actor?[0].reference?.display, "Good Health Psychiatric Hospital")
		XCTAssertEqual(inst.actor?[0].reference?.reference, "Organization/2.16.840.1.113883.19.6")
		XCTAssertEqual(inst.actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-Out")
		XCTAssertEqual(inst.organization?[0].display, "Canada Infoway")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/Infoway")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-out")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent9() {
		do {
			let instance = try runConsent9()
			try runConsent9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-pkb.json")
		
		XCTAssertEqual(inst.dateTime?.description, "2016-06-16")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[0].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.display, "Non-migrated Team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Organization/ich-nmt")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].securityLabel?[0].code, "N")
		XCTAssertEqual(inst.except?[0].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[1].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[1].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[1].actor?[0].reference?.display, "Non-migrated Team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[1].actor?[0].reference?.reference, "Organization/ich-nmt")
		XCTAssertEqual(inst.except?[1].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[1].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[1].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.except?[1].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[1].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[2].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[2].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[2].actor?[0].reference?.display, "Non-migrated Team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[2].actor?[0].reference?.reference, "Organization/ich-nmt")
		XCTAssertEqual(inst.except?[2].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[2].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[2].securityLabel?[0].code, "SOC")
		XCTAssertEqual(inst.except?[2].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[2].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[3].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[3].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[3].actor?[0].reference?.display, "Core Information Exchange team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[3].actor?[0].reference?.reference, "Organization/ich-core")
		XCTAssertEqual(inst.except?[3].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[3].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[3].securityLabel?[0].code, "N")
		XCTAssertEqual(inst.except?[3].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.except?[3].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[4].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[4].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[4].actor?[0].reference?.display, "Core Information Exchange team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[4].actor?[0].reference?.reference, "Organization/ich-core")
		XCTAssertEqual(inst.except?[4].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[4].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[4].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.except?[4].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[4].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[5].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[5].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[5].actor?[0].reference?.display, "Core Information Exchange team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[5].actor?[0].reference?.reference, "Organization/ich-core")
		XCTAssertEqual(inst.except?[5].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[5].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[5].securityLabel?[0].code, "SOC")
		XCTAssertEqual(inst.except?[5].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[5].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[6].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[6].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[6].actor?[0].reference?.display, "Core Information Exchange team - Imperial College Healthcare")
		XCTAssertEqual(inst.except?[6].actor?[0].reference?.reference, "Organization/ich-core")
		XCTAssertEqual(inst.except?[6].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[6].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[6].securityLabel?[0].code, "SEX")
		XCTAssertEqual(inst.except?[6].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[6].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[7].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[7].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[7].actor?[0].reference?.display, "Torbay and Source Devon Trust - Parkinson's Team")
		XCTAssertEqual(inst.except?[7].actor?[0].reference?.reference, "Organization/tsd-park")
		XCTAssertEqual(inst.except?[7].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[7].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[7].securityLabel?[0].code, "N")
		XCTAssertEqual(inst.except?[7].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/Confidentiality")
		XCTAssertEqual(inst.except?[7].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[8].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[8].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[8].actor?[0].reference?.display, "Torbay and Source Devon Trust - Parkinson's Team")
		XCTAssertEqual(inst.except?[8].actor?[0].reference?.reference, "Organization/tsd-park")
		XCTAssertEqual(inst.except?[8].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[8].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[8].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.except?[8].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[8].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.except?[9].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.except?[9].action?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentaction")
		XCTAssertEqual(inst.except?[9].actor?[0].reference?.display, "Torbay and Source Devon Trust - Parkinson's Team")
		XCTAssertEqual(inst.except?[9].actor?[0].reference?.reference, "Organization/tsd-park")
		XCTAssertEqual(inst.except?[9].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.except?[9].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[9].securityLabel?[0].code, "SOC")
		XCTAssertEqual(inst.except?[9].securityLabel?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActCode")
		XCTAssertEqual(inst.except?[9].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.id, "consent-example-pkb")
		XCTAssertEqual(inst.organization?[0].display, "Patients Know Best")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/pkb")
		XCTAssertEqual(inst.patient?.display, "...example patient...")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-out")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testConsent10() {
		do {
			let instance = try runConsent10()
			try runConsent10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Consent successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runConsent10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRConsent {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-signature.json")
		
		XCTAssertEqual(inst.actor?[0].reference?.reference, "Practitioner/13")
		XCTAssertEqual(inst.actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "HIPAA-Auth")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/consentcategorycodes")
		XCTAssertEqual(inst.consentingParty?[0].reference, "Patient/72")
		XCTAssertEqual(inst.dateTime?.description, "2016-05-26T00:41:10-04:00")
		XCTAssertEqual(inst.except?[0].`class`?[0].code, "application/hl7-cda+xml")
		XCTAssertEqual(inst.except?[0].`class`?[0].system?.absoluteString, "urn:ietf:bcp:13")
		XCTAssertEqual(inst.except?[0].actor?[0].reference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].code, "AUT")
		XCTAssertEqual(inst.except?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.except?[0].code?[0].code, "34133-9")
		XCTAssertEqual(inst.except?[0].code?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.except?[0].code?[1].code, "18842-5")
		XCTAssertEqual(inst.except?[0].code?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.except?[0].type, ConsentExceptType(rawValue: "permit")!)
		XCTAssertEqual(inst.id, "consent-example-signature")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.9.1")
		XCTAssertEqual(inst.identifier?.value, "494e0c7a-a69e-4fb4-9d02-6aae747790d7")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/example")
		XCTAssertEqual(inst.patient?.reference, "Patient/72")
		XCTAssertEqual(inst.period?.end?.description, "2016-10-10")
		XCTAssertEqual(inst.period?.start?.description, "2015-10-10")
		XCTAssertEqual(inst.policyRule?.absoluteString, "http://hl7.org/fhir/ConsentPolicy/opt-in")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
