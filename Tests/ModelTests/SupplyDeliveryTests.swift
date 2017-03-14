//
//  SupplyDeliveryTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11599 on 2017-03-14.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSupplyDelivery = Models.SupplyDelivery
#else
import SwiftFHIR
typealias SwiftFHIRSupplyDelivery = SwiftFHIR.SupplyDelivery
#endif


class SupplyDeliveryTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSupplyDelivery {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSupplyDelivery {
		return try SwiftFHIRSupplyDelivery(json: json)
	}
	
	func testSupplyDelivery1() {
		do {
			let instance = try runSupplyDelivery1()
			try runSupplyDelivery1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SupplyDelivery successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSupplyDelivery1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSupplyDelivery {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "supplydelivery-example-pumpdelivery.json")
		
		XCTAssertEqual(inst.destination?.display, "Home care dept")
		XCTAssertEqual(inst.id, "pumpdelivery")
		XCTAssertEqual(inst.identifier?.assigner?.display, "SupplierDeliveryNr")
		XCTAssertEqual(inst.identifier?.value, "98398459409")
		XCTAssertEqual(inst.patient?.display, "Mr. Belpit")
		XCTAssertEqual(inst.receiver?[0].display, "Nurse Smith")
		XCTAssertEqual(inst.status, SupplyDeliveryStatus(rawValue: "in-progress")!)
		XCTAssertEqual(inst.supplier?.display, "ACME distribution")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSupplyDelivery2() {
		do {
			let instance = try runSupplyDelivery2()
			try runSupplyDelivery2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SupplyDelivery successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSupplyDelivery2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSupplyDelivery {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "supplydelivery-example.json")
		
		XCTAssertEqual(inst.basedOn?[0].reference, "SupplyRequest/simpleorder")
		XCTAssertEqual(inst.destination?.display, "Location 1")
		XCTAssertEqual(inst.id, "simpledelivery")
		XCTAssertEqual(inst.identifier?.value, "Order10284")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-12-31")
		XCTAssertEqual(inst.partOf?[0].display, "Central Supply Restock")
		XCTAssertEqual(inst.status, SupplyDeliveryStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.suppliedItem?.itemCodeableConcept?.coding?[0].code, "BlueTubes")
		XCTAssertEqual(inst.suppliedItem?.itemCodeableConcept?.coding?[0].display, "Blood collect tubes blue cap")
		XCTAssertEqual(inst.suppliedItem?.quantity?.value, "10")
		XCTAssertEqual(inst.supplier?.display, "Vendor1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "device")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/supply-item-type")
		XCTAssertEqual(inst.type?.text, "Blood collect tubes blue cap")
		
		return inst
	}
}
