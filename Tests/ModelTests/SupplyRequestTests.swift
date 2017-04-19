//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
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
		XCTAssertEqual(inst.identifier?.value, "Order10284")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-12-31")
		XCTAssertEqual(inst.orderedItem?.itemCodeableConcept?.coding?[0].code, "BlueTubes")
		XCTAssertEqual(inst.orderedItem?.itemCodeableConcept?.coding?[0].display, "Blood collect tubes blue cap")
		XCTAssertEqual(inst.orderedItem?.quantity?.value, "10")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "asap")!)
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "stock_low")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "Refill due to low stock")
		XCTAssertEqual(inst.requester?.agent?.display, "Henry Seven")
		XCTAssertEqual(inst.requester?.onBehalfOf?.display, "Purchasing Dept")
		XCTAssertEqual(inst.status, SupplyRequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplier?[0].display, "Vendor1")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
