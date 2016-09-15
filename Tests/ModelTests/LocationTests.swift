//
//  LocationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.2.7202 on 2016-09-16.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class LocationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Location {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.Location {
		let instance = SwiftFHIR.Location(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testLocation1() {
		do {
			let instance = try runLocation1()
			try runLocation1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ambulance.json")
		
		XCTAssertEqual(inst.description_fhir, "Ambulance provided by Burgers University Medical Center")
		XCTAssertEqual(inst.id, "amb")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, "kind")
		XCTAssertEqual(inst.name, "BUMC Ambulance")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ve")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Vehicle")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "mobile")
		XCTAssertEqual(inst.telecom?[0].value, "2329")
		XCTAssertEqual(inst.text?.div, "<div>Mobile Clinic</div>")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-hl7hq.json")
		
		XCTAssertEqual(inst.address?.city, "Ann Arbor")
		XCTAssertEqual(inst.address?.country, "USA")
		XCTAssertEqual(inst.address?.line?[0], "3300 Washtenaw Avenue, Suite 227")
		XCTAssertEqual(inst.address?.postalCode, "48104")
		XCTAssertEqual(inst.address?.state, "MI")
		XCTAssertEqual(inst.description_fhir, "HL7 Headquarters")
		XCTAssertEqual(inst.id, "hl7")
		XCTAssertEqual(inst.mode, "instance")
		XCTAssertEqual(inst.name, "Health Level Seven International")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "bu")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Building")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.position?.latitude, NSDecimalNumber(string: "-83.69471"))
		XCTAssertEqual(inst.position?.longitude, NSDecimalNumber(string: "42.2565"))
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "(+1) 734-677-7777")
		XCTAssertEqual(inst.telecom?[1].system, "fax")
		XCTAssertEqual(inst.telecom?[1].value, "(+1) 734-677-6622")
		XCTAssertEqual(inst.telecom?[2].system, "email")
		XCTAssertEqual(inst.telecom?[2].value, "hq@HL7.org")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-patients-home.json")
		
		XCTAssertEqual(inst.description_fhir, "Patient's Home")
		XCTAssertEqual(inst.id, "ph")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, "kind")
		XCTAssertEqual(inst.name, "Patient's Home")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ho")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "House")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div>Patient's Home</div>")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation4(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-room.json")
		
		XCTAssertEqual(inst.description_fhir, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.identifier?[0].value, "B1-S.F2.1.00")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, "instance")
		XCTAssertEqual(inst.name, "South Wing Neuro OR 1")
		XCTAssertEqual(inst.partOf?.reference, "Location/1")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "ro")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Room")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, "suspended")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].value, "2329")
		XCTAssertEqual(inst.text?.div, "<div>Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation5(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ukpharmacy.json")
		
		XCTAssertEqual(inst.description_fhir, "All Pharmacies in the United Kingdom covered by the National Pharmacy Association")
		XCTAssertEqual(inst.id, "ukp")
		XCTAssertEqual(inst.mode, "kind")
		XCTAssertEqual(inst.name, "UK Pharmacies")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "jdn")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Jurisdiction")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div>UK Pharmacies</div>")
		XCTAssertEqual(inst.text?.status, "generated")
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
		catch {
			XCTAssertTrue(false, "Must instantiate and test Location successfully, but threw")
		}
	}
	
	@discardableResult
	func runLocation6(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example.json")
		
		XCTAssertEqual(inst.address?.city, "Den Burg")
		XCTAssertEqual(inst.address?.country, "NLD")
		XCTAssertEqual(inst.address?.line?[0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst.address?.postalCode, "9105 PZ")
		XCTAssertEqual(inst.address?.use, "work")
		XCTAssertEqual(inst.description_fhir, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir?[0].valueString, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.extension_fhir?[1].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir?[1].valueString, "BU MC, SW, F2")
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].value, "B1-S.F2")
		XCTAssertEqual(inst.managingOrganization?.reference, "Organization/f001")
		XCTAssertEqual(inst.mode, "instance")
		XCTAssertEqual(inst.name, "South Wing, second floor")
		XCTAssertEqual(inst.physicalType?.coding?[0].code, "wi")
		XCTAssertEqual(inst.physicalType?.coding?[0].display, "Wing")
		XCTAssertEqual(inst.physicalType?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.position?.altitude, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.position?.latitude, NSDecimalNumber(string: "42.25475478"))
		XCTAssertEqual(inst.position?.longitude, NSDecimalNumber(string: "-83.6945691"))
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.telecom?[0].system, "phone")
		XCTAssertEqual(inst.telecom?[0].use, "work")
		XCTAssertEqual(inst.telecom?[0].value, "2328")
		XCTAssertEqual(inst.telecom?[1].system, "fax")
		XCTAssertEqual(inst.telecom?[1].use, "work")
		XCTAssertEqual(inst.telecom?[1].value, "2329")
		XCTAssertEqual(inst.telecom?[2].system, "email")
		XCTAssertEqual(inst.telecom?[2].value, "second wing admissions")
		XCTAssertEqual(inst.telecom?[3].system, "other")
		XCTAssertEqual(inst.telecom?[3].use, "work")
		XCTAssertEqual(inst.telecom?[3].value, "http://sampleorg.com/southwing")
		XCTAssertEqual(inst.text?.div, "<div>Burgers UMC, South Wing, second floor</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
