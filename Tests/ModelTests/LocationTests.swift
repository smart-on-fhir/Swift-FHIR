//
//  LocationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRLocation = Models.Location
#else
import SwiftFHIR
typealias SwiftFHIRLocation = SwiftFHIR.Location
#endif


class LocationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRLocation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRLocation {
		return try SwiftFHIRLocation(json: json)
	}
	
	func testLocation1() {
		do {
			let instance = try runLocation1()
			try runLocation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ambulance.json")
		
		XCTAssertEqual(inst.description_fhir, "Ambulance provided by Burgers University Medical Center")
		XCTAssertEqual(inst.id, "amb")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "kind")!)
		XCTAssertEqual(inst.name, "BUMC Ambulance")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ve")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Vehicle")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "mobile")!)
		XCTAssertEqual(inst.telecom?[0].value, "2329")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Mobile Clinic</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "AMB")
		XCTAssertEqual(inst.type?.coding?[0].display, "Ambulance")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation2() {
		do {
			let instance = try runLocation2()
			try runLocation2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-hl7hq.json")
		
		XCTAssertEqual(inst.address?.city, "Ann Arbor")
		XCTAssertEqual(inst.address?.country, "USA")
		XCTAssertEqual(inst.address?.line?[0], "3300 Washtenaw Avenue, Suite 227")
		XCTAssertEqual(inst.address?.postalCode, "48104")
		XCTAssertEqual(inst.address?.state, "MI")
		XCTAssertEqual(inst.description_fhir, "HL7 Headquarters")
		XCTAssertEqual(inst.id, "hl7")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "instance")!)
		XCTAssertEqual(inst.name, "Health Level Seven International")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "bu")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Building")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.position?.latitude, "-83.69471")
		XCTAssertEqual(inst.position?.longitude, "42.2565")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].value, "(+1) 734-677-7777")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[1].value, "(+1) 734-677-6622")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[2].value, "hq@HL7.org")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "SLEEP")
		XCTAssertEqual(inst.type?.coding?[0].display, "Sleep disorders unit")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation3() {
		do {
			let instance = try runLocation3()
			try runLocation3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-patients-home.json")
		
		XCTAssertEqual(inst.description_fhir, "Patient's Home")
		XCTAssertEqual(inst.id, "ph")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "kind")!)
		XCTAssertEqual(inst.name, "Patient's Home")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ho")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "House")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient's Home</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "PTRES")
		XCTAssertEqual(inst.type?.coding?[0].display, "Patient's Residence")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation4() {
		do {
			let instance = try runLocation4()
			try runLocation4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-room.json")
		
		XCTAssertEqual(inst.alias?[0], "South Wing OR 5")
		XCTAssertEqual(inst.alias?[1], "Main Wing OR 2")
		XCTAssertEqual(inst.description_fhir, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.identifier?[0].value, "B1-S.F2.1.00")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "instance")!)
		XCTAssertEqual(inst.name, "South Wing Neuro OR 1")
		XCTAssertEqual(inst.partOf?.reference, "Location/1")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ro")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Room")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "suspended")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].value, "2329")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "RNEU")
		XCTAssertEqual(inst.type?.coding?[0].display, "Neuroradiology unit")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation5() {
		do {
			let instance = try runLocation5()
			try runLocation5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ukpharmacy.json")
		
		XCTAssertEqual(inst.description_fhir, "All Pharmacies in the United Kingdom covered by the National Pharmacy Association")
		XCTAssertEqual(inst.id, "ukp")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "kind")!)
		XCTAssertEqual(inst.name, "UK Pharmacies")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "jdn")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Jurisdiction")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">UK Pharmacies</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "PHARM")
		XCTAssertEqual(inst.type?.coding?[0].display, "Pharmacy")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation6() {
		do {
			let instance = try runLocation6()
			try runLocation6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLocation6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLocation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example.json")
		
		XCTAssertEqual(inst.address?.city, "Den Burg")
		XCTAssertEqual(inst.address?.country, "NLD")
		XCTAssertEqual(inst.address?.line?[0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst.address?.postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?.use, AddressUse(rawValue: "work")!)
		XCTAssertEqual(inst.description_fhir, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst.endpoint?[0].reference, "Endpoint/example")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir?[1].valueString, "BU MC, SW, F2")
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].value, "B1-S.F2")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, LocationMode(rawValue: "instance")!)
		XCTAssertEqual(inst.name, "South Wing, second floor")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "wi")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Wing")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.position?.altitude, "0")
		XCTAssertEqual(inst.position?.latitude, "42.25475478")
		XCTAssertEqual(inst.position?.longitude, "-83.6945691")
		XCTAssertEqual(inst.status, LocationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[0].value, "2328")
		XCTAssertEqual(inst.telecom?[1].system, ContactPointSystem(rawValue: "fax")!)
		XCTAssertEqual(inst.telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[1].value, "2329")
		XCTAssertEqual(inst.telecom?[2].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.telecom?[2].value, "second wing admissions")
		XCTAssertEqual(inst.telecom?[3].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.telecom?[3].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.telecom?[3].value, "http://sampleorg.com/southwing")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Burgers UMC, South Wing, second floor</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
