//
//  LocationTests.swift
//  LocationTests
//
//  Generated from FHIR 0.0.82.2943 on 2014-10-26.
//  2014, SMART Platforms.
//

import Cocoa
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
		let inst = instantiateFrom("location-example-room.json")
		XCTAssertNotNil(inst, "Must have instantiated a Location instance")
		
		XCTAssertEqual(inst!.description!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")	
		XCTAssertEqual(inst!.identifier!.value!, "B1-S.F2.1.00")	
		XCTAssertEqual(inst!.managingOrganization!.reference!, "Organization/f001")	
		XCTAssertEqual(inst!.name!, "South Wing Neuro OR 1")	
		XCTAssertEqual(inst!.partOf!.reference!, "Location/1")	
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "ro")	
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type")!)	
		XCTAssertEqual(inst!.status!, "suspended")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "2329")	
		XCTAssertEqual(inst!.text!.div!, "<div>Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "RNEU")	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode")!)
	}
}
