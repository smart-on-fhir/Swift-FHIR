//
//  CommunicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.0.1.7108 on 2015-09-23.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class CommunicationTests: XCTestCase
{
	func instantiateFrom(filename filename: String) throws -> Communication {
		return instantiateFrom(json: try readJSONFile(filename)!)
	}
	
	func instantiateFrom(json json: FHIRJSON) -> Communication {
		let instance = Communication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunication1() {
		let instance = try? runCommunication1()
		XCTAssertNotNil(instance, "Must instantiate Communication")
		try! runCommunication1(instance!.asJSON())
	}
	
	func runCommunication1(json: FHIRJSON? = nil) throws -> Communication {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example.json")
		
		XCTAssertEqual(inst.category!.coding![0].code!, "Alert")
		XCTAssertEqual(inst.category!.coding![0].system!.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.category!.text!, "Alert")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier![0].type!.text!, "Paging System")
		XCTAssertEqual(inst.identifier![0].value!, "2345678901")
		XCTAssertEqual(inst.payload![0].contentString!, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst.payload![1].contentReference!.reference!, "Observation/643666aa12f")
		XCTAssertEqual(inst.recipient![0].reference!, "Practitioner/21")
		XCTAssertEqual(inst.sender!.reference!, "Device/f001")
		XCTAssertEqual(inst.sent!.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.subject!.reference!, "Patient/1")
		XCTAssertEqual(inst.text!.div!, "<div>Patient has very high serum potassium</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
