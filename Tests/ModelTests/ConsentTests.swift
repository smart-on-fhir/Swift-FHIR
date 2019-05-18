//
//  ConsentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notThis.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-notThis")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.data?[0].meaning, ConsentDataMeaning(rawValue: "related")!)
		XCTAssertEqual(inst.provision?.data?[0].reference?.reference, "Task/example3")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-smartonfhir.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2016-06-23T17:02:33+10:00")
		XCTAssertEqual(inst.id, "consent-example-smartonfhir")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.reference, "Patient/xcda")
		XCTAssertEqual(inst.performer?[0].reference, "RelatedPerson/peter")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.period?.end?.description, "2016-06-23T17:32:33+10:00")
		XCTAssertEqual(inst.provision?.period?.start?.description, "2016-06-23T17:02:33+10:00")
		XCTAssertEqual(inst.provision?.provision?[0].`class`?[0].code, "MedicationRequest")
		XCTAssertEqual(inst.provision?.provision?[0].`class`?[0].system?.absoluteString, "http://hl7.org/fhir/resource-types")
		XCTAssertEqual(inst.provision?.provision?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[0].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[0].type, ConsentProvisionType(rawValue: "permit")!)
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-notAuthor")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notTime.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-notTime")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.period?.end?.description, "2015-02-01")
		XCTAssertEqual(inst.provision?.period?.start?.description, "2015-01-01")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-signature.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "npp")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentcategorycodes")
		XCTAssertEqual(inst.dateTime?.description, "2016-05-26T00:41:10-04:00")
		XCTAssertEqual(inst.id, "consent-example-signature")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.3.72.5.9.1")
		XCTAssertEqual(inst.identifier?[0].value, "494e0c7a-a69e-4fb4-9d02-6aae747790d7")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.reference, "Patient/72")
		XCTAssertEqual(inst.performer?[0].reference, "Patient/72")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Practitioner/13")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.period?.end?.description, "2016-10-10")
		XCTAssertEqual(inst.provision?.period?.start?.description, "2015-10-10")
		XCTAssertEqual(inst.provision?.provision?[0].`class`?[0].code, "application/hl7-cda+xml")
		XCTAssertEqual(inst.provision?.provision?[0].`class`?[0].system?.absoluteString, "urn:ietf:bcp:13")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].reference?.reference, "Practitioner/xcda-author")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].role?.coding?[0].code, "AUT")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[0].code?[0].coding?[0].code, "34133-9")
		XCTAssertEqual(inst.provision?.provision?[0].code?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.provision?.provision?[0].code?[1].coding?[0].code, "18842-5")
		XCTAssertEqual(inst.provision?.provision?[0].code?[1].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.provision?.provision?[0].type, ConsentProvisionType(rawValue: "permit")!)
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notThem.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-notThem")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.action?[1].coding?[0].code, "correct")
		XCTAssertEqual(inst.provision?.action?[1].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.display, "Fictive Nurse")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Practitioner/f204")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-grantor.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "INFAO")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-grantor")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTOUT")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "CST")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.actor?[1].reference?.display, "Good Health Clinic")
		XCTAssertEqual(inst.provision?.actor?[1].reference?.reference, "Patient/example")
		XCTAssertEqual(inst.provision?.actor?[1].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.actor?[1].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example-notOrg.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2015-11-18")
		XCTAssertEqual(inst.id, "consent-example-notOrg")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.action?[1].coding?[0].code, "correct")
		XCTAssertEqual(inst.provision?.action?[1].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.type, ConsentProvisionType(rawValue: "deny")!)
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2016-06-16")
		XCTAssertEqual(inst.id, "consent-example-pkb")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "...example patient...")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTOUT")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[0].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[0].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[0].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[0].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.provision?.provision?[0].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[1].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[1].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[1].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[1].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[1].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[1].securityLabel?[0].code, "SPI")
		XCTAssertEqual(inst.provision?.provision?[1].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[2].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[2].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[2].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[2].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[2].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[2].securityLabel?[0].code, "N")
		XCTAssertEqual(inst.provision?.provision?[2].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-Confidentiality")
		XCTAssertEqual(inst.provision?.provision?[3].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[3].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[3].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[3].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[3].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[3].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.provision?.provision?[3].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[4].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[4].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[4].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[4].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[4].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[4].securityLabel?[0].code, "SPI")
		XCTAssertEqual(inst.provision?.provision?[4].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[5].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[5].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[5].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[5].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[5].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[5].securityLabel?[0].code, "SEX")
		XCTAssertEqual(inst.provision?.provision?[5].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[6].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[6].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[6].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[6].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[6].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[6].securityLabel?[0].code, "N")
		XCTAssertEqual(inst.provision?.provision?[6].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-Confidentiality")
		XCTAssertEqual(inst.provision?.provision?[7].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[7].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[7].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[7].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[7].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[7].securityLabel?[0].code, "PSY")
		XCTAssertEqual(inst.provision?.provision?[7].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[8].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[8].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[8].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[8].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[8].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[8].securityLabel?[0].code, "SPI")
		XCTAssertEqual(inst.provision?.provision?[8].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.provision?[9].action?[0].coding?[0].code, "access")
		XCTAssertEqual(inst.provision?.provision?[9].action?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentaction")
		XCTAssertEqual(inst.provision?.provision?[9].actor?[0].reference?.reference, "Organization/f001")
		XCTAssertEqual(inst.provision?.provision?[9].actor?[0].role?.coding?[0].code, "PRCP")
		XCTAssertEqual(inst.provision?.provision?[9].actor?[0].role?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationType")
		XCTAssertEqual(inst.provision?.provision?[9].securityLabel?[0].code, "SEX")
		XCTAssertEqual(inst.provision?.provision?[9].securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.securityLabel?[0].code, "N")
		XCTAssertEqual(inst.provision?.securityLabel?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-Confidentiality")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "consent-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "59284-0")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.dateTime?.description, "2016-05-11")
		XCTAssertEqual(inst.id, "consent-example-basic")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?[0].reference, "Organization/f001")
		XCTAssertEqual(inst.patient?.display, "P. van de Heuvel")
		XCTAssertEqual(inst.patient?.reference, "Patient/f001")
		XCTAssertEqual(inst.policyRule?.coding?[0].code, "OPTIN")
		XCTAssertEqual(inst.policyRule?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActCode")
		XCTAssertEqual(inst.provision?.period?.end?.description, "2016-01-01")
		XCTAssertEqual(inst.provision?.period?.start?.description, "1964-01-01")
		XCTAssertEqual(inst.scope?.coding?[0].code, "patient-privacy")
		XCTAssertEqual(inst.scope?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/consentscope")
		XCTAssertEqual(inst.sourceAttachment?.title, "The terms of the consent in lawyer speak.")
		XCTAssertEqual(inst.status, ConsentState(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
