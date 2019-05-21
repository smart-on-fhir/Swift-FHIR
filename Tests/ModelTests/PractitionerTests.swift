//
//  PractitionerTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-21.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPractitioner = Models.Practitioner
#else
import SwiftFHIR
typealias SwiftFHIRPractitioner = SwiftFHIR.Practitioner
#endif


class PractitionerTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPractitioner {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPractitioner {
		return try SwiftFHIRPractitioner(json: json)
	}
	
	func testPractitioner1() {
		do {
			let instance = try runPractitioner1()
			try runPractitioner1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f203-jvg.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1983-04-20")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678903")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "12345678903")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].text, "Juri van Gelder")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner2() {
		do {
			let instance = try runPractitioner2()
			try runPractitioner2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f201-ab.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1956-12-24")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678901")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Bronsig")
		XCTAssertEqual(inst.name?[0].given?[0], "Arend")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?[0].text, "Dokter Bronsig")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].code, "41672002")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].display, "Pulmonologist")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner3() {
		do {
			let instance = try runPractitioner3()
			try runPractitioner3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f202-lm.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].line?[1], "C4 - Automatisering")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1960-06-12")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f202")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678902")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "https://www.bigregister.nl/")
		XCTAssertEqual(inst.identifier?[1].type?.text, "BIG-nummer")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "12345678902")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Maas")
		XCTAssertEqual(inst.name?[0].given?[0], "Luigi")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr.")
		XCTAssertEqual(inst.name?[0].text, "Luigi Maas")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner4() {
		do {
			let instance = try runPractitioner4()
			try runPractitioner4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-xcda-author.json")
		
		XCTAssertEqual(inst.id, "xcda-author")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Hippocrates")
		XCTAssertEqual(inst.name?[0].given?[0], "Harold")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner5() {
		do {
			let instance = try runPractitioner5()
			try runPractitioner5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f003-mv.json")
		
		XCTAssertEqual(inst.address?[0].city, "Amsterdam")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "1105 AZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1963-07-01")
		XCTAssertEqual(inst.communication?[0].coding?[0].code, "nl")
		XCTAssertEqual(inst.communication?[0].coding?[0].display, "Dutch")
		XCTAssertEqual(inst.communication?[0].coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "846100293")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "243HID3RT938")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Versteegh")
		XCTAssertEqual(inst.name?[0].given?[0], "Marc")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "0205562431")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205662948")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner6() {
		do {
			let instance = try runPractitioner6()
			try runPractitioner6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f002-pv.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1979-04-29")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "male")!)
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "730291637")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "174BIP3JH438")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Voigt")
		XCTAssertEqual(inst.name?[0].given?[0], "Pieter")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "0205569336")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205669382")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner7() {
		do {
			let instance = try runPractitioner7()
			try runPractitioner7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example.json")
		
		XCTAssertEqual(inst.active, true)
		XCTAssertEqual(inst.address?[0].city, "PleasantVille")
		XCTAssertEqual(inst.address?[0].line?[0], "534 Erewhon St")
		XCTAssertEqual(inst.address?[0].postalCode, "3999")
		XCTAssertEqual(inst.address?[0].state, "Vic")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "home")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org/practitioners")
		XCTAssertEqual(inst.identifier?[0].value, "23")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Careful")
		XCTAssertEqual(inst.name?[0].given?[0], "Adam")
		XCTAssertEqual(inst.name?[0].prefix?[0], "Dr")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].code, "BS")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].display, "Bachelor of Science")
		XCTAssertEqual(inst.qualification?[0].code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0360/2.7")
		XCTAssertEqual(inst.qualification?[0].code?.text, "Bachelor of Science")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].system?.absoluteString, "http://example.org/UniversityIdentifier")
		XCTAssertEqual(inst.qualification?[0].identifier?[0].value, "12345")
		XCTAssertEqual(inst.qualification?[0].issuer?.display, "Example University")
		XCTAssertEqual(inst.qualification?[0].period?.start?.description, "1995")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner8() {
		do {
			let instance = try runPractitioner8()
			try runPractitioner8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f007-sh.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1971-11-07")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f007")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "874635264")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "usual")!)
		XCTAssertEqual(inst.identifier?[1].value, "567IUI51C154")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Heps")
		XCTAssertEqual(inst.name?[0].given?[0], "Simone")
		XCTAssertEqual(inst.name?[0].suffix?[0], "MD")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "official")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "020556936")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "S.M.Heps@bmc.nl")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[2].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[2].value, "0205669283")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner9() {
		do {
			let instance = try runPractitioner9()
			try runPractitioner9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f204-ce.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.birthDate?.description, "1967-11-05")
		XCTAssertEqual(inst.gender, AdministrativeGender(rawValue: "female")!)
		XCTAssertEqual(inst.id, "f204")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier?[0].type?.text, "UZI-nummer")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "12345678904")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].text, "Carla Espinosa")
		XCTAssertEqual(inst.name?[0].use, NameUse(rawValue: "usual")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "+31715262169")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testPractitioner10() {
		do {
			let instance = try runPractitioner10()
			try runPractitioner10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Practitioner successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPractitioner10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPractitioner {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-xcda1.json")
		
		XCTAssertEqual(inst.id, "xcda1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://healthcare.example.org/identifiers/staff")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "D234123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.name?[0].family, "Dopplemeyer")
		XCTAssertEqual(inst.name?[0].given?[0], "Sherry")
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[0].value, "john.doe@healthcare.example.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
