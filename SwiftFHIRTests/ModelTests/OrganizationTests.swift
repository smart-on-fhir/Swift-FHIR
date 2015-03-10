//
//  OrganizationTests.swift
//  OrganizationTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class OrganizationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Organization {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Organization {
		let instance = Organization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrganization1() {
		let instance = testOrganization1_impl()
		testOrganization1_impl(json: instance.asJSON())
	}
	
	func testOrganization1_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example1.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].line![0], "Firstcare Way")
		XCTAssertEqual(inst.address![0].line![1], "Building 1")
		XCTAssertEqual(inst.address![0].postalCode!, "17111")
		XCTAssertEqual(inst.address![0].state!, "PA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].label!, "NPI")
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
	
	func testOrganization2() {
		let instance = testOrganization2_impl()
		testOrganization2_impl(json: instance.asJSON())
	}
	
	func testOrganization2_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example1.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].line![0], "Firstcare Way")
		XCTAssertEqual(inst.address![0].line![1], "Building 1")
		XCTAssertEqual(inst.address![0].postalCode!, "17111")
		XCTAssertEqual(inst.address![0].state!, "PA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].label!, "NPI")
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
	
	func testOrganization3() {
		let instance = testOrganization3_impl()
		testOrganization3_impl(json: instance.asJSON())
	}
	
	func testOrganization3_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example1.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
		XCTAssertEqual(inst.address![0].line![0], "Firstcare Way")
		XCTAssertEqual(inst.address![0].line![1], "Building 1")
		XCTAssertEqual(inst.address![0].postalCode!, "17111")
		XCTAssertEqual(inst.address![0].state!, "PA")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.id!, "uslab-example1")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].label!, "NPI")
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
	
	func testOrganization4() {
		let instance = testOrganization4_impl()
		testOrganization4_impl(json: instance.asJSON())
	}
	
	func testOrganization4_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example2.canonical.json")
		
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
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].label!, "NPI")
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
	
	func testOrganization5() {
		let instance = testOrganization5_impl()
		testOrganization5_impl(json: instance.asJSON())
	}
	
	func testOrganization5_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example2.json")
		
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
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS) National Plan and Provider Enumeration System (NPPES)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "https://nppes.cms.hhs.gov/NPPES/")
		XCTAssertEqual(inst.identifier![0].label!, "NPI")
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
	
	func testOrganization6() {
		let instance = testOrganization6_impl()
		testOrganization6_impl(json: instance.asJSON())
	}
	
	func testOrganization6_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example3.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
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
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS)  Clinical Laboratory Improvement Amendments (CLIA)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "http://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html")
		XCTAssertEqual(inst.identifier![0].label!, "CLIA")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "01D1111111")
		XCTAssertEqual(inst.name!, "Acme Labs")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization7() {
		let instance = testOrganization7_impl()
		testOrganization7_impl(json: instance.asJSON())
	}
	
	func testOrganization7_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "org-uslab-example3.json")
		
		XCTAssertEqual(inst.address![0].city!, "Harrisburg")
		XCTAssertEqual(inst.address![0].country!, "USA")
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
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "The Centers for Medicare and Medicaid Services (CMS)  Clinical Laboratory Improvement Amendments (CLIA)")
		XCTAssertEqual(inst.identifier![0].assigner!.reference!, "http://www.cms.gov/Regulations-and-Guidance/Legislation/CLIA/index.html")
		XCTAssertEqual(inst.identifier![0].label!, "CLIA")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "01D1111111")
		XCTAssertEqual(inst.name!, "Acme Labs")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testOrganization8() {
		let instance = testOrganization8_impl()
		testOrganization8_impl(json: instance.asJSON())
	}
	
	func testOrganization8_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "organization-example-f001-burgers.canonical.json")
		
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
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "91654")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization9() {
		let instance = testOrganization9_impl()
		testOrganization9_impl(json: instance.asJSON())
	}
	
	func testOrganization9_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "organization-example-f001-burgers.json")
		
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
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "022-655 2334")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].code!, "PATINF")
		XCTAssertEqual(inst.contact![1].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
		XCTAssertEqual(inst.contact![1].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![1].telecom![0].value!, "022-655 2335")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "91654")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.1")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "17-0112278")
		XCTAssertEqual(inst.name!, "Burgers University Medical Center")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "022-655 2300")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "V6")
		XCTAssertEqual(inst.type!.coding![0].display!, "University Medical Hospital")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.1060")
		XCTAssertEqual(inst.type!.coding![1].code!, "prov")
		XCTAssertEqual(inst.type!.coding![1].display!, "Healthcare Provider")
		XCTAssertEqual(inst.type!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
	
	func testOrganization10() {
		let instance = testOrganization10_impl()
		testOrganization10_impl(json: instance.asJSON())
	}
	
	func testOrganization10_impl(json: JSONDictionary? = nil) -> Organization {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "organization-example-f002-burgers-card.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].line![0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact![0].address!.line![0], "South Wing, floor 2")
		XCTAssertEqual(inst.contact![0].name!.text!, "mevr. D. de Haan")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].code!, "ADMIN")
		XCTAssertEqual(inst.contact![0].purpose!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/contactentity-type")
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
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/organization-type")
		
		return inst
	}
}
