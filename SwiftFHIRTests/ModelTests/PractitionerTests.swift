//
//  PractitionerTests.swift
//  PractitionerTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class PractitionerTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Practitioner? {
		let json = readJSONFile(filename)
		let instance = Practitioner(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPractitioner1() {
		let inst = instantiateFrom("pract-uslab-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "4444444445")
		XCTAssertEqual(inst!.name!.family![0], "Bloodraw")
		XCTAssertEqual(inst!.name!.given![0], "Leanard")
		XCTAssertEqual(inst!.name!.given![1], "T")
		XCTAssertEqual(inst!.name!.suffix![0], "Jr")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "(555)7771234 ext.11")
	}
	
	func testPractitioner2() {
		let inst = instantiateFrom("pract-uslab-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "4444444445")
		XCTAssertEqual(inst!.name!.family![0], "Bloodraw")
		XCTAssertEqual(inst!.name!.given![0], "Leanard")
		XCTAssertEqual(inst!.name!.given![1], "T")
		XCTAssertEqual(inst!.name!.suffix![0], "Jr")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "(555)7771234 ext.11")
	}
	
	func testPractitioner3() {
		let inst = instantiateFrom("pract-uslab-example1.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "4444444445")
		XCTAssertEqual(inst!.name!.family![0], "Bloodraw")
		XCTAssertEqual(inst!.name!.given![0], "Leanard")
		XCTAssertEqual(inst!.name!.given![1], "T")
		XCTAssertEqual(inst!.name!.suffix![0], "Jr")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "(555)7771234 ext.11")
	}
	
	func testPractitioner4() {
		let inst = instantiateFrom("pract-uslab-example2.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.address![0].city!, "Boston")
		XCTAssertEqual(inst!.address![0].country!, "USA")
		XCTAssertEqual(inst!.address![0].line![0], "100 Medical Drive")
		XCTAssertEqual(inst!.address![0].line![1], "Suite 6")
		XCTAssertEqual(inst!.address![0].postalCode!, "01236")
		XCTAssertEqual(inst!.address![0].state!, "MA")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "121121121")
		XCTAssertEqual(inst!.name!.family![0], "Lookafter")
		XCTAssertEqual(inst!.name!.given![0], "Bill")
		XCTAssertEqual(inst!.name!.given![1], "T")
		XCTAssertEqual(inst!.name!.suffix![0], "Jr")
		XCTAssertEqual(inst!.organization!.display!, "Children's Hospital")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/uslab-example1")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "(617)5551234 ext.12")
		XCTAssertEqual(inst!.telecom![1].system!, "email")
		XCTAssertEqual(inst!.telecom![1].value!, "docbill@healthedatainc.com")
	}
	
	func testPractitioner5() {
		let inst = instantiateFrom("pract-uslab-example2.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.address![0].city!, "Boston")
		XCTAssertEqual(inst!.address![0].country!, "USA")
		XCTAssertEqual(inst!.address![0].line![0], "100 Medical Drive")
		XCTAssertEqual(inst!.address![0].line![1], "Suite 6")
		XCTAssertEqual(inst!.address![0].postalCode!, "01236")
		XCTAssertEqual(inst!.address![0].state!, "MA")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "121121121")
		XCTAssertEqual(inst!.name!.family![0], "Lookafter")
		XCTAssertEqual(inst!.name!.given![0], "Bill")
		XCTAssertEqual(inst!.name!.given![1], "T")
		XCTAssertEqual(inst!.name!.suffix![0], "Jr")
		XCTAssertEqual(inst!.organization!.display!, "Children's Hospital")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/uslab-example1")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "(617)5551234 ext.12")
		XCTAssertEqual(inst!.telecom![1].system!, "email")
		XCTAssertEqual(inst!.telecom![1].value!, "docbill@healthedatainc.com")
	}
	
	func testPractitioner6() {
		let inst = instantiateFrom("pract-uslab-example3.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "1234567893")
		XCTAssertEqual(inst!.name!.family![0], "House")
		XCTAssertEqual(inst!.name!.given![0], "Gregory")
		XCTAssertEqual(inst!.name!.given![1], "F")
		XCTAssertEqual(inst!.name!.suffix![0], "PhD")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "555 777 1234 11")
	}
	
	func testPractitioner7() {
		let inst = instantiateFrom("pract-uslab-example3.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst!.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst!.identifier![0].label!, "NPI")
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "1234567893")
		XCTAssertEqual(inst!.name!.family![0], "House")
		XCTAssertEqual(inst!.name!.given![0], "Gregory")
		XCTAssertEqual(inst!.name!.given![1], "F")
		XCTAssertEqual(inst!.name!.suffix![0], "PhD")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "555 777 1234 11")
	}
	
	func testPractitioner8() {
		let inst = instantiateFrom("practitioner-example-f001-evdb.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1975-12-07")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.528.1.1007.3.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "938273695")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst!.name!.family![0], "van den broek")
		XCTAssertEqual(inst!.name!.given![0], "Eric")
		XCTAssertEqual(inst!.name!.suffix![0], "MD")
		XCTAssertEqual(inst!.name!.use!, "official")
		XCTAssertEqual(inst!.organization!.display!, "BMC")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst!.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst!.role![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.role![0].text!, "Care role")
		XCTAssertEqual(inst!.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst!.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst!.specialty![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst!.telecom![1].system!, "email")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst!.telecom![2].system!, "fax")
		XCTAssertEqual(inst!.telecom![2].use!, "work")
		XCTAssertEqual(inst!.telecom![2].value!, "0205664440")
	}
	
	func testPractitioner9() {
		let inst = instantiateFrom("practitioner-example-f001-evdb.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1975-12-07")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.528.1.1007.3.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "938273695")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst!.name!.family![0], "van den broek")
		XCTAssertEqual(inst!.name!.given![0], "Eric")
		XCTAssertEqual(inst!.name!.suffix![0], "MD")
		XCTAssertEqual(inst!.name!.use!, "official")
		XCTAssertEqual(inst!.organization!.display!, "BMC")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst!.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst!.role![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.role![0].text!, "Care role")
		XCTAssertEqual(inst!.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst!.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst!.specialty![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst!.telecom![1].system!, "email")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst!.telecom![2].system!, "fax")
		XCTAssertEqual(inst!.telecom![2].use!, "work")
		XCTAssertEqual(inst!.telecom![2].value!, "0205664440")
	}
	
	func testPractitioner10() {
		let inst = instantiateFrom("practitioner-example-f002-pv.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Practitioner instance")
	
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")
		XCTAssertEqual(inst!.address![0].country!, "NLD")
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst!.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address![0].use!, "work")
		XCTAssertEqual(inst!.birthDate!, NSDate.dateFromISOString("1979-04-29")!)
		XCTAssertEqual(inst!.gender!, "male")
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.528.1.1007.3.1")!)
		XCTAssertEqual(inst!.identifier![0].use!, "official")
		XCTAssertEqual(inst!.identifier![0].value!, "730291637")
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3")!)
		XCTAssertEqual(inst!.identifier![1].use!, "usual")
		XCTAssertEqual(inst!.identifier![1].value!, "174BIP3JH438")
		XCTAssertEqual(inst!.name!.family![0], "Voigt")
		XCTAssertEqual(inst!.name!.given![0], "Pieter")
		XCTAssertEqual(inst!.name!.suffix![0], "MD")
		XCTAssertEqual(inst!.name!.use!, "official")
		XCTAssertEqual(inst!.organization!.display!, "BMC")
		XCTAssertEqual(inst!.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst!.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst!.role![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.role![0].text!, "Care role")
		XCTAssertEqual(inst!.specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst!.specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst!.specialty![0].coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.111")!)
		XCTAssertEqual(inst!.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "0205569336")
		XCTAssertEqual(inst!.telecom![1].system!, "email")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "p.voigt@bmc.nl")
		XCTAssertEqual(inst!.telecom![2].system!, "fax")
		XCTAssertEqual(inst!.telecom![2].use!, "work")
		XCTAssertEqual(inst!.telecom![2].value!, "0205669382")
	}
}
