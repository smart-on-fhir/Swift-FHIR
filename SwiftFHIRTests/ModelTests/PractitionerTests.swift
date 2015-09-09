//
//  PractitionerTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PractitionerTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Practitioner {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Practitioner {
		let instance = Practitioner(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPractitioner1() throws {
		let instance = try runPractitioner1()
		try runPractitioner1(instance.asJSON())
	}
	
	func runPractitioner1(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "pract-uslab-example1.json")
		
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "4444444445")
		XCTAssertEqual(inst.name!.family![0], "Bloodraw")
		XCTAssertEqual(inst.name!.given![0], "Leanard")
		XCTAssertEqual(inst.name!.given![1], "T")
		XCTAssertEqual(inst.name!.suffix![0], "Jr")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "(555)7771234 ext.11")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner2() throws {
		let instance = try runPractitioner2()
		try runPractitioner2(instance.asJSON())
	}
	
	func runPractitioner2(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "pract-uslab-example2.json")
		
		XCTAssertEqual(inst.address![0].city!, "Boston")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].extension_fhir![0].extension_fhir![0].url!.absoluteString, "http://example.org//iso21090-SC-coding")
		XCTAssertEqual(inst.address![0].extension_fhir![0].extension_fhir![0].valueCoding!.code!, "42043")
		XCTAssertEqual(inst.address![0].extension_fhir![0].extension_fhir![0].valueCoding!.system!.absoluteString, "https://www.census.gov/geo/reference")
		XCTAssertEqual(inst.address![0].extension_fhir![0].url!.absoluteString, "http://example.org/us-core-county")
		XCTAssertEqual(inst.address![0].line![0], "100 Medical Drive")
		XCTAssertEqual(inst.address![0].line![1], "Suite 6")
		XCTAssertEqual(inst.address![0].postalCode!, "01236")
		XCTAssertEqual(inst.address![0].state!, "MA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "uslab-example2")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "121121121")
		XCTAssertEqual(inst.name!.family![0], "Lookafter")
		XCTAssertEqual(inst.name!.given![0], "Bill")
		XCTAssertEqual(inst.name!.given![1], "T")
		XCTAssertEqual(inst.name!.suffix![0], "Jr")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "Children's Hospital")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/uslab-example1")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "(617)5551234 ext.12")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].value!, "docbill@healthedatainc.com")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner3() throws {
		let instance = try runPractitioner3()
		try runPractitioner3(instance.asJSON())
	}
	
	func runPractitioner3(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "pract-uslab-example3.json")
		
		XCTAssertEqual(inst.id!, "uslab-example3")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "1234567893")
		XCTAssertEqual(inst.name!.family![0], "House")
		XCTAssertEqual(inst.name!.given![0], "Gregory")
		XCTAssertEqual(inst.name!.given![1], "F")
		XCTAssertEqual(inst.name!.suffix![0], "PhD")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "555 777 1234 11")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner4() throws {
		let instance = try runPractitioner4()
		try runPractitioner4(instance.asJSON())
	}
	
	func runPractitioner4(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f001-evdb.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1975-12-07")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "938273695")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst.name!.family![0], "van den broek")
		XCTAssertEqual(inst.name!.given![0], "Eric")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner5() throws {
		let instance = try runPractitioner5()
		try runPractitioner5(instance.asJSON())
	}
	
	func runPractitioner5(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f002-pv.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1979-04-29")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "730291637")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "174BIP3JH438")
		XCTAssertEqual(inst.name!.family![0], "Voigt")
		XCTAssertEqual(inst.name!.given![0], "Pieter")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569336")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205669382")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner6() throws {
		let instance = try runPractitioner6()
		try runPractitioner6(instance.asJSON())
	}
	
	func runPractitioner6(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f003-mv.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1963-07-01")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f003")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "846100293")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "243HID3RT938")
		XCTAssertEqual(inst.name!.family![0], "Versteegh")
		XCTAssertEqual(inst.name!.given![0], "Marc")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205562431")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205662948")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner7() throws {
		let instance = try runPractitioner7()
		try runPractitioner7(instance.asJSON())
	}
	
	func runPractitioner7(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f004-rb.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1980-02-04")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Netherlands")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.communication![0].text!, "Language")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f004")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "118265112")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "523ASA1LK927")
		XCTAssertEqual(inst.name!.family![0], "Briet")
		XCTAssertEqual(inst.name!.given![0], "Ronald")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569273")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "r.briet@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner8() throws {
		let instance = try runPractitioner8()
		try runPractitioner8(instance.asJSON())
	}
	
	func runPractitioner8(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f005-al.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 9")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1959-03-11")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "fr")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "France")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f005")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "118265112")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "191REW8WE916")
		XCTAssertEqual(inst.name!.family![0], "Anne")
		XCTAssertEqual(inst.name!.given![0], "Langeveld")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Keel- neus- en oorarts")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205563847")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "a.langeveld@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205668916")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner9() throws {
		let instance = try runPractitioner9()
		try runPractitioner9(instance.asJSON())
	}
	
	func runPractitioner9(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f006-rvdb.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1975-12-07")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f006")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "937223645")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "134IDY41W988")
		XCTAssertEqual(inst.name!.family![0], "van den Berk")
		XCTAssertEqual(inst.name!.given![0], "Rob")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "17.000")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Pharmacist")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569288")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "R.A.vandenberk@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664987")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPractitioner10() throws {
		let instance = try runPractitioner10()
		try runPractitioner10(instance.asJSON())
	}
	
	func runPractitioner10(json: FHIRJSON? = nil) throws -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "practitioner-example-f007-sh.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1971-11-07")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f007")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "874635264")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "567IUI51C154")
		XCTAssertEqual(inst.name!.family![0], "Heps")
		XCTAssertEqual(inst.name!.given![0], "Simone")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.display!, "BMC")
		XCTAssertEqual(inst.practitionerRole![0].managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].code!, "01.000")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].display!, "Arts")
		XCTAssertEqual(inst.practitionerRole![0].role!.coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].role!.text!, "Care role")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].code!, "01.015")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].display!, "Physician")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].coding![0].system!.absoluteString, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.practitionerRole![0].specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "020556936")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "S.M.Heps@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205669283")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
