//
//  OrganizationAffiliationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIROrganizationAffiliation = Models.OrganizationAffiliation
#else
import SwiftFHIR
typealias SwiftFHIROrganizationAffiliation = SwiftFHIR.OrganizationAffiliation
#endif


class OrganizationAffiliationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIROrganizationAffiliation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIROrganizationAffiliation {
		return try SwiftFHIROrganizationAffiliation(json: json)
	}
	
	func testOrganizationAffiliation1() {
		do {
			let instance = try runOrganizationAffiliation1()
			try runOrganizationAffiliation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OrganizationAffiliation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOrganizationAffiliation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIROrganizationAffiliation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "organizationaffiliation-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "provider")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/organization-role")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.healthcareService?[0].reference, "HealthcareService/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.location?[0].display, "South Wing, second floor")
		XCTAssertEqual(inst.location?[0].reference, "Location/1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.network?[0].display, "HL7 Payer Network")
		XCTAssertEqual(inst.network?[0].reference, "Organization/hl7pay")
		XCTAssertEqual(inst.organization?.reference, "Organization/hl7pay")
		XCTAssertEqual(inst.participatingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.period?.end?.description, "2012-03-31")
		XCTAssertEqual(inst.period?.start?.description, "2012-01-01")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "408443003")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General medical practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "general.practice@example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testOrganizationAffiliation2() {
		do {
			let instance = try runOrganizationAffiliation2()
			try runOrganizationAffiliation2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OrganizationAffiliation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOrganizationAffiliation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIROrganizationAffiliation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "orgrole-example-hie.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "member")
		XCTAssertEqual(inst.code?[0].coding?[0].display, "Member")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/organization-role")
		XCTAssertEqual(inst.code?[0].text, "Hospital member")
		XCTAssertEqual(inst.endpoint?[0].display, "Founding Fathers Memorial Hospital HIE endpoint")
		XCTAssertEqual(inst.endpoint?[0].reference, "http://hl7.org/fhir/ig/vhdir/Endpoint/foundingfathersHIE")
		XCTAssertEqual(inst.id, "orgrole2")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Monument Health Information Exchange")
		XCTAssertEqual(inst.identifier?[0].assigner?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/monumentHIE")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/www.monumentHIE.com")
		XCTAssertEqual(inst.identifier?[0].type?.text, "member hospital")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "secondary")!)
		XCTAssertEqual(inst.identifier?[0].value, "hosp32")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?.display, "Monument Health Information Exchange")
		XCTAssertEqual(inst.organization?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/monumentHIE")
		XCTAssertEqual(inst.participatingOrganization?.display, "Founding Fathers Memorial Hospital")
		XCTAssertEqual(inst.participatingOrganization?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/foundingfathers")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testOrganizationAffiliation3() {
		do {
			let instance = try runOrganizationAffiliation3()
			try runOrganizationAffiliation3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test OrganizationAffiliation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runOrganizationAffiliation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIROrganizationAffiliation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "orgrole-example-services.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.code?[0].coding?[0].code, "provider")
		XCTAssertEqual(inst.code?[0].coding?[0].display, "Provider")
		XCTAssertEqual(inst.code?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/organization-role")
		XCTAssertEqual(inst.code?[0].coding?[0].userSelected, true)
		XCTAssertEqual(inst.code?[0].text, "Provider of rehabilitation services")
		XCTAssertEqual(inst.healthcareService?[0].display, "Inpatient rehabilitation services")
		XCTAssertEqual(inst.healthcareService?[0].reference, "http://hl7.org/fhir/ig/vhdir/HealthcareService/independencerehab1")
		XCTAssertEqual(inst.healthcareService?[1].display, "Outpatient rehabilitation services")
		XCTAssertEqual(inst.healthcareService?[1].reference, "http://hl7.org/fhir/ig/vhdir/HealthcareService/independencerehab2")
		XCTAssertEqual(inst.id, "orgrole1")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Founding Fathers Memorial Hospital")
		XCTAssertEqual(inst.identifier?[0].assigner?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/foundingfathers")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/www.foundingfathersmemorial.com")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "secondary")!)
		XCTAssertEqual(inst.identifier?[0].value, "service002")
		XCTAssertEqual(inst.location?[0].display, "Founding Fathers Memorial Hospital")
		XCTAssertEqual(inst.location?[0].reference, "http://hl7.org/fhir/ig/vhdir/Location/foundingfathers1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.network?[0].display, "Patriot Preferred Provider Network")
		XCTAssertEqual(inst.network?[0].reference, "http://hl7.org/fhir/ig/vhdir/Network/patriotppo")
		XCTAssertEqual(inst.organization?.display, "Founding Fathers Memorial Hospital")
		XCTAssertEqual(inst.organization?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/foundingfathers")
		XCTAssertEqual(inst.participatingOrganization?.display, "Independence Rehabilitation Services, Inc.")
		XCTAssertEqual(inst.participatingOrganization?.reference, "http://hl7.org/fhir/ig/vhdir/Organization/independencerehab")
		XCTAssertEqual(inst.period?.end?.description, "2022-02-01")
		XCTAssertEqual(inst.period?.start?.description, "2018-02-09")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "394602003")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Rehabilitation - specialty")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.specialty?[0].text, "Rehabilitation")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "202-109-8765")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
