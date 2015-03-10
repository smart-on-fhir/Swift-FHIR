//
//  RelatedPersonTests.swift
//  RelatedPersonTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class RelatedPersonTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> RelatedPerson {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> RelatedPerson {
		let instance = RelatedPerson(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testRelatedPerson1() {
		let instance = testRelatedPerson1_impl()
		testRelatedPerson1_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson1_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-f001-sarah.canonical.json")
		
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].label!, "BSN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.name!.family![0], "Abels")
		XCTAssertEqual(inst.name!.given![0], "Sarah")
		XCTAssertEqual(inst.name!.use!, "usual")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "SIGOTHR")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "0690383372")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "home")
		XCTAssertEqual(inst.telecom![1].value!, "s.abels@kpn.nl")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson2() {
		let instance = testRelatedPerson2_impl()
		testRelatedPerson2_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson2_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-f001-sarah.canonical.json")
		
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].label!, "BSN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.name!.family![0], "Abels")
		XCTAssertEqual(inst.name!.given![0], "Sarah")
		XCTAssertEqual(inst.name!.use!, "usual")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "SIGOTHR")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "0690383372")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "home")
		XCTAssertEqual(inst.telecom![1].value!, "s.abels@kpn.nl")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson3() {
		let instance = testRelatedPerson3_impl()
		testRelatedPerson3_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson3_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-f001-sarah.json")
		
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f001")
		XCTAssertEqual(inst.identifier![0].label!, "BSN")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:2.16.840.1.113883.2.4.6.3")
		XCTAssertEqual(inst.identifier![0].use!, "official")
		XCTAssertEqual(inst.name!.family![0], "Abels")
		XCTAssertEqual(inst.name!.given![0], "Sarah")
		XCTAssertEqual(inst.name!.use!, "usual")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f001")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "SIGOTHR")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "0690383372")
		XCTAssertEqual(inst.telecom![1].system!, "email")
		XCTAssertEqual(inst.telecom![1].use!, "home")
		XCTAssertEqual(inst.telecom![1].value!, "s.abels@kpn.nl")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson4() {
		let instance = testRelatedPerson4_impl()
		testRelatedPerson4_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson4_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-f002-ariadne.canonical.json")
		
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.name!.text!, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name!.use!, "usual")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "SIGOTHR")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "home")
		XCTAssertEqual(inst.telecom![0].value!, "+31201234567")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson5() {
		let instance = testRelatedPerson5_impl()
		testRelatedPerson5_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson5_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-f002-ariadne.json")
		
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "f002")
		XCTAssertEqual(inst.name!.text!, "Ariadne Bor-Jansma")
		XCTAssertEqual(inst.name!.use!, "usual")
		XCTAssertEqual(inst.patient!.reference!, "Patient/f201")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "SIGOTHR")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "home")
		XCTAssertEqual(inst.telecom![0].value!, "+31201234567")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson6() {
		let instance = testRelatedPerson6_impl()
		testRelatedPerson6_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson6_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-peter.canonical.json")
		
		XCTAssertEqual(inst.address!.city!, "PleasantVille")
		XCTAssertEqual(inst.address!.line![0], "534 Erewhon St")
		XCTAssertEqual(inst.address!.postalCode!, "3999")
		XCTAssertEqual(inst.address!.state!, "Vic")
		XCTAssertEqual(inst.address!.use!, "home")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "peter")
		XCTAssertEqual(inst.name!.family![0], "Chalmers")
		XCTAssertEqual(inst.name!.given![0], "Peter")
		XCTAssertEqual(inst.name!.given![1], "James")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.patient!.reference!, "Patient/animal")
		XCTAssertEqual(inst.period!.start!.description, "2012-03-11")
		XCTAssertEqual(inst.photo![0].contentType!, "image/jpeg")
		XCTAssertEqual(inst.photo![0].url!.absoluteString!, "Binary/f012")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "owner")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "(03) 5555 6473")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson7() {
		let instance = testRelatedPerson7_impl()
		testRelatedPerson7_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson7_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example-peter.json")
		
		XCTAssertEqual(inst.address!.city!, "PleasantVille")
		XCTAssertEqual(inst.address!.line![0], "534 Erewhon St")
		XCTAssertEqual(inst.address!.postalCode!, "3999")
		XCTAssertEqual(inst.address!.state!, "Vic")
		XCTAssertEqual(inst.address!.use!, "home")
		XCTAssertEqual(inst.gender!, "male")
		XCTAssertEqual(inst.id!, "peter")
		XCTAssertEqual(inst.name!.family![0], "Chalmers")
		XCTAssertEqual(inst.name!.given![0], "Peter")
		XCTAssertEqual(inst.name!.given![1], "James")
		XCTAssertEqual(inst.name!.use!, "official")
		XCTAssertEqual(inst.patient!.reference!, "Patient/animal")
		XCTAssertEqual(inst.period!.start!.description, "2012-03-11")
		XCTAssertEqual(inst.photo![0].contentType!, "image/jpeg")
		XCTAssertEqual(inst.photo![0].url!.absoluteString!, "Binary/f012")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "owner")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "(03) 5555 6473")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson8() {
		let instance = testRelatedPerson8_impl()
		testRelatedPerson8_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson8_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example.canonical.json")
		
		XCTAssertEqual(inst.address!.city!, "Paris")
		XCTAssertEqual(inst.address!.country!, "FRA")
		XCTAssertEqual(inst.address!.line![0], "43, Place du Marché Sainte Catherine")
		XCTAssertEqual(inst.address!.postalCode!, "75004")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "benedicte")
		XCTAssertEqual(inst.identifier![0].label!, "INSEE")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.2.250.1.61")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "272117510400399")
		XCTAssertEqual(inst.name!.family![0], "du")
		XCTAssertEqual(inst.name!.family![1], "Marché")
		XCTAssertEqual(inst.name!.given![0], "Bénédicte")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.photo![0].contentType!, "image/jpeg")
		XCTAssertEqual(inst.photo![0].url!.absoluteString!, "Binary/f016")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "partner")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.relationship!.coding![1].code!, "WIFE")
		XCTAssertEqual(inst.relationship!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "+33 (237) 998327")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testRelatedPerson9() {
		let instance = testRelatedPerson9_impl()
		testRelatedPerson9_impl(json: instance.asJSON())
	}
	
	func testRelatedPerson9_impl(json: JSONDictionary? = nil) -> RelatedPerson {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "relatedperson-example.json")
		
		XCTAssertEqual(inst.address!.city!, "Paris")
		XCTAssertEqual(inst.address!.country!, "FRA")
		XCTAssertEqual(inst.address!.line![0], "43, Place du Marché Sainte Catherine")
		XCTAssertEqual(inst.address!.postalCode!, "75004")
		XCTAssertEqual(inst.gender!, "female")
		XCTAssertEqual(inst.id!, "benedicte")
		XCTAssertEqual(inst.identifier![0].label!, "INSEE")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "urn:oid:1.2.250.1.61")
		XCTAssertEqual(inst.identifier![0].use!, "usual")
		XCTAssertEqual(inst.identifier![0].value!, "272117510400399")
		XCTAssertEqual(inst.name!.family![0], "du")
		XCTAssertEqual(inst.name!.family![1], "Marché")
		XCTAssertEqual(inst.name!.given![0], "Bénédicte")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.photo![0].contentType!, "image/jpeg")
		XCTAssertEqual(inst.photo![0].url!.absoluteString!, "Binary/f016")
		XCTAssertEqual(inst.relationship!.coding![0].code!, "partner")
		XCTAssertEqual(inst.relationship!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/patient-contact-relationship")
		XCTAssertEqual(inst.relationship!.coding![1].code!, "WIFE")
		XCTAssertEqual(inst.relationship!.coding![1].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "+33 (237) 998327")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
