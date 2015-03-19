//
//  LocationTests.swift
//  LocationTests
//
//  Generated from FHIR 0.4.0.4746 on 2015-03-19.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class LocationTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Location {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Location {
		let instance = Location(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testLocation1() {
		let instance = testLocation1_impl()
		testLocation1_impl(json: instance.asJSON())
	}
	
	func testLocation1_impl(json: JSONDictionary? = nil) -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "location-example-room.json")
		
		XCTAssertEqual(inst.description_fhir!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst.id!, "2")
		XCTAssertEqual(inst.identifier![0].value!, "B1-S.F2.1.00")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.name!, "South Wing Neuro OR 1")
		XCTAssertEqual(inst.partOf!.reference!, "Location/1")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "ro")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status!, "suspended")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "2329")
		XCTAssertEqual(inst.text!.div!, "<div>Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "RNEU")
		XCTAssertEqual(inst.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation2() {
		let instance = testLocation2_impl()
		testLocation2_impl(json: instance.asJSON())
	}
	
	func testLocation2_impl(json: JSONDictionary? = nil) -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "location-example.json")
		
		XCTAssertEqual(inst.address!.city!, "Den Burg")
		XCTAssertEqual(inst.address!.country!, "NLD")
		XCTAssertEqual(inst.address!.line![0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst.address!.postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address!.use!, "work")
		XCTAssertEqual(inst.description_fhir!, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir![0].valueString!, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "BU MC, SW, F2")
		XCTAssertEqual(inst.id!, "1")
		XCTAssertEqual(inst.identifier![0].value!, "B1-S.F2")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.name!, "South Wing, second floor")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "wi")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Wing")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.position!.altitude!, NSDecimalNumber(string: "0"))
		XCTAssertEqual(inst.position!.latitude!, NSDecimalNumber(string: "42.25475478"))
		XCTAssertEqual(inst.position!.longitude!, NSDecimalNumber(string: "-83.6945691"))
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "work")
		XCTAssertEqual(inst.telecom![0].value!, "2328")
		XCTAssertEqual(inst.telecom![1].system!, "fax")
		XCTAssertEqual(inst.telecom![1].use!, "work")
		XCTAssertEqual(inst.telecom![1].value!, "2329")
		XCTAssertEqual(inst.telecom![2].system!, "email")
		XCTAssertEqual(inst.telecom![2].value!, "second wing admissions")
		XCTAssertEqual(inst.telecom![3].system!, "url")
		XCTAssertEqual(inst.telecom![3].use!, "work")
		XCTAssertEqual(inst.telecom![3].value!, "http://sampleorg.com/southwing")
		XCTAssertEqual(inst.text!.div!, "<div>Burgers UMC, South Wing, second floor</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
