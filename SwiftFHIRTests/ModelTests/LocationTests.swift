//
//  LocationTests.swift
//  LocationTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class LocationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Location? {
		let json = readJSONFile(filename)
		let instance = Location(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testLocation1() {
		let inst = instantiateFrom("location-example-room.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
	
		XCTAssertEqual(inst!.description!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst!.identifier![0].value!, "B1-S.F2.1.00")
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.name!, "South Wing Neuro OR 1")
		XCTAssertEqual(inst!.partOf!.reference!, "Location/1")
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "ro")
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)
		XCTAssertEqual(inst!.status!, "suspended")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "2329")
		XCTAssertEqual(inst!.type!.coding![0].code!, "RNEU")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)
	}
	
	func testLocation2() {
		let inst = instantiateFrom("location-example-room.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
	
		XCTAssertEqual(inst!.description!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst!.identifier![0].value!, "B1-S.F2.1.00")
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.name!, "South Wing Neuro OR 1")
		XCTAssertEqual(inst!.partOf!.reference!, "Location/1")
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "ro")
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)
		XCTAssertEqual(inst!.status!, "suspended")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "2329")
		XCTAssertEqual(inst!.type!.coding![0].code!, "RNEU")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)
	}
	
	func testLocation3() {
		let inst = instantiateFrom("location-example-room.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
	
		XCTAssertEqual(inst!.description!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst!.identifier![0].value!, "B1-S.F2.1.00")
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.name!, "South Wing Neuro OR 1")
		XCTAssertEqual(inst!.partOf!.reference!, "Location/1")
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "ro")
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)
		XCTAssertEqual(inst!.status!, "suspended")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].value!, "2329")
		XCTAssertEqual(inst!.type!.coding![0].code!, "RNEU")
		XCTAssertEqual(inst!.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)
	}
	
	func testLocation4() {
		let inst = instantiateFrom("location-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
	
		XCTAssertEqual(inst!.address!.city!, "Den Burg")
		XCTAssertEqual(inst!.address!.country!, "NLD")
		XCTAssertEqual(inst!.address!.line![0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst!.address!.postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address!.use!, "work")
		XCTAssertEqual(inst!.description!, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst!.identifier![0].value!, "B1-S.F2")
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.name!, "South Wing, second floor")
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "wi")
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Wing")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)
		XCTAssertEqual(inst!.position!.altitude!, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst!.position!.latitude!, NSDecimalNumber(string: "52.37799399970903"))
		XCTAssertEqual(inst!.position!.longitude!, NSDecimalNumber(string: "4.844614000123024"))
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "2328")
		XCTAssertEqual(inst!.telecom![1].system!, "fax")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "2329")
		XCTAssertEqual(inst!.telecom![2].system!, "email")
		XCTAssertEqual(inst!.telecom![2].value!, "second wing admissions")
		XCTAssertEqual(inst!.telecom![3].system!, "url")
		XCTAssertEqual(inst!.telecom![3].use!, "work")
		XCTAssertEqual(inst!.telecom![3].value!, "http://sampleorg.com/southwing")
	}
	
	func testLocation5() {
		let inst = instantiateFrom("location-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
	
		XCTAssertEqual(inst!.address!.city!, "Den Burg")
		XCTAssertEqual(inst!.address!.country!, "NLD")
		XCTAssertEqual(inst!.address!.line![0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst!.address!.postalCode!, "9105 PZ")
		XCTAssertEqual(inst!.address!.use!, "work")
		XCTAssertEqual(inst!.description!, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst!.identifier![0].value!, "B1-S.F2")
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst!.name!, "South Wing, second floor")
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "wi")
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Wing")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)
		XCTAssertEqual(inst!.position!.altitude!, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst!.position!.latitude!, NSDecimalNumber(string: "52.37799399970903"))
		XCTAssertEqual(inst!.position!.longitude!, NSDecimalNumber(string: "4.844614000123024"))
		XCTAssertEqual(inst!.status!, "active")
		XCTAssertEqual(inst!.telecom![0].system!, "phone")
		XCTAssertEqual(inst!.telecom![0].use!, "work")
		XCTAssertEqual(inst!.telecom![0].value!, "2328")
		XCTAssertEqual(inst!.telecom![1].system!, "fax")
		XCTAssertEqual(inst!.telecom![1].use!, "work")
		XCTAssertEqual(inst!.telecom![1].value!, "2329")
		XCTAssertEqual(inst!.telecom![2].system!, "email")
		XCTAssertEqual(inst!.telecom![2].value!, "second wing admissions")
		XCTAssertEqual(inst!.telecom![3].system!, "url")
		XCTAssertEqual(inst!.telecom![3].use!, "work")
		XCTAssertEqual(inst!.telecom![3].value!, "http://sampleorg.com/southwing")
	}
}
