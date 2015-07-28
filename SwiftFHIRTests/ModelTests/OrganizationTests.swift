//
//  OrganizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrganizationTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Organization {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Organization {
		let instance = Organization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrganization1() throws {
		let instance = try runOrganization1()
		try runOrganization1(instance.asJSON())
	}
	
	func runOrganization1(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "org-uslab-example1.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/us-core-county")
		XCTAssertEqual(inst.address![0].extension_fhir![0].valueString!, "42043")
		XCTAssertEqual(inst.address![0].line![0], "Firstcare Way")
		XCTAssertEqual(inst.address![0].line![1], "Building 1")
		XCTAssertEqual(inst.address![0].postalCode!, "17111")
		XCTAssertEqual(inst.address![0].state!, "PA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1235349085")
		XCTAssertEqual(inst.name!, "University Hospital")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "(+1) 555-227-1234")
		XCTAssertEqual(inst.telecom![1].system!, "fax")
		XCTAssertEqual(inst.telecom![1].value!, "(+1) 555-227-6622")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization2() throws {
		let instance = try runOrganization2()
		try runOrganization2(instance.asJSON())
	}
	
	func runOrganization2(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "org-uslab-example2.json")
		
		XCTAssertEqual(inst.address![0].city!, "Boston")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].line![0], "Massachusetts Avenue")
		XCTAssertEqual(inst.address![0].line![1], "Building 1")
		XCTAssertEqual(inst.address![0].postalCode!, "25025")
		XCTAssertEqual(inst.address![0].state!, "MA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.contact![0].name!.family![0], "Fran")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Desk")
		XCTAssertEqual(inst.contact![0].name!.given![1], "T")
		XCTAssertEqual(inst.contact![0].name!.prefix![0], "Dr")
		XCTAssertEqual(inst.contact![0].name!.suffix![0], "Jr")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "8235849085")
		XCTAssertEqual(inst.name!, "Children's Hospital")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "+1 617 555 1234")
		XCTAssertEqual(inst.telecom![1].system!, "fax")
		XCTAssertEqual(inst.telecom![1].value!, "+1 555 227 6622")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization3() throws {
		let instance = try runOrganization3()
		try runOrganization3(instance.asJSON())
	}
	
	func runOrganization3(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "org-uslab-example3.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/us-core-county")
		XCTAssertEqual(inst.address![0].extension_fhir![0].valueString!, "42043")
		XCTAssertEqual(inst.address![0].line![0], "Firstcare Way")
		XCTAssertEqual(inst.address![0].line![1], "Building 2")
		XCTAssertEqual(inst.address![0].postalCode!, "42043")
		XCTAssertEqual(inst.address![0].state!, "PA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.contact![0].name!.family![0], "House")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Gregory")
		XCTAssertEqual(inst.contact![0].name!.given![1], "F")
		XCTAssertEqual(inst.contact![0].name!.prefix![0], "Dr")
		XCTAssertEqual(inst.contact![0].name!.suffix![0], "PhD")
		XCTAssertEqual(inst.id!, "uslab-example3")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "01D1111111")
		XCTAssertEqual(inst.name!, "Acme Labs")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization4() throws {
		let instance = try runOrganization4()
		try runOrganization4(instance.asJSON())
	}
	
	func runOrganization4(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f001-burgers.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.address![1].city!, "Den Burg")
		XCTAssertEqual(inst.address![1].country!, "NLD")
		XCTAssertEqual(inst.address![1].line![0], "PO Box 2311")
		XCTAssertEqual(inst.address![1].postalCode!, "9100 AA")
		XCTAssertEqual(inst.address![1].use!, "work")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].code!, "PRESS")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].system!.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "91654")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization5() throws {
		let instance = try runOrganization5()
		try runOrganization5(instance.asJSON())
	}
	
	func runOrganization5(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f002-burgers-card.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].line![0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact![0].address!.line![0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact![0].name!.text!, "mevr. D. de Haan")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "022-655 2321")
		XCTAssertEqual(inst.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst.contact![0].telecom![1].value!, "cardio@burgersumc.nl")
		XCTAssertEqual(inst.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst.contact![0].telecom![2].value!, "022-655 2322")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.name!, "Burgers UMC Cardiology unit")
		XCTAssertEqual(inst.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "022-655 2320")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization6() throws {
		let instance = try runOrganization6()
		try runOrganization6(instance.asJSON())
	}
	
	func runOrganization6(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f003-burgers-ENT.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].line![0], "West Wing, floor 5")
		XCTAssertEqual(inst.contact![0].address!.line![0], "West Wing, floor 5")
		XCTAssertEqual(inst.contact![0].name!.text!, "mr. F. de Hond")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "022-655 7654")
		XCTAssertEqual(inst.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst.contact![0].telecom![1].value!, "KNO@burgersumc.nl")
		XCTAssertEqual(inst.contact![0].telecom![2].system!, "fax")
		XCTAssertEqual(inst.contact![0].telecom![2].value!, "022-655 0998")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.name!, "Burgers UMC Ear,Nose,Throat unit")
		XCTAssertEqual(inst.partOf!.reference!, "Organization/f001")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "022-655 6780")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "dept")
		XCTAssertEqual(inst.type!.coding![0].display!, "Hospital Department")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization7() throws {
		let instance = try runOrganization7()
		try runOrganization7(instance.asJSON())
	}
	
	func runOrganization7(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f201-aumc.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].city!, "Den Helder")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Walvisbaai 3")
		XCTAssertEqual(inst.address![0].postalCode!, "2333ZA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.contact![0].address!.city!, "Den helder")
		XCTAssertEqual(inst.contact![0].address!.country!, "NLD")
		XCTAssertEqual(inst.contact![0].address!.line![0], "Walvisbaai 3")
		XCTAssertEqual(inst.contact![0].address!.line![1], "Gebouw 2")
		XCTAssertEqual(inst.contact![0].address!.postalCode!, "2333ZA")
		XCTAssertEqual(inst.contact![0].name!.family![0], "Brand")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Ronald")
		XCTAssertEqual(inst.contact![0].name!.prefix![0], "Prof.Dr.")
		XCTAssertEqual(inst.contact![0].name!.text!, "Professor Brand")
		XCTAssertEqual(inst.contact![0].name!.use!, "official")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "+31715269702")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "Artis University Medical Center")
		XCTAssertEqual(inst.name!, "Artis University Medical Center (AUMC)")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "+31715269111")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "405608006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Academic Medical Center")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.coding![1].code!, "V6")
		XCTAssertEqual(inst.type!.coding![1].display!, "University Medical Hospital")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type!.coding![2].code!, "prov")
		XCTAssertEqual(inst.type!.coding![2].display!, "Healthcare Provider")
		XCTAssertEqual(inst.type!.coding![2].system!.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization8() throws {
		let instance = try runOrganization8()
		try runOrganization8(instance.asJSON())
	}
	
	func runOrganization8(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-f203-bumc.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].city!, "Blijdorp")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "apenrots 230")
		XCTAssertEqual(inst.address![0].postalCode!, "3056BE")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "f203")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.zorgkaartnederland.nl/")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Zorginstelling naam")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "Blijdorp MC")
		XCTAssertEqual(inst.name!, "Blijdorp Medisch Centrum (BUMC)")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "+31107040704")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "405608006")
		XCTAssertEqual(inst.type!.coding![0].display!, "Academic Medical Center")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization9() throws {
		let instance = try runOrganization9()
		try runOrganization9(instance.asJSON())
	}
	
	func runOrganization9(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-gastro.json")
		
		XCTAssertEqual(inst.id!, "1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "http://www.acme.org.au/units")
		XCTAssertEqual(inst.identifier![0].value!, "Gastro")
		XCTAssertEqual(inst.name!, "Gastroenterology")
		XCTAssertEqual(inst.partOf!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.partOf!.reference!, "Organization/1")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "+1 555 234 3523")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "gastro@acme.org")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization10() throws {
		let instance = try runOrganization10()
		try runOrganization10(instance.asJSON())
	}
	
	func runOrganization10(json: FHIRJSON? = nil) throws -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "organization-example-good-health-care.json")
		
		XCTAssertEqual(inst.id!, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier![0].value!, "2.16.840.1.113883.19.5")
		XCTAssertEqual(inst.name!, "Good Health Clinic")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
