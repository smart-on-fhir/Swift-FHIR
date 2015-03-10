//
//  PatientTests.swift
//  PatientTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class PatientTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Patient {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Patient {
		let instance = Patient(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPatient1() {
		let instance = testPatient1_impl()
		testPatient1_impl(json: instance.asJSON())
	}
	
	func testPatient1_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-a.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.contact![0].organization!.display!, "Walt Disney Corporation")
		XCTAssertEqual(inst.contact![0].organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "pat1")
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "654321")
		XCTAssertEqual(inst.link![0].other!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.link![0].type!, "seealso")
		XCTAssertEqual(inst.managingOrganization!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "Donald")
		XCTAssertEqual(inst.name![0].given![0], "Duck")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.photo![0].contentType!, "image/gif")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient2() {
		let instance = testPatient2_impl()
		testPatient2_impl(json: instance.asJSON())
	}
	
	func testPatient2_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-a.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.contact![0].organization!.display!, "Walt Disney Corporation")
		XCTAssertEqual(inst.contact![0].organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "pat1")
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "654321")
		XCTAssertEqual(inst.link![0].other!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.link![0].type!, "seealso")
		XCTAssertEqual(inst.managingOrganization!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "Donald")
		XCTAssertEqual(inst.name![0].given![0], "Duck")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.photo![0].contentType!, "image/gif")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient3() {
		let instance = testPatient3_impl()
		testPatient3_impl(json: instance.asJSON())
	}
	
	func testPatient3_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-a.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.contact![0].organization!.display!, "Walt Disney Corporation")
		XCTAssertEqual(inst.contact![0].organization!.reference!, "Organization/1")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "pat1")
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "654321")
		XCTAssertEqual(inst.link![0].other!.reference!, "Patient/pat2")
		XCTAssertEqual(inst.link![0].type!, "seealso")
		XCTAssertEqual(inst.managingOrganization!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "Donald")
		XCTAssertEqual(inst.name![0].given![0], "Duck")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.photo![0].contentType!, "image/gif")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient4() {
		let instance = testPatient4_impl()
		testPatient4_impl(json: instance.asJSON())
	}
	
	func testPatient4_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-animal.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.animal!.breed!.coding![0].code!, "58108001")
		XCTAssertEqual(inst.animal!.breed!.coding![0].display!, "Golden retriever")
		XCTAssertEqual(inst.animal!.breed!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.animal!.breed!.coding![1].code!, "gret")
		XCTAssertEqual(inst.animal!.breed!.coding![1].display!, "Golden Retriever")
		XCTAssertEqual(inst.animal!.breed!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/animal-breed")
		XCTAssertEqual(inst.animal!.genderStatus!.coding![0].code!, "neutered")
		XCTAssertEqual(inst.animal!.genderStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/animal-genderstatus")
		XCTAssertEqual(inst.animal!.species!.coding![0].code!, "canislf")
		XCTAssertEqual(inst.animal!.species!.coding![0].display!, "Dog")
		XCTAssertEqual(inst.animal!.species!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/animal-species")
		XCTAssertEqual(inst.birthDate!.description, "2010-03-23")
		XCTAssertEqual(inst.contact![0].name!.family![0], "Chalmers")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Peter")
		XCTAssertEqual(inst.contact![0].name!.given![1], "James")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "(03) 5555 6473")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "animal")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "Maroondah City Council")
		XCTAssertEqual(inst.identifier![0].label!, "Dog Tag")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2010-05-31")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.maroondah.vic.gov.au/AnimalRegFees.aspx")
		XCTAssertEqual(inst.identifier![0].value!, "1234123")
		XCTAssertEqual(inst.managingOrganization!.display!, "Pete's Vetinary Services")
		XCTAssertEqual(inst.name![0].given![0], "Kenzi")
		XCTAssertEqual(inst.name![0].use!, "usual")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient5() {
		let instance = testPatient5_impl()
		testPatient5_impl(json: instance.asJSON())
	}
	
	func testPatient5_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-animal.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.animal!.breed!.coding![0].code!, "58108001")
		XCTAssertEqual(inst.animal!.breed!.coding![0].display!, "Golden retriever")
		XCTAssertEqual(inst.animal!.breed!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.animal!.breed!.coding![1].code!, "gret")
		XCTAssertEqual(inst.animal!.breed!.coding![1].display!, "Golden Retriever")
		XCTAssertEqual(inst.animal!.breed!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/animal-breed")
		XCTAssertEqual(inst.animal!.genderStatus!.coding![0].code!, "neutered")
		XCTAssertEqual(inst.animal!.genderStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/animal-genderstatus")
		XCTAssertEqual(inst.animal!.species!.coding![0].code!, "canislf")
		XCTAssertEqual(inst.animal!.species!.coding![0].display!, "Dog")
		XCTAssertEqual(inst.animal!.species!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/animal-species")
		XCTAssertEqual(inst.birthDate!.description, "2010-03-23")
		XCTAssertEqual(inst.contact![0].name!.family![0], "Chalmers")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Peter")
		XCTAssertEqual(inst.contact![0].name!.given![1], "James")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "owner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "(03) 5555 6473")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "animal")
		XCTAssertEqual(inst.identifier![0].assigner!.display!, "Maroondah City Council")
		XCTAssertEqual(inst.identifier![0].label!, "Dog Tag")
		XCTAssertEqual(inst.identifier![0].period!.start!.description, "2010-05-31")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.maroondah.vic.gov.au/AnimalRegFees.aspx")
		XCTAssertEqual(inst.identifier![0].value!, "1234123")
		XCTAssertEqual(inst.managingOrganization!.display!, "Pete's Vetinary Services")
		XCTAssertEqual(inst.name![0].given![0], "Kenzi")
		XCTAssertEqual(inst.name![0].use!, "usual")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient6() {
		let instance = testPatient6_impl()
		testPatient6_impl(json: instance.asJSON())
	}
	
	func testPatient6_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-b.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.gender!, "other")
		XCTAssertEqual(inst.id!, "pat2")
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "123456")
		XCTAssertEqual(inst.link![0].other!.reference!, "Patient/pat1")
		XCTAssertEqual(inst.link![0].type!, "seealso")
		XCTAssertEqual(inst.managingOrganization!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "Donald")
		XCTAssertEqual(inst.name![0].given![0], "Duck")
		XCTAssertEqual(inst.name![0].given![1], "D")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.photo![0].contentType!, "image/gif")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient7() {
		let instance = testPatient7_impl()
		testPatient7_impl(json: instance.asJSON())
	}
	
	func testPatient7_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-b.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.gender!, "other")
		XCTAssertEqual(inst.id!, "pat2")
		XCTAssertEqual(inst.identifier![0].label!, "MRN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:0.1.2.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "123456")
		XCTAssertEqual(inst.link![0].other!.reference!, "Patient/pat1")
		XCTAssertEqual(inst.link![0].type!, "seealso")
		XCTAssertEqual(inst.managingOrganization!.display!, "ACME Healthcare, Inc")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "Donald")
		XCTAssertEqual(inst.name![0].given![0], "Duck")
		XCTAssertEqual(inst.name![0].given![1], "D")
		XCTAssertEqual(inst.name![0].use!, "official")
		XCTAssertEqual(inst.photo![0].contentType!, "image/gif")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient8() {
		let instance = testPatient8_impl()
		testPatient8_impl(json: instance.asJSON())
	}
	
	func testPatient8_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-dicom.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1010")
		XCTAssertEqual(inst.extension_fhir![0].valueQuantity!.units!, "Y")
		XCTAssertEqual(inst.extension_fhir![0].valueQuantity!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1020")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.units!, "m")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.value!, NSDecimalNumber(string: "1.83"))
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1030")
		XCTAssertEqual(inst.extension_fhir![2].valueQuantity!.units!, "kg")
		XCTAssertEqual(inst.extension_fhir![2].valueQuantity!.value!, NSDecimalNumber(string: "72.58"))
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "dicom")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://nema.org/examples/patients")
		XCTAssertEqual(inst.identifier![0].value!, "MINT1234")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "MINT_TEST")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient9() {
		let instance = testPatient9_impl()
		testPatient9_impl(json: instance.asJSON())
	}
	
	func testPatient9_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-dicom.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1010")
		XCTAssertEqual(inst.extension_fhir![0].valueQuantity!.units!, "Y")
		XCTAssertEqual(inst.extension_fhir![0].valueQuantity!.value!, NSDecimalNumber(string: "56"))
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1020")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.units!, "m")
		XCTAssertEqual(inst.extension_fhir![1].valueQuantity!.value!, NSDecimalNumber(string: "1.83"))
		XCTAssertEqual(inst.extension_fhir![2].url!.absoluteString!, "http://nema.org/fhir/extensions#0010:1030")
		XCTAssertEqual(inst.extension_fhir![2].valueQuantity!.units!, "kg")
		XCTAssertEqual(inst.extension_fhir![2].valueQuantity!.value!, NSDecimalNumber(string: "72.58"))
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "dicom")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://nema.org/examples/patients")
		XCTAssertEqual(inst.identifier![0].value!, "MINT1234")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.name![0].family![0], "MINT_TEST")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testPatient10() {
		let instance = testPatient10_impl()
		testPatient10_impl(json: instance.asJSON())
	}
	
	func testPatient10_impl(json: JSONDictionary? = nil) -> Patient {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "patient-example-f001-pieter.canonical.json")
		
		XCTAssertTrue(inst.active!)
		XCTAssertEqual(inst.address![0].city!, "Amsterdam")
		XCTAssertEqual(inst.address![0].country!, "NLD")
		XCTAssertEqual(inst.address![0].line![0], "Van Egmondkade 23")
		XCTAssertEqual(inst.address![0].postalCode!, "1024 RJ")
		XCTAssertEqual(inst.address![0].use!, "home")
		XCTAssertEqual(inst.birthDate!.description, "1944-11-17")
		XCTAssertEqual(inst.communication![0].coding![0].code!, "nl")
		XCTAssertEqual(inst.communication![0].coding![0].display!, "Dutch")
		XCTAssertEqual(inst.communication![0].coding![0].system!.absoluteString!, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.communication![0].text!, "Nederlands")
		XCTAssertEqual(inst.contact![0].name!.family![0], "Abels")
		XCTAssertEqual(inst.contact![0].name!.given![0], "Sarah")
		XCTAssertEqual(inst.contact![0].name!.use!, "usual")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].code!, "partner")
		XCTAssertEqual(inst.contact![0].relationship![0].coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.contact![0].telecom![0].use!, "mobile")
		XCTAssertEqual(inst.contact![0].telecom![0].value!, "0690383372")
		XCTAssertFalse(inst.deceasedBoolean!)
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "738472983")
		XCTAssertEqual(inst.identifier![1].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![1].use!, "usual")
		XCTAssertEqual(inst.managingOrganization!.display!, "Burgers University Medical Centre")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.maritalStatus!.coding![0].code!, "M")
		XCTAssertEqual(inst.maritalStatus!.coding![0].display!, "Married")
		XCTAssertEqual(inst.maritalStatus!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/MaritalStatus")
		XCTAssertEqual(inst.maritalStatus!.text!, "Getrouwd")
		XCTAssertTrue(inst.multipleBirthBoolean!)
		XCTAssertEqual(inst.name![0].family![0], "van de Heuvel")
		XCTAssertEqual(inst.name![0].given![0], "Pieter")
		XCTAssertEqual(inst.name![0].suffix![0], "MSc")
		XCTAssertEqual(inst.name![0].use!, "usual")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "0648352638")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "home")
		XCTAssertEqual(inst.telecom![1].value!, "p.heuvel@gmail.com")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
