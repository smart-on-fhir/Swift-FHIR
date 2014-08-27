//
//  RelatedPersonTests.swift
//  RelatedPersonTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class RelatedPersonTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> RelatedPerson? {
		let json = readJSONFile(filename)
		let instance = RelatedPerson(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testRelatedPerson1() {
		let inst = instantiateFrom("relatedperson-example-f001-sarah.json")
		XCTAssertNotNil(inst, "Must have instantiated a RelatedPerson instance")
		
		XCTAssertEqual(inst!.name!.use!, "usual")	
		XCTAssertEqual(inst!.name!.given![0], "Sarah")	
		XCTAssertEqual(inst!.name!.family![0], "Abels")	
		XCTAssertEqual(inst!.relationship!.coding![0].code!, "SIGOTHR")	
		XCTAssertEqual(inst!.relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode"))	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n     Sarah Abels\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "mobile")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "0690383372")	
		XCTAssertEqual(inst!.telecom![1].use!, "home")	
		XCTAssertEqual(inst!.telecom![1].system!, "email")	
		XCTAssertEqual(inst!.telecom![1].value!, "s.abels@kpn.nl")	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "F")	
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender"))	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Female")	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.3"))	
		XCTAssertEqual(inst!.identifier![0].label!, "BSN")
	}
	
	func testRelatedPerson2() {
		let inst = instantiateFrom("relatedperson-example-f002-ariadne.json")
		XCTAssertNotNil(inst, "Must have instantiated a RelatedPerson instance")
		
		XCTAssertEqual(inst!.name!.text!, "Ariadne Bor-Jansma")	
		XCTAssertEqual(inst!.name!.use!, "usual")	
		XCTAssertEqual(inst!.relationship!.coding![0].code!, "SIGOTHR")	
		XCTAssertEqual(inst!.relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode"))	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n     Ariadne Bor-Jansma\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "home")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "+31201234567")	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "F")	
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender"))	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Female")
	}
	
	func testRelatedPerson3() {
		let inst = instantiateFrom("relatedperson-example-peter.json")
		XCTAssertNotNil(inst, "Must have instantiated a RelatedPerson instance")
		
		XCTAssertEqual(inst!.name!.use!, "official")	
		XCTAssertEqual(inst!.name!.given![0], "Peter")	
		XCTAssertEqual(inst!.name!.given![1], "James")	
		XCTAssertEqual(inst!.name!.family![0], "Chalmers")	
		XCTAssertEqual(inst!.relationship!.coding![0].code!, "owner")	
		XCTAssertEqual(inst!.relationship!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/patient-contact-relationship"))	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <table>\n        <tbody>\n          <tr>\n            <td>Name</td>\n            <td>Peter Chalmers</td>\n          </tr>\n          <tr>\n            <td>Address</td>\n            <td>534 Erewhon, Pleasantville, Vic, 3999</td>\n          </tr>\n          <tr>\n            <td>Contacts</td>\n            <td>Work: (03) 5555 6473</td>\n          </tr>\n        </tbody>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.address!.city!, "PleasantVille")	
		XCTAssertEqual(inst!.address!.use!, "home")	
		XCTAssertEqual(inst!.address!.line![0], "534 Erewhon St")	
		XCTAssertEqual(inst!.address!.zip!, "3999")	
		XCTAssertEqual(inst!.address!.state!, "Vic")	
		XCTAssertEqual(inst!.telecom![0].use!, "work")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "(03) 5555 6473")	
		XCTAssertEqual(inst!.gender!.coding![0].code!, "M")	
		XCTAssertEqual(inst!.gender!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/AdministrativeGender"))	
		XCTAssertEqual(inst!.gender!.coding![0].display!, "Male")	
		XCTAssertEqual(inst!.photo![0].url!, NSURL(string: "binary/@f012"))	
		XCTAssertEqual(inst!.photo![0].contentType!, "image/jpeg")
	}
}
