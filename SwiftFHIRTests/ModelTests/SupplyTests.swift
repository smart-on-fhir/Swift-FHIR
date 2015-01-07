//
//  SupplyTests.swift
//  SupplyTests
//
//  Generated from FHIR 0.4.0.3926 on 2015-01-07.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class SupplyTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Supply? {
		let json = readJSONFile(filename)
		let instance = Supply(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testSupply1() {
		let inst = instantiateFrom("supply-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Supply instance")
	
		XCTAssertEqual(inst!.dispense![0].destination!.display!, "Neuro Radiology Operation Room ")
		XCTAssertEqual(inst!.dispense![0].destination!.reference!, "Location/2")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.dispense![0].identifier!.system!, NSURL(string: "MM-Supply-Application")!)
		XCTAssertEqual(inst!.dispense![0].identifier!.use!, "usual")
		XCTAssertEqual(inst!.dispense![0].identifier!.value!, "12345")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "{each}")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org/trac/")!)
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "EA")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].receiver![0].display!, "Carla Espinosa")
		XCTAssertEqual(inst!.dispense![0].receiver![0].reference!, "Practitioner/f204")
		XCTAssertEqual(inst!.dispense![0].status!, "dispensed")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.dispense![0].supplier!.display!, "Rob van den Berk ")
		XCTAssertEqual(inst!.dispense![0].supplier!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].code!, "device")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].display!, "Device")
		XCTAssertTrue(inst!.dispense![0].type!.coding![0].primary!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-item-type")!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.display!, "supply-item")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-item")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.start!, NSDate.dateFromISOString("2014-07-24T01:23:55-07:00")!)
		XCTAssertEqual(inst!.identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "OR-Supply-Application")!)
		XCTAssertEqual(inst!.identifier!.value!, "23455")
		XCTAssertEqual(inst!.kind!.coding![0].code!, "central")
		XCTAssertEqual(inst!.kind!.coding![0].display!, "Central Supply")
		XCTAssertTrue(inst!.kind!.coding![0].primary!)
		XCTAssertEqual(inst!.kind!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-type")!)
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.display!, "supply-type")
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-type")
		XCTAssertEqual(inst!.orderedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.orderedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.status!, "received")
	}
	
	func testSupply2() {
		let inst = instantiateFrom("supply-example1.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Supply instance")
	
		XCTAssertEqual(inst!.dispense![0].destination!.display!, "Neuro Radiology Operation Room ")
		XCTAssertEqual(inst!.dispense![0].destination!.reference!, "Location/2")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.dispense![0].identifier!.system!, NSURL(string: "MM-Supply-Application")!)
		XCTAssertEqual(inst!.dispense![0].identifier!.use!, "usual")
		XCTAssertEqual(inst!.dispense![0].identifier!.value!, "12345")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "{each}")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org/trac/")!)
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "EA")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].receiver![0].display!, "Carla Espinosa")
		XCTAssertEqual(inst!.dispense![0].receiver![0].reference!, "Practitioner/f204")
		XCTAssertEqual(inst!.dispense![0].status!, "dispensed")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.dispense![0].supplier!.display!, "Rob van den Berk ")
		XCTAssertEqual(inst!.dispense![0].supplier!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].code!, "device")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].display!, "Device")
		XCTAssertTrue(inst!.dispense![0].type!.coding![0].primary!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-item-type")!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.display!, "supply-item")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-item")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.start!, NSDate.dateFromISOString("2014-07-24T01:23:55-07:00")!)
		XCTAssertEqual(inst!.identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "OR-Supply-Application")!)
		XCTAssertEqual(inst!.identifier!.value!, "23455")
		XCTAssertEqual(inst!.kind!.coding![0].code!, "central")
		XCTAssertEqual(inst!.kind!.coding![0].display!, "Central Supply")
		XCTAssertTrue(inst!.kind!.coding![0].primary!)
		XCTAssertEqual(inst!.kind!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-type")!)
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.display!, "supply-type")
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-type")
		XCTAssertEqual(inst!.orderedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.orderedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.status!, "received")
	}
	
	func testSupply3() {
		let inst = instantiateFrom("supply-example1.json")
		XCTAssertNotNil(inst, "Must have instantiated a Supply instance")
	
		XCTAssertEqual(inst!.dispense![0].destination!.display!, "Neuro Radiology Operation Room ")
		XCTAssertEqual(inst!.dispense![0].destination!.reference!, "Location/2")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.dispense![0].identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.dispense![0].identifier!.system!, NSURL(string: "MM-Supply-Application")!)
		XCTAssertEqual(inst!.dispense![0].identifier!.use!, "usual")
		XCTAssertEqual(inst!.dispense![0].identifier!.value!, "12345")
		XCTAssertEqual(inst!.dispense![0].quantity!.code!, "{each}")
		XCTAssertEqual(inst!.dispense![0].quantity!.system!, NSURL(string: "http://unitsofmeasure.org/trac/")!)
		XCTAssertEqual(inst!.dispense![0].quantity!.units!, "EA")
		XCTAssertEqual(inst!.dispense![0].quantity!.value!, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst!.dispense![0].receiver![0].display!, "Carla Espinosa")
		XCTAssertEqual(inst!.dispense![0].receiver![0].reference!, "Practitioner/f204")
		XCTAssertEqual(inst!.dispense![0].status!, "dispensed")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.dispense![0].suppliedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.dispense![0].supplier!.display!, "Rob van den Berk ")
		XCTAssertEqual(inst!.dispense![0].supplier!.reference!, "Practitioner/f006")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].code!, "device")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].display!, "Device")
		XCTAssertTrue(inst!.dispense![0].type!.coding![0].primary!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-item-type")!)
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.display!, "supply-item")
		XCTAssertEqual(inst!.dispense![0].type!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-item")
		XCTAssertEqual(inst!.dispense![0].whenHandedOver!.start!, NSDate.dateFromISOString("2014-07-24T01:23:55-07:00")!)
		XCTAssertEqual(inst!.identifier!.assigner!.display!, "Good Health Clinic")
		XCTAssertEqual(inst!.identifier!.assigner!.reference!, "Organization/2.16.840.1.113883.19.5")
		XCTAssertEqual(inst!.identifier!.system!, NSURL(string: "OR-Supply-Application")!)
		XCTAssertEqual(inst!.identifier!.value!, "23455")
		XCTAssertEqual(inst!.kind!.coding![0].code!, "central")
		XCTAssertEqual(inst!.kind!.coding![0].display!, "Central Supply")
		XCTAssertTrue(inst!.kind!.coding![0].primary!)
		XCTAssertEqual(inst!.kind!.coding![0].system!, NSURL(string: "http://hl7.org/fhir/supply-type")!)
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.display!, "supply-type")
		XCTAssertEqual(inst!.kind!.coding![0].valueSet!.reference!, "http://hl7.org/fhir/vs/supply-type")
		XCTAssertEqual(inst!.orderedItem!.display!, "Feeding tube")
		XCTAssertEqual(inst!.orderedItem!.reference!, "Device/f001")
		XCTAssertEqual(inst!.status!, "received")
	}
}
