//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-05-17.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSupplyRequest = Models.SupplyRequest
#else
import SwiftFHIR
typealias SwiftFHIRSupplyRequest = SwiftFHIR.SupplyRequest
#endif


class SupplyRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSupplyRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSupplyRequest {
		return try SwiftFHIRSupplyRequest(json: json)
	}
	
	func testSupplyRequest1() {
		do {
			let instance = try runSupplyRequest1()
			try runSupplyRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SupplyRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSupplyRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSupplyRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example-simpleorder.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-12-31")
		XCTAssertEqual(inst.category?.coding?[0].code, "central")
		XCTAssertEqual(inst.category?.coding?[0].display, "Central Stock Resupply")
		XCTAssertEqual(inst.deliverFrom?.display, "Location 1")
		XCTAssertEqual(inst.deliverTo?.display, "GoodHealth Clinic Receiving")
		XCTAssertEqual(inst.id, "simpleorder")
		XCTAssertEqual(inst.identifier?[0].value, "Order10284")
		XCTAssertEqual(inst.itemCodeableConcept?.coding?[0].code, "BlueTubes")
		XCTAssertEqual(inst.itemCodeableConcept?.coding?[0].display, "Blood collect tubes blue cap")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-12-31")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "asap")!)
		XCTAssertEqual(inst.quantity?.value, "10")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].code, "stock_low")
		XCTAssertEqual(inst.reasonCode?[0].coding?[0].display, "Refill due to low stock")
		XCTAssertEqual(inst.requester?.display, "Henry Seven")
		XCTAssertEqual(inst.status, SupplyRequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplier?[0].display, "Vendor1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
