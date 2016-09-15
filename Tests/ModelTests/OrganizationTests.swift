//
//  OrganizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrganizationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Organization {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Organization {
		let instance = SwiftFHIR.Organization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrganization1() {
		do {
			let instance = try runOrganization1()
			try runOrganization1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f001-burgers.json")
		
		XCTAssertEqual(inst.address?[0].city, "Den Burg")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Galapagosweg 91")
		XCTAssertEqual(inst.address?[0].postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.address?[1].city, "Den Burg")
		XCTAssertEqual(inst.address?[1].country, "NLD")
		XCTAssertEqual(inst.address?[1].line?[0], "PO Box 2311")
		XCTAssertEqual(inst.address?[1].postalCode, "9100 AA")
		XCTAssertEqual(inst.address?[1].use, "work")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].code, "PRESS")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "022-655 2334")
		XCTAssertEqual(inst.contact?[1].purpose?.coding?[0].code, "PATINF")
		XCTAssertEqual(inst.contact?[1].purpose?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "022-655 2335")
		XCTAssertEqual(inst.id, "f001")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "91654")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst.identifier?[1].use, "usual")
		XCTAssertEqual(inst.identifier?[1].value, "17-0112278")
		XCTAssertEqual(inst.name, "Burgers University Medical Center")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "022-655 2300")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "V6")
		XCTAssertEqual(inst.type?.coding?[0].display, "University Medical Hospital")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type?.coding?[1].code, "prov")
		XCTAssertEqual(inst.type?.coding?[1].display, "Healthcare Provider")
		XCTAssertEqual(inst.type?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization2() {
		do {
			let instance = try runOrganization2()
			try runOrganization2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f002-burgers-card.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].line?[0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact?[0].name?.text, "mevr. D. de Haan")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].code, "ADMIN")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "022-655 2321")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "cardio@burgersumc.nl")
		XCTAssertEqual(inst.contact?[0].telecom?[2].system, "fax")
		XCTAssertEqual(inst.contact?[0].telecom?[2].value, "022-655 2322")
		XCTAssertEqual(inst.id, "f002")
		XCTAssertEqual(inst.name, "Burgers UMC Cardiology unit")
		XCTAssertEqual(inst.partOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "022-655 2320")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "dept")
		XCTAssertEqual(inst.type?.coding?[0].display, "Hospital Department")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization3() {
		do {
			let instance = try runOrganization3()
			try runOrganization3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f003-burgers-ENT.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].line?[0], "West Wing, floor 5")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "West Wing, floor 5")
		XCTAssertEqual(inst.contact?[0].name?.text, "mr. F. de Hond")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].code, "ADMIN")
		XCTAssertEqual(inst.contact?[0].purpose?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "022-655 7654")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "KNO@burgersumc.nl")
		XCTAssertEqual(inst.contact?[0].telecom?[2].system, "fax")
		XCTAssertEqual(inst.contact?[0].telecom?[2].value, "022-655 0998")
		XCTAssertEqual(inst.id, "f003")
		XCTAssertEqual(inst.name, "Burgers UMC Ear,Nose,Throat unit")
		XCTAssertEqual(inst.partOf?.reference, "Organization/f001")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "022-655 6780")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "dept")
		XCTAssertEqual(inst.type?.coding?[0].display, "Hospital Department")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization4() {
		do {
			let instance = try runOrganization4()
			try runOrganization4(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f201-aumc.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Den Helder")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.address?[0].postalCode, "2333ZA")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.contact?[0].address?.city, "Den helder")
		XCTAssertEqual(inst.contact?[0].address?.country, "NLD")
		XCTAssertEqual(inst.contact?[0].address?.line?[0], "Walvisbaai 3")
		XCTAssertEqual(inst.contact?[0].address?.line?[1], "Gebouw 2")
		XCTAssertEqual(inst.contact?[0].address?.postalCode, "2333ZA")
		XCTAssertEqual(inst.contact?[0].name?.family?[0], "Brand")
		XCTAssertEqual(inst.contact?[0].name?.given?[0], "Ronald")
		XCTAssertEqual(inst.contact?[0].name?.prefix?[0], "Prof.Dr.")
		XCTAssertEqual(inst.contact?[0].name?.text, "Professor Brand")
		XCTAssertEqual(inst.contact?[0].name?.use, "official")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "work")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "+31715269702")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "Artis University Medical Center")
		XCTAssertEqual(inst.name, "Artis University Medical Center (AUMC)")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31715269111")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "405608006")
		XCTAssertEqual(inst.type?.coding?[0].display, "Academic Medical Center")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?.coding?[1].code, "V6")
		XCTAssertEqual(inst.type?.coding?[1].display, "University Medical Hospital")
		XCTAssertEqual(inst.type?.coding?[1].system?.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type?.coding?[2].code, "prov")
		XCTAssertEqual(inst.type?.coding?[2].display, "Healthcare Provider")
		XCTAssertEqual(inst.type?.coding?[2].system?.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization5() {
		do {
			let instance = try runOrganization5()
			try runOrganization5(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f203-bumc.json")
		
		XCTAssertTrue(inst.active ?? false)
		XCTAssertEqual(inst.address?[0].city, "Blijdorp")
		XCTAssertEqual(inst.address?[0].country, "NLD")
		XCTAssertEqual(inst.address?[0].line?[0], "apenrots 230")
		XCTAssertEqual(inst.address?[0].postalCode, "3056BE")
		XCTAssertEqual(inst.address?[0].use, "work")
		XCTAssertEqual(inst.id, "f203")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Zorginstelling naam")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "Blijdorp MC")
		XCTAssertEqual(inst.name, "Blijdorp Medisch Centrum (BUMC)")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+31107040704")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.type?.coding?[0].code, "405608006")
		XCTAssertEqual(inst.type?.coding?[0].display, "Academic Medical Center")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type?.coding?[1].code, "prov")
		XCTAssertEqual(inst.type?.coding?[1].system?.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization6() {
		do {
			let instance = try runOrganization6()
			try runOrganization6(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-gastro.json")
		
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org.au/units")
		XCTAssertEqual(inst.identifier?[0].value, "Gastro")
		XCTAssertEqual(inst.name, "Gastroenterology")
		XCTAssertEqual(inst.partOf?.display, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.partOf?.reference, "Organization/1")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "mobile")
		XCTAssertEqual(inst.telecom?[0].value, "+1 555 234 3523")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "gastro@acme.org")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testOrganization7() {
		do {
			let instance = try runOrganization7()
			try runOrganization7(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization7(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-good-health-care.json")
		
		XCTAssertEqual(inst.id, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.name, "Good Health Clinic")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testOrganization8() {
		do {
			let instance = try runOrganization8()
			try runOrganization8(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization8(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-insurer.json")
		
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:2.16.840.1.113883.3.19.2.3")
		XCTAssertEqual(inst.identifier?[0].value, "666666")
		XCTAssertEqual(inst.name, "XYZ Insurance")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testOrganization9() {
		do {
			let instance = try runOrganization9()
			try runOrganization9(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization9(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-lab.json")
		
		XCTAssertEqual(inst.id, "1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.acme.org.au/units")
		XCTAssertEqual(inst.identifier?[0].value, "ClinLab")
		XCTAssertEqual(inst.name, "Clinical Lab")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "+1 555 234 1234")
		XCTAssertEqual(inst.telecom?[1].system, "email")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "contact@labs.acme.org")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testOrganization10() {
		do {
			let instance = try runOrganization10()
			try runOrganization10(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Organization successfully, but threw")
		}
	}
	
	@discardableResult
	func runOrganization10(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example.json")
		
		XCTAssertEqual(inst.address?[0].city, "Ann Arbor")
		XCTAssertEqual(inst.address?[0].country, "USA")
		XCTAssertEqual(inst.address?[0].line?[0], "3300 Washtenaw Avenue, Suite 227")
		XCTAssertEqual(inst.address?[0].postalCode, "48104")
		XCTAssertEqual(inst.address?[0].state, "MI")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/organization-alias")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "HL7 International")
		XCTAssertEqual(inst.id, "hl7")
		XCTAssertEqual(inst.name, "Health Level Seven International")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "(+1) 734-677-7777")
		XCTAssertEqual(inst.telecom?[1].system, "fax")
		XCTAssertEqual(inst.telecom?[1].value, "(+1) 734-677-6622")
		XCTAssertEqual(inst.telecom?[2].system, "email")
		XCTAssertEqual(inst.telecom?[2].value, "hq@HL7.org")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
