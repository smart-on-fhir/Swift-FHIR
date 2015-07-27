//
//  LocationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-07-28.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class LocationTests: FHIRModelTestCase
{
	func instantiateFrom(filename filename: String) throws -> Location {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Location {
		let instance = Location(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testLocation1() throws {
		let instance = try testLocation1_impl()
		try testLocation1_impl(instance.asJSON())
	}
	
	func testLocation1_impl(json: FHIRJSON? = nil) throws -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ambulance.json")
		
		XCTAssertEqual(inst.description_fhir!, "Ambulance provided by Burgers University Medical Center")
		XCTAssertEqual(inst.id!, "amb")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.mode!, "kind")
		XCTAssertEqual(inst.name!, "BUMC Ambulance")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "ve")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Vehicle")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].use!, "mobile")
		XCTAssertEqual(inst.telecom![0].value!, "2329")
		XCTAssertEqual(inst.text!.div!, "<div>Mobile Clinic</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "AMB")
		XCTAssertEqual(inst.type!.coding![0].display!, "Ambulance")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation2() throws {
		let instance = try testLocation2_impl()
		try testLocation2_impl(instance.asJSON())
	}
	
	func testLocation2_impl(json: FHIRJSON? = nil) throws -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-patients-home.json")
		
		XCTAssertEqual(inst.description_fhir!, "Patient's Home")
		XCTAssertEqual(inst.id!, "ph")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.mode!, "kind")
		XCTAssertEqual(inst.name!, "Patient's Home")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "ho")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "House")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.div!, "<div>Patient's Home</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "PTRES")
		XCTAssertEqual(inst.type!.coding![0].display!, "Patient's Residence")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation3() throws {
		let instance = try testLocation3_impl()
		try testLocation3_impl(instance.asJSON())
	}
	
	func testLocation3_impl(json: FHIRJSON? = nil) throws -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-room.json")
		
		XCTAssertEqual(inst.description_fhir!, "Old South Wing, Neuro Radiology Operation Room 1 on second floor")
		XCTAssertEqual(inst.id!, "2")
		XCTAssertEqual(inst.identifier![0].value!, "B1-S.F2.1.00")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.mode!, "instance")
		XCTAssertEqual(inst.name!, "South Wing Neuro OR 1")
		XCTAssertEqual(inst.partOf!.reference!, "Location/1")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "ro")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Room")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status!, "suspended")
		XCTAssertEqual(inst.telecom![0].system!, "phone")
		XCTAssertEqual(inst.telecom![0].value!, "2329")
		XCTAssertEqual(inst.text!.div!, "<div>Burgers UMC, South Wing, second floor, Neuro Radiology Operation Room 1</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "RNEU")
		XCTAssertEqual(inst.type!.coding![0].display!, "Neuroradiology unit")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation4() throws {
		let instance = try testLocation4_impl()
		try testLocation4_impl(instance.asJSON())
	}
	
	func testLocation4_impl(json: FHIRJSON? = nil) throws -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example-ukpharmacy.json")
		
		XCTAssertEqual(inst.description_fhir!, "All Pharmacies in the United Kingdom covered by the National Pharmacy Association")
		XCTAssertEqual(inst.id!, "ukp")
		XCTAssertEqual(inst.mode!, "kind")
		XCTAssertEqual(inst.name!, "UK Pharmacies")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "jdn")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Jurisdiction")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString, "http://hl7.org/fhir/location-physical-type")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.div!, "<div>UK Pharmacies</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "PHARM")
		XCTAssertEqual(inst.type!.coding![0].display!, "Pharmacy")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString, "http://hl7.org/fhir/v3/RoleCode")
		
		return inst
	}
	
	func testLocation5() throws {
		let instance = try testLocation5_impl()
		try testLocation5_impl(instance.asJSON())
	}
	
	func testLocation5_impl(json: FHIRJSON? = nil) throws -> Location {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "location-example.json")
		
		XCTAssertEqual(inst.address!.city!, "Den Burg")
		XCTAssertEqual(inst.address!.country!, "NLD")
		XCTAssertEqual(inst.address!.line![0], "Galapagosweg 91, Building A")
		XCTAssertEqual(inst.address!.postalCode!, "9105 PZ")
		XCTAssertEqual(inst.address!.use!, "work")
		XCTAssertEqual(inst.description_fhir!, "Second floor of the Old South Wing, formerly in use by Psychiatry")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir![0].valueString!, "Burgers University Medical Center, South Wing, second floor")
		XCTAssertEqual(inst.extension_fhir![1].url!.absoluteString, "http://hl7.org/fhir/StructureDefinition/location-alias")
		XCTAssertEqual(inst.extension_fhir![1].valueString!, "BU MC, SW, F2")
		XCTAssertEqual(inst.id!, "1")
		XCTAssertEqual(inst.identifier![0].value!, "B1-S.F2")
		XCTAssertEqual(inst.managingOrganization!.reference!, "Organization/f001")
		XCTAssertEqual(inst.mode!, "instance")
		XCTAssertEqual(inst.name!, "South Wing, second floor")
		XCTAssertEqual(inst.physicalType!.coding![0].code!, "wi")
		XCTAssertEqual(inst.physicalType!.coding![0].display!, "Wing")
		XCTAssertEqual(inst.physicalType!.coding![0].system!.absoluteString, "http://hl7.org/fhir/location-physical-type")
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
