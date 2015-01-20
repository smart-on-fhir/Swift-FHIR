//
//  CommunicationTests.swift
//  CommunicationTests
//
//  Generated from FHIR 0.4.0.3958 on 2015-01-20.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CommunicationTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Communication? {
		let json = readJSONFile(filename)
		let instance = Communication(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCommunication1() {
		let inst = instantiateFrom("communication-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Communication instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://acme.org/messagetypes")
		XCTAssertEqual(inst!.category!.text!, "Alert")
		XCTAssertEqual(inst!.identifier![0].label!, "Paging System")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst!.identifier![0].value!, "2345678901")
		XCTAssertEqual(inst!.payload![0].contentString!, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst!.payload![1].contentReference!.reference!, "Observation/643666aa12f")
		XCTAssertEqual(inst!.recipient![0].reference!, "Practitioner/21")
		XCTAssertEqual(inst!.sender!.reference!, "Device/1234")
		XCTAssertEqual(inst!.sent!.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst!.status!, "completed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testCommunication2() {
		let inst = instantiateFrom("communication-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Communication instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://acme.org/messagetypes")
		XCTAssertEqual(inst!.category!.text!, "Alert")
		XCTAssertEqual(inst!.identifier![0].label!, "Paging System")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst!.identifier![0].value!, "2345678901")
		XCTAssertEqual(inst!.payload![0].contentString!, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst!.payload![1].contentReference!.reference!, "Observation/643666aa12f")
		XCTAssertEqual(inst!.recipient![0].reference!, "Practitioner/21")
		XCTAssertEqual(inst!.sender!.reference!, "Device/1234")
		XCTAssertEqual(inst!.sent!.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst!.status!, "completed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
	
	func testCommunication3() {
		let inst = instantiateFrom("communication-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Communication instance")
		
		XCTAssertEqual(inst!.category!.coding![0].code!, "Alert")
		XCTAssertEqual(inst!.category!.coding![0].system!.absoluteString!, "http://acme.org/messagetypes")
		XCTAssertEqual(inst!.category!.text!, "Alert")
		XCTAssertEqual(inst!.identifier![0].label!, "Paging System")
		XCTAssertEqual(inst!.identifier![0].system!.absoluteString!, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst!.identifier![0].value!, "2345678901")
		XCTAssertEqual(inst!.payload![0].contentString!, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst!.payload![1].contentReference!.reference!, "Observation/643666aa12f")
		XCTAssertEqual(inst!.recipient![0].reference!, "Practitioner/21")
		XCTAssertEqual(inst!.sender!.reference!, "Device/1234")
		XCTAssertEqual(inst!.sent!.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst!.status!, "completed")
		XCTAssertEqual(inst!.subject!.reference!, "Patient/1")
	}
}
