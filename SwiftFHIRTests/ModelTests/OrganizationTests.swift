//
//  OrganizationTests.swift
//  OrganizationTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
//

import Cocoa
import XCTest
import SwiftFHIR


class OrganizationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Organization? {
		let json = readJSONFile(filename)
		let instance = Organization(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrganization1() {
		let inst = instantiateFrom("organization-example-f001-burgers.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Burgers University Medical Center")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: 91654 (official), 17-0112278 (usual)\n      </p>\n      <p>\n        <b>name</b>: Burgers University Medical Center\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {urn:oid:2.16.840.1.113883.2.4.15.1060 V6}, {http://hl7.org/fhir/organization-type prov}\">University Medical Hospital</span>\n      </p>\n      <p>\n        <b>telecom</b>: ph: 022-655 2300(work)\n      </p>\n      <p>\n        <b>address</b>: \n      </p>\n      <ul>\n        <li>Galapagosweg 91 Den Burg 9105 PZ NLD (work)</li>\n        <li>PO Box 2311 Den Burg 9100 AA NLD (work)</li>\n      </ul>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Purpose</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/contactentity-type PRESS}\">Press</span>\n          </td>\n          <td> </td>\n          <td>ph: 022-655 2334</td>\n          <td> </td>\n          <td> </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/contactentity-type PATINF}\">Patient</span>\n          </td>\n          <td> </td>\n          <td>ph: 022-655 2335</td>\n          <td> </td>\n          <td> </td>\n        </tr>\n      </table>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "work")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2300")	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2334")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "PRESS")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/contactentity-type"))	
		XCTAssertEqual(inst!.contact![1].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![1].telecom![0].value!, "022-655 2335")	
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].code!, "PATINF")	
		XCTAssertEqual(inst!.contact![1].purpose!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/contactentity-type"))	
		XCTAssertEqual(inst!.address![0].city!, "Den Burg")	
		XCTAssertEqual(inst!.address![0].use!, "work")	
		XCTAssertEqual(inst!.address![0].line![0], "Galapagosweg 91")	
		XCTAssertEqual(inst!.address![0].zip!, "9105 PZ")	
		XCTAssertEqual(inst!.address![0].country!, "NLD")	
		XCTAssertEqual(inst!.address![1].city!, "Den Burg")	
		XCTAssertEqual(inst!.address![1].use!, "work")	
		XCTAssertEqual(inst!.address![1].line![0], "PO Box 2311")	
		XCTAssertEqual(inst!.address![1].zip!, "9100 AA")	
		XCTAssertEqual(inst!.address![1].country!, "NLD")	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.528.1"))	
		XCTAssertEqual(inst!.identifier![0].value!, "91654")	
		XCTAssertEqual(inst!.identifier![1].use!, "usual")	
		XCTAssertEqual(inst!.identifier![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.6.1"))	
		XCTAssertEqual(inst!.identifier![1].value!, "17-0112278")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "V6")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.1060"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "University Medical Hospital")	
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")	
		XCTAssertEqual(inst!.type!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/organization-type"))	
		XCTAssertEqual(inst!.type!.coding![1].display!, "Healthcare Provider")
	}
	
	func testOrganization2() {
		let inst = instantiateFrom("organization-example-f002-burgers-card.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Burgers UMC Cardiology unit")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Burgers UMC Cardiology unit\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://hl7.org/fhir/organization-type dept}\">Hospital Department</span>\n      </p>\n      <p>\n        <b>telecom</b>: ph: 022-655 2320\n      </p>\n      <p>\n        <b>address</b>: South Wing, floor 2 \n      </p>\n      <p>\n        <b>partOf</b>: \n        <a href=\"organization-example-f001-burgers.html\">91654 (official), 17-0112278 (usual); name: Burgers University Medical Center; University Medical Hospital</a>\n      </p>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Purpose</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/contactentity-type ADMIN}\">Administrative</span>\n          </td>\n          <td>mevr. D. de Haan</td>\n          <td>ph: 022-655 2321</td>\n          <td>South Wing, floor 2 </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>active</b>: false\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 2320")	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 2321")	
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")	
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "cardio@burgersumc.nl")	
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")	
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 2322")	
		XCTAssertEqual(inst!.contact![0].address!.line![0], "South Wing, floor 2")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/contactentity-type"))	
		XCTAssertEqual(inst!.contact![0].name!.text!, "mevr. D. de Haan")	
		XCTAssertEqual(inst!.address![0].line![0], "South Wing, floor 2")	
		XCTAssertEqual(inst!.active!, false)	
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/organization-type"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
	}
	
	func testOrganization3() {
		let inst = instantiateFrom("organization-example-f003-burgers-ENT.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Burgers UMC Ear,Nose,Throat unit")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>name</b>: Burgers UMC Ear,Nose,Throat unit\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://hl7.org/fhir/organization-type dept}\">Hospital Department</span>\n      </p>\n      <p>\n        <b>telecom</b>: ph: 022-655 6780\n      </p>\n      <p>\n        <b>address</b>: West Wing, floor 5 \n      </p>\n      <p>\n        <b>partOf</b>: \n        <a href=\"organization-example-f001-burgers.html\">91654 (official), 17-0112278 (usual); name: Burgers University Medical Center; University Medical Hospital</a>\n      </p>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Purpose</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n        </tr>\n        <tr>\n          <td>\n            <span title=\"Codes: {http://hl7.org/fhir/contactentity-type ADMIN}\">Administrative</span>\n          </td>\n          <td>mr. F. de Hond</td>\n          <td>ph: 022-655 7654</td>\n          <td>West Wing, floor 5 </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>active</b>: false\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "022-655 6780")	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "022-655 7654")	
		XCTAssertEqual(inst!.contact![0].telecom![1].system!, "email")	
		XCTAssertEqual(inst!.contact![0].telecom![1].value!, "KNO@burgersumc.nl")	
		XCTAssertEqual(inst!.contact![0].telecom![2].system!, "fax")	
		XCTAssertEqual(inst!.contact![0].telecom![2].value!, "022-655 0998")	
		XCTAssertEqual(inst!.contact![0].address!.line![0], "West Wing, floor 5")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].code!, "ADMIN")	
		XCTAssertEqual(inst!.contact![0].purpose!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/contactentity-type"))	
		XCTAssertEqual(inst!.contact![0].name!.text!, "mr. F. de Hond")	
		XCTAssertEqual(inst!.address![0].line![0], "West Wing, floor 5")	
		XCTAssertEqual(inst!.active!, false)	
		XCTAssertEqual(inst!.type!.coding![0].code!, "dept")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/organization-type"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Hospital Department")
	}
	
	func testOrganization4() {
		let inst = instantiateFrom("organization-example-f201-aumc.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Artis University Medical Center (AUMC)")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: Zorginstelling naam = Artis University Medical Center (official)\n      </p>\n      <p>\n        <b>name</b>: Artis University Medical Center (AUMC)\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 405608006}, {urn:oid:2.16.840.1.113883.2.4.15.1060 V6}, {http://hl7.org/fhir/organization-type prov}\">Academic Medical Center</span>\n      </p>\n      <p>\n        <b>telecom</b>: ph: +31715269111(work)\n      </p>\n      <p>\n        <b>address</b>: Walvisbaai 3 Den Helder 2333ZA NLD (work)\n      </p>\n      <h3>Contacts</h3>\n      <table class=\"grid\">\n        <tr>\n          <td>\n            <b>Purpose</b>\n          </td>\n          <td>\n            <b>Name</b>\n          </td>\n          <td>\n            <b>Telecom</b>\n          </td>\n          <td>\n            <b>Address</b>\n          </td>\n          <td>\n            <b>Gender</b>\n          </td>\n        </tr>\n        <tr>\n          <td> </td>\n          <td>Professor Brand(official)</td>\n          <td>ph: +31715269702(work)</td>\n          <td>Walvisbaai 3 Gebouw 2 Den helder 2333ZA NLD </td>\n          <td> </td>\n        </tr>\n      </table>\n      <p>\n        <b>active</b>: true\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "work")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "+31715269111")	
		XCTAssertEqual(inst!.contact![0].telecom![0].use!, "work")	
		XCTAssertEqual(inst!.contact![0].telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.contact![0].telecom![0].value!, "+31715269702")	
		XCTAssertEqual(inst!.contact![0].name!.text!, "Professor Brand")	
		XCTAssertEqual(inst!.contact![0].name!.use!, "official")	
		XCTAssertEqual(inst!.contact![0].name!.prefix![0], "Prof.Dr.")	
		XCTAssertEqual(inst!.contact![0].name!.given![0], "Ronald")	
		XCTAssertEqual(inst!.contact![0].name!.family![0], "Brand")	
		XCTAssertEqual(inst!.contact![0].address!.city!, "Den helder")	
		XCTAssertEqual(inst!.contact![0].address!.line![0], "Walvisbaai 3")	
		XCTAssertEqual(inst!.contact![0].address!.line![1], "Gebouw 2")	
		XCTAssertEqual(inst!.contact![0].address!.zip!, "2333ZA")	
		XCTAssertEqual(inst!.contact![0].address!.country!, "NLD")	
		XCTAssertEqual(inst!.address![0].city!, "Den Helder")	
		XCTAssertEqual(inst!.address![0].use!, "work")	
		XCTAssertEqual(inst!.address![0].line![0], "Walvisbaai 3")	
		XCTAssertEqual(inst!.address![0].zip!, "2333ZA")	
		XCTAssertEqual(inst!.address![0].country!, "NLD")	
		XCTAssertEqual(inst!.active!, true)	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.zorgkaartnederland.nl/"))	
		XCTAssertEqual(inst!.identifier![0].value!, "Artis University Medical Center")	
		XCTAssertEqual(inst!.identifier![0].label!, "Zorginstelling naam")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "405608006")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Academic Medical Center")	
		XCTAssertEqual(inst!.type!.coding![1].code!, "V6")	
		XCTAssertEqual(inst!.type!.coding![1].system!, NSURL(string: "urn:oid:2.16.840.1.113883.2.4.15.1060"))	
		XCTAssertEqual(inst!.type!.coding![1].display!, "University Medical Hospital")	
		XCTAssertEqual(inst!.type!.coding![2].code!, "prov")	
		XCTAssertEqual(inst!.type!.coding![2].system!, NSURL(string: "http://hl7.org/fhir/organization-type"))	
		XCTAssertEqual(inst!.type!.coding![2].display!, "Healthcare Provider")
	}
	
	func testOrganization5() {
		let inst = instantiateFrom("organization-example-f203-bumc.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Blijdorp Medisch Centrum (BUMC)")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>\n        <b>Generated Narrative</b>\n      </p>\n      <p>\n        <b>identifier</b>: Zorginstelling naam = Blijdorp MC (official)\n      </p>\n      <p>\n        <b>name</b>: Blijdorp Medisch Centrum (BUMC)\n      </p>\n      <p>\n        <b>type</b>: \n        <span title=\"Codes: {http://snomed.info/sct 405608006}, {http://hl7.org/fhir/organization-type prov}\">Academic Medical Center</span>\n      </p>\n      <p>\n        <b>telecom</b>: ph: +31107040704(work)\n      </p>\n      <p>\n        <b>address</b>: apenrots 230 Blijdorp 3056BE NLD (work)\n      </p>\n      <p>\n        <b>active</b>: true\n      </p>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "work")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "+31107040704")	
		XCTAssertEqual(inst!.address![0].city!, "Blijdorp")	
		XCTAssertEqual(inst!.address![0].use!, "work")	
		XCTAssertEqual(inst!.address![0].line![0], "apenrots 230")	
		XCTAssertEqual(inst!.address![0].zip!, "3056BE")	
		XCTAssertEqual(inst!.address![0].country!, "NLD")	
		XCTAssertEqual(inst!.active!, true)	
		XCTAssertEqual(inst!.identifier![0].use!, "official")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.zorgkaartnederland.nl/"))	
		XCTAssertEqual(inst!.identifier![0].value!, "Blijdorp MC")	
		XCTAssertEqual(inst!.identifier![0].label!, "Zorginstelling naam")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "405608006")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://snomed.info/sct"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Academic Medical Center")	
		XCTAssertEqual(inst!.type!.coding![1].code!, "prov")	
		XCTAssertEqual(inst!.type!.coding![1].system!, NSURL(string: "http://hl7.org/fhir/organization-type"))
	}
	
	func testOrganization6() {
		let inst = instantiateFrom("organization-example-gastro.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.name!, "Gastroenterology")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Gastroenterology @ Acme Hospital. ph: +1 555 234 3523, email: <a href=\"mailto:gastro@acme.org\">gastro@acme.org</a></p>\n    </div>")	
		XCTAssertEqual(inst!.telecom![0].use!, "mobile")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "+1 555 234 3523")	
		XCTAssertEqual(inst!.telecom![1].use!, "work")	
		XCTAssertEqual(inst!.telecom![1].system!, "email")	
		XCTAssertEqual(inst!.telecom![1].value!, "gastro@acme.org")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.acme.org.au/units"))	
		XCTAssertEqual(inst!.identifier![0].value!, "Gastro")
	}
	
	func testOrganization7() {
		let inst = instantiateFrom("organization-example-good-health-care.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Good Health Clinic</p>\n    </div>")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:ietf:rfc:3986"))	
		XCTAssertEqual(inst!.identifier![0].value!, "2.16.840.1.113883.19.5")	
		XCTAssertEqual(inst!.name!, "Good Health Clinic")
	}
	
	func testOrganization8() {
		let inst = instantiateFrom("organization-example-insurer.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>XYZ Insurance</p>\n    </div>")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "urn:oid:2.16.840.1.113883.3.19.2.3"))	
		XCTAssertEqual(inst!.identifier![0].value!, "666666")	
		XCTAssertEqual(inst!.name!, "XYZ Insurance")
	}
	
	func testOrganization9() {
		let inst = instantiateFrom("organization-example-lab.json")
		XCTAssertNotNil(inst, "Must have instantiated a Organization instance")
		
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>\n      <p>Clinical Laboratory @ Acme Hospital. ph: +1 555 234 1234, email: <a href=\"mailto:contact@labs.acme.org\">contact@labs.acme.org</a></p>\n    </div>")	
		XCTAssertEqual(inst!.identifier![0].system!, NSURL(string: "http://www.acme.org.au/units"))	
		XCTAssertEqual(inst!.identifier![0].value!, "ClinLab")	
		XCTAssertEqual(inst!.name!, "Clinical Lab")	
		XCTAssertEqual(inst!.telecom![0].use!, "work")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "+1 555 234 1234")	
		XCTAssertEqual(inst!.telecom![1].use!, "work")	
		XCTAssertEqual(inst!.telecom![1].system!, "email")	
		XCTAssertEqual(inst!.telecom![1].value!, "contact@labs.acme.org")
	}
}
