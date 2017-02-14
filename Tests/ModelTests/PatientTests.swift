//
//  PatientTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2017-02-14.
//  2017, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-a.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.contact?[0].organization?.display, "Walt Disney Corporation")
		XCTAssertEqual(inst.contact?[0].organization?.reference, "Organization/1")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "owner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "pat1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "654321")
		XCTAssertEqual(inst.link?[0].other?.reference, "Patient/pat2")
		XCTAssertEqual(inst.link?[0].type, LinkType(rawValue: "seealso")!)
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Donald")
		XCTAssertEqual(inst.name?[0].given?[0], "Duck")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/gif")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-animal.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.animal?.breed?.coding?[0].code, "58108001")
		XCTAssertEqual(inst.animal?.breed?.coding?[0].display, "Golden retriever")
		XCTAssertEqual(inst.animal?.breed?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.animal?.breed?.coding?[1].code, "gret")
		XCTAssertEqual(inst.animal?.breed?.coding?[1].display, "Golden Retriever")
		XCTAssertEqual(inst.animal?.breed?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/animal-breed")
		XCTAssertEqual(inst.animal?.genderStatus?.coding?[0].code, "neutered")
		XCTAssertEqual(inst.animal?.genderStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/animal-genderstatus")
		XCTAssertEqual(inst.animal?.species?.coding?[0].code, "canislf")
		XCTAssertEqual(inst.animal?.species?.coding?[0].display, "Dog")
		XCTAssertEqual(inst.animal?.species?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/animal-species")
		XCTAssertEqual(inst.birthDate?.description, "2010-03-23")
		XCTAssertEqual(inst.contact?[0].name?.family, "Chalmers")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Peter")
		XCTAssertEqual(inst.contact?[0].name?.given?[1], "James")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "owner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "(03) 5555 6473")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "animal")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Maroondah City Council")
		XCTAssertEqual(inst.identifier?[0].period?.start?.description, "2010-05-31")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.maroondah.vic.gov.au/AnimalRegFees.aspx")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Dog Tag")
		XCTAssertEqual(inst.identifier?[0].value, "1234123")
		XCTAssertEqual(inst.managingOrganization?.display, "Pete's Vetinary Services")
		XCTAssertEqual(inst.name?[0].given?[0], "Kenzi")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-b.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "other")!)
		XCTAssertEqual(inst.id, "pat2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123456")
		XCTAssertEqual(inst.link?[0].other?.reference, "Patient/pat1")
		XCTAssertEqual(inst.link?[0].type, LinkType(rawValue: "seealso")!)
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Donald")
		XCTAssertEqual(inst.name?[0].given?[0], "Duck")
		XCTAssertEqual(inst.name?[0].given?[1], "D")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/gif")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-c.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1982-01-23")
		XCTAssertEqual(inst.deceasedDateTime?.description, "2015-02-14T13:42:00+10:00")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "pat3")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123457")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Simon")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-d.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1982-08-02")
		XCTAssertEqual(inst.deceasedBoolean, true)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "pat4")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].code, "MR")
		XCTAssertEqual(inst.identifier?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0203")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "123458")
		XCTAssertEqual(inst.managingOrganization?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "Notsowell")
		XCTAssertEqual(inst.name?[0].given?[0], "Sandy")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-dicom.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://nema.org/fhir/extensions#0010:1010")
		XCTAssertEqual(inst.extension_fhir?[0].valueQuantity?.unit, "Y")
		XCTAssertEqual(inst.extension_fhir?[0].valueQuantity?.value, "56")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://nema.org/fhir/extensions#0010:1020")
		XCTAssertEqual(inst.extension_fhir?[1].valueQuantity?.unit, "m")
		XCTAssertEqual(inst.extension_fhir?[1].valueQuantity?.value, "1.83")
		XCTAssertEqual(inst.extension_fhir?[2].url?.absoluteString, "http://nema.org/fhir/extensions#0010:1030")
		XCTAssertEqual(inst.extension_fhir?[2].valueQuantity?.unit, "kg")
		XCTAssertEqual(inst.extension_fhir?[2].valueQuantity?.value, "72.58")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "dicom")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://nema.org/examples/patients")
		XCTAssertEqual(inst.identifier?[0].value, "MINT1234")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.name?[0].family, "MINT_TEST")
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
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "partner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
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
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.maritalStatus?.text, "Getrouwd")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-f201-roel.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Bos en Lommerplein 280")
		XCTAssertEqual(inst.address?[0].postalCode, "1055RW")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.birthDate?.description, "1960-03-13")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].code, "nl-NL")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication?[0].preferred, true)
		XCTAssertEqual(inst.contact?[0].name?.text, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.contact?[0].name?.use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].code, "127850001")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].display, "Wife")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].code, "partner")
		XCTAssertEqual(inst.contact?[0].relationship?[0].coding?[1].system?.absoluteString, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31201234567")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[0].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "123456789")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BSN")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "123456789")
		XCTAssertEqual(inst.managingOrganization?.display, "AUMC")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f201")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].code, "36629006")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].display, "Legally married")
		XCTAssertEqual(inst.maritalStatus?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].code, "M")
		XCTAssertEqual(inst.maritalStatus?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.multipleBirthBoolean, false)
		XCTAssertEqual(inst.name?[0].family, "Bor")
		XCTAssertEqual(inst.name?[0].given?[0], "Roelof Olaf")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Drs.")
		XCTAssertEqual(inst.name?[0].suffix?[0], "PDEng.")
		XCTAssertEqual(inst.name?[0].text, "Roel")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.photo?[0].contentType, "image/jpeg")
		XCTAssertEqual(inst.photo?[0].url?.absoluteString, "Binary/f006")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31612345678")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "home")!)
		XCTAssertEqual(inst.telecom?[1].value, "+31201234567")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-ihe-pcd.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.id, "ihe-pcd")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Internal Identifier")
		XCTAssertEqual(inst.identifier?[0].value, "AB60001")
		XCTAssertEqual(inst.name?[0].family, "BROOKS")
		XCTAssertEqual(inst.name?[0].given?[0], "ALBERT")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Albert Brooks, Id: AB60001</div>")
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "patient-example-proband.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.birthDate?.description, "1966-04-04")
		XCTAssertEqual(inst.deceasedBoolean, false)
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "ombCategory")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCoding?.code, "2106-3")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCoding?.display, "White")
		XCTAssertEqual(inst.extension_fhir?[0].extension_fhir?[0].valueCoding?.system?.absoluteString, "http://hl7.org/fhir/v3/Race")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/us-core-race")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "proband")
		XCTAssertEqual(inst.identifier?[0].assigner?.display, "Boston Massachesetts General Hospital")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.6.117")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Computer-Stored Abulatory Records (COSTAR)")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[0].value, "999999999")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
