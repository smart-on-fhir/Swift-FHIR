//
//  PatientTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPatient = Models.Patient
#else
import SwiftFHIR
typealias SwiftFHIRPatient = SwiftFHIR.Patient
#endif


class PatientTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPatient {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPatient {
		return try SwiftFHIRPatient(json: json)
	}
	
	func testPatient1() {
		do {
			let instance = try runPatient1()
			try runPatient1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-xds.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Metropolis")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "100 Main St")
		XCTAssertEqual(inst.address?[0].postalCode, "44130")
		XCTAssertEqual(inst.address?[0].state, "Il")
		XCTAssertEqual(inst.birthDate?.description, "1956-05-27")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "xds")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.2.3.4.5")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "89765a87b")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Doe")
		XCTAssertEqual(inst.name?[0].given?[0], "John")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient2() {
		do {
			let instance = try runPatient2()
			try runPatient2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-f001-pieter.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Van Egmondkade 23")
		XCTAssertEqual(inst.address?[0].postalCode, "1024 RJ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.birthDate?.description, "1944-11-17")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication?[0].language?.text, "Nederlands")
		XCTAssertEqual(inst.communication?[0].preferred, true)
		XCTAssertEqual(inst.contact?[0].name?.family, "Abels")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Sarah")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "C")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0131")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "0690383372")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "738472983")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.managingOrganization?.display, "Burgers University Medical Centre")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus")
		XCTAssertEqual(inst.maritalStatus?.text, "Getrouwd")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.multipleBirthBoolean, true)
		XCTAssertEqual(inst.name?[0].family, "van de Heuvel")
		XCTAssertEqual(inst.name?[0].given?[0], "Pieter")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MSc")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "0648352638")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].value, "p.heuvel@gmail.com")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient3() {
		do {
			let instance = try runPatient3()
			try runPatient3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-d.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1982-08-02")
		XCTAssertEqual(inst.deceasedBoolean, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "pat4")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123458")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Sandy")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient4() {
		do {
			let instance = try runPatient4()
			try runPatient4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-infant-twin-1.json")
		
		XCTAssertEqual(inst.birthDate?.description, "2017-05-15")
		XCTAssertEqual(inst.contact?[0].name?.family, "Organa")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Leia")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "maiden")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "72705000")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].display, "Mother")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].code, "N")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0131")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].code, "MTH")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Organa")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "infant-twin-1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://coruscanthealth.org/main-hospital/patient-identifier")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].value, "MRN7465737865")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://new-republic.gov/galactic-citizen-identifier")
		XCTAssertEqual(inst.identifier?[1].value, "7465737865")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.multipleBirthInteger, 1)
		XCTAssertEqual(inst.name?[0].family, "Solo")
		XCTAssertEqual(inst.name?[0].given?[0], "Jaina")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient5() {
		do {
			let instance = try runPatient5()
			try runPatient5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-infant-mom.json")
		
		XCTAssertEqual(inst.birthDate?.description, "1995-10-12")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.generalPractitioner?[0].display, "Too-Onebee")
		XCTAssertEqual(inst.generalPractitioner?[0].reference, "Practitioner/21B")
		XCTAssertEqual(inst.id, "infant-mom")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Solo")
		XCTAssertEqual(inst.name?[0].given?[0], "Leia")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.name?[1].family, "Organa")
		XCTAssertEqual(inst.name?[1].given?[0], "Leia")
		XCTAssertEqual(inst.name?[1].use, NameUse(rawValue: "maiden")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient6() {
		do {
			let instance = try runPatient6()
			try runPatient6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-newborn.json")
		
		XCTAssertEqual(inst.birthDate?.description, "2017-09-05")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Everywoman")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "newborn")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.multipleBirthInteger, 2)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient7() {
		do {
			let instance = try runPatient7()
			try runPatient7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-infant-fetal.json")
		
		XCTAssertEqual(inst.contact?[0].name?.family, "Organa")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Leia")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "maiden")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "72705000")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].display, "Mother")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].code, "N")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0131")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].code, "MTH")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[2].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-RoleCode")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Organa")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "infant-fetal")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://coruscanthealth.org/main-hospital/patient-identifier")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].value, "MRN657865757378")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient8() {
		do {
			let instance = try runPatient8()
			try runPatient8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-genetics-example1.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].line?[0], "2222 Home Street")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.birthDate?.description, "1973-05-31")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "genetics-example1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://hl7.org/fhir/sid/us-ssn")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "SS")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].value, "444222222")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/hl7")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2012-05-29T23:45:32Z")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Everywoman")
		XCTAssertEqual(inst.name?[0].given?[0], "Eve")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "555-555-2003")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient9() {
		do {
			let instance = try runPatient9()
			try runPatient9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-b.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "other")!)
		XCTAssertEqual(inst.id, "pat2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123456")
		XCTAssertEqual(inst.link?[0].other?.reference, "Patient/pat1")
		XCTAssertEqual(inst.link?[0].type, LinkType(rawValue: "seealso")!)
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Donald")
		XCTAssertEqual(inst.name?[0].given?[0], "Duck")
		XCTAssertEqual(inst.name?[0].given?[1], "D")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/gif")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPatient10() {
		do {
			let instance = try runPatient10()
			try runPatient10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Patient successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPatient10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPatient {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-c.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1982-01-23")
		XCTAssertEqual(inst.deceasedDateTime?.description, "2015-02-14T13:42:00+10:00")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "pat3")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123457")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Simon")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
