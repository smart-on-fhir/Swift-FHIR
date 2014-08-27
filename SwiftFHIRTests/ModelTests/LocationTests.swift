//
//  LocationTests.swift
//  LocationTests
//
//  Generated from FHIR 0.0.81.2382 on 2014-08-27.
//  Copyright (c) 2014 SMART Platforms. All rights reserved.
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
		
		XCTAssertEqual(inst!.status!, "suspended")	
		XCTAssertEqual(inst!.physicalType!.coding![0].code!, "ro")	
		XCTAssertEqual(inst!.physicalType!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/location-physical-type"))	
		XCTAssertEqual(inst!.physicalType!.coding![0].display!, "Room")	
		XCTAssertEqual(inst!.name!, "South Wing Neuro OR 1")	
		XCTAssertEqual(inst!.text!.status!, "generated")	
		XCTAssertEqual(inst!.text!.div!, "<div>Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")	
		XCTAssertEqual(inst!.telecom![0].system!, "phone")	
		XCTAssertEqual(inst!.telecom![0].value!, "2329")	
		XCTAssertEqual(inst!.identifier!.value!, "B1-S.F2.1.00")	
		XCTAssertEqual(inst!.type!.coding![0].code!, "RNEU")	
		XCTAssertEqual(inst!.type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/v3/RoleCode"))	
		XCTAssertEqual(inst!.type!.coding![0].display!, "Neuroradiology unit")	
		XCTAssertEqual(inst!.description!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
	}
}
