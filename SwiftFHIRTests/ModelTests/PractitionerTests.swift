//
//  PractitionerTests.swift
//  PractitionerTests
//
//  Generated from FHIR 0.4.0.3969 on 2015-01-23.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PractitionerTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Practitioner {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Practitioner {
		let instance = Practitioner(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPractitioner1() {
		let instance = testPractitioner1_impl()
		testPractitioner1_impl(json: instance.asJSON())
	}
	
	func testPractitioner1_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f001-evdb.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1975-12-07")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "938273695")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst.name!.family![0], "van den broek")
		XCTAssertEqual(inst.name!.given![0], "Eric")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		
		return inst
	}
	
	func testPractitioner2() {
		let instance = testPractitioner2_impl()
		testPractitioner2_impl(json: instance.asJSON())
	}
	
	func testPractitioner2_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f001-evdb.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1975-12-07")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "938273695")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst.name!.family![0], "van den broek")
		XCTAssertEqual(inst.name!.given![0], "Eric")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		
		return inst
	}
	
	func testPractitioner3() {
		let instance = testPractitioner3_impl()
		testPractitioner3_impl(json: instance.asJSON())
	}
	
	func testPractitioner3_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f001-evdb.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1975-12-07")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "938273695")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "129IDH4OP733")
		XCTAssertEqual(inst.name!.family![0], "van den broek")
		XCTAssertEqual(inst.name!.given![0], "Eric")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205568263")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "E.M.vandenbroek@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		
		return inst
	}
	
	func testPractitioner4() {
		let instance = testPractitioner4_impl()
		testPractitioner4_impl(json: instance.asJSON())
	}
	
	func testPractitioner4_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f002-pv.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1979-04-29")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "730291637")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "174BIP3JH438")
		XCTAssertEqual(inst.name!.family![0], "Voigt")
		XCTAssertEqual(inst.name!.given![0], "Pieter")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569336")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205669382")
		
		return inst
	}
	
	func testPractitioner5() {
		let instance = testPractitioner5_impl()
		testPractitioner5_impl(json: instance.asJSON())
	}
	
	func testPractitioner5_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f002-pv.json")
		
		XCTAssertEqual(inst.address![0].city!, "Den Burg")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1979-04-29")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "730291637")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "174BIP3JH438")
		XCTAssertEqual(inst.name!.family![0], "Voigt")
		XCTAssertEqual(inst.name!.given![0], "Pieter")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569336")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "p.voigt@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205669382")
		
		return inst
	}
	
	func testPractitioner6() {
		let instance = testPractitioner6_impl()
		testPractitioner6_impl(json: instance.asJSON())
	}
	
	func testPractitioner6_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f003-mv.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1963-07-01")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "846100293")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "243HID3RT938")
		XCTAssertEqual(inst.name!.family![0], "Versteegh")
		XCTAssertEqual(inst.name!.given![0], "Marc")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205562431")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205662948")
		
		return inst
	}
	
	func testPractitioner7() {
		let instance = testPractitioner7_impl()
		testPractitioner7_impl(json: instance.asJSON())
	}
	
	func testPractitioner7_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f003-mv.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1963-07-01")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "846100293")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "243HID3RT938")
		XCTAssertEqual(inst.name!.family![0], "Versteegh")
		XCTAssertEqual(inst.name!.given![0], "Marc")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.011")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Cardiothoracal surgery")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205562431")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "m.versteegh@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205662948")
		
		return inst
	}
	
	func testPractitioner8() {
		let instance = testPractitioner8_impl()
		testPractitioner8_impl(json: instance.asJSON())
	}
	
	func testPractitioner8_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f004-rb.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1980-02-04")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Netherlands")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.communication![0].text!, "Language")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "118265112")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "523ASA1LK927")
		XCTAssertEqual(inst.name!.family![0], "Briet")
		XCTAssertEqual(inst.name!.given![0], "Ronald")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569273")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "r.briet@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		
		return inst
	}
	
	func testPractitioner9() {
		let instance = testPractitioner9_impl()
		testPractitioner9_impl(json: instance.asJSON())
	}
	
	func testPractitioner9_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f004-rb.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 91")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1980-02-04")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Netherlands")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.communication![0].text!, "Language")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "118265112")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "523ASA1LK927")
		XCTAssertEqual(inst.name!.family![0], "Briet")
		XCTAssertEqual(inst.name!.given![0], "Ronald")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Ear-, Nose and Throat")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205569273")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "r.briet@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205664440")
		
		return inst
	}
	
	func testPractitioner10() {
		let instance = testPractitioner10_impl()
		testPractitioner10_impl(json: instance.asJSON())
	}
	
	func testPractitioner10_impl(json: JSONDictionary? = nil) -> Practitioner {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "practitioner-example-f005-al.canonical.json")
		
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Galapagosweg 9")
		XCTAssertEqual(inst.address![0].postalCode!, "1105 AZ")
		XCTAssertEqual(inst.address![0].use!, "work")
		XCTAssertEqual(inst.birthDate!.description, "1959-03-11")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "fr")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "France")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.6.121")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.528.1.1007.3.1")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.identifier![0].value!, "118265112")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.identifier![1].value!, "191REW8WE916")
		XCTAssertEqual(inst.name!.family![0], "Anne")
		XCTAssertEqual(inst.name!.given![0], "Langeveld")
		XCTAssertEqual(inst.name!.suffix![0], "MD")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.organization!.display!, "BMC")
		XCTAssertEqual(inst.organization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.role![0].coding![0].code!, "01.000")
		XCTAssertEqual(inst.role![0].coding![0].display!, "Arts")
		XCTAssertEqual(inst.role![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.role![0].text!, "Care role")
		XCTAssertEqual(inst.specialty![0].coding![0].code!, "01.018")
		XCTAssertEqual(inst.specialty![0].coding![0].display!, "Keel- neus- en oorarts")
		XCTAssertEqual(inst.specialty![0].coding![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.15.111")
		XCTAssertEqual(inst.specialty![0].text!, "specialisation")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "0205563847")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "a.langeveld@bmc.nl")
		XCTAssertEqual(inst.telecom![2].system!, "fax")
		XCTAssertEqual(inst.telecom![2].use!, "work")
		XCTAssertEqual(inst.telecom![2].value!, "0205668916")
		
		return inst
	}
}
