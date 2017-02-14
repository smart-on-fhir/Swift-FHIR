//
//  SupplyRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11157 on 2017-02-14.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "catalog-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSupplyRequest2() {
		do {
			let instance = try runSupplyRequest2()
			try runSupplyRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SupplyRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSupplyRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSupplyRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example-simpleorder.json")
		
		XCTAssertEqual(inst.date?.description, "2016-12-31")
		XCTAssertEqual(inst.id, "simpleorder")
		XCTAssertEqual(inst.identifier?.value, "Order10284")
		XCTAssertEqual(inst.kind?.coding?[0].code, "central")
		XCTAssertEqual(inst.kind?.coding?[0].display, "Central Stock Resupply")
		XCTAssertEqual(inst.orderedItem?.itemCodeableConcept?.coding?[0].code, "BlueTubes")
		XCTAssertEqual(inst.orderedItem?.itemCodeableConcept?.coding?[0].display, "Blood collect tubes blue cap")
		XCTAssertEqual(inst.orderedItem?.quantity?.value, "10")
		XCTAssertEqual(inst.patient?.display, "J. Wellington Wimpy")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].code, "stock_low")
		XCTAssertEqual(inst.reasonCodeableConcept?.coding?[0].display, "Refill due to low stock")
		XCTAssertEqual(inst.source?.display, "Purchasing Dept")
		XCTAssertEqual(inst.status, SupplyRequestStatus(rawValue: "requested")!)
		XCTAssertEqual(inst.supplier?[0].display, "Vendor1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.when?.code?.coding?[0].code, "asap")
		XCTAssertEqual(inst.when?.code?.coding?[0].display, "Immediately")
		
		return inst
	}
	
	func testSupplyRequest3() {
		do {
			let instance = try runSupplyRequest3()
			try runSupplyRequest3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SupplyRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSupplyRequest3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSupplyRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "supplyrequest-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
