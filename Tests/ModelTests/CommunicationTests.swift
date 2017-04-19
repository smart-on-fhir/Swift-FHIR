//
//  CommunicationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11828 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCommunication = Models.Communication
#else
import SwiftFHIR
typealias SwiftFHIRCommunication = SwiftFHIR.Communication
#endif


class CommunicationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCommunication {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCommunication {
		return try SwiftFHIRCommunication(json: json)
	}
	
	func testCommunication1() {
		do {
			let instance = try runCommunication1()
			try runCommunication1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCommunication1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCommunication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example-fm-attachment.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "SolicitedAttachment")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.id, "fm-attachment")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.providerco.com/communication")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.creation?.description, "2010-02-01T11:50:23-05:00")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.data, Base64Binary(value: "SGVsbG8="))
		XCTAssertEqual(inst.payload?[0].contentAttachment?.title, "accident notes 20100201.pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.creation?.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.hash, Base64Binary(value: "SGVsbG8gdGhlcmU="))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.size, 104274)
		XCTAssertEqual(inst.payload?[1].contentAttachment?.url?.absoluteString, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst.recipient?[0].identifier?.system?.absoluteString, "http://www.jurisdiction.com/insurer")
		XCTAssertEqual(inst.recipient?[0].identifier?.value, "123456")
		XCTAssertEqual(inst.sender?.identifier?.system?.absoluteString, "http://www.jurisdiction.com/provideroffices")
		XCTAssertEqual(inst.sender?.identifier?.value, "3456")
		XCTAssertEqual(inst.sent?.description, "2016-06-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachment which is unsolicited</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.topic?[0].identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.topic?[0].identifier?.value, "12345")
		XCTAssertEqual(inst.topic?[1].identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/claimresponse")
		XCTAssertEqual(inst.topic?[1].identifier?.value, "R3500")
		
		return inst
	}
	
	func testCommunication2() {
		do {
			let instance = try runCommunication2()
			try runCommunication2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCommunication2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCommunication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example-fm-solicited-attachment.json")
		
		XCTAssertEqual(inst.basedOn?[0].reference, "#request")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "SolicitedAttachment")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.contained?[0].id, "provider")
		XCTAssertEqual(inst.contained?[1].id, "payor")
		XCTAssertEqual(inst.contained?[2].id, "request")
		XCTAssertEqual(inst.id, "fm-solicited")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.providerco.com/communication")
		XCTAssertEqual(inst.identifier?[0].value, "12345")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.creation?.description, "2010-02-01T11:50:23-05:00")
		XCTAssertEqual(inst.payload?[0].contentAttachment?.data, Base64Binary(value: "SGVsbG8="))
		XCTAssertEqual(inst.payload?[0].contentAttachment?.title, "accident notes 20100201.pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.contentType, "application/pdf")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.creation?.description, "2010-02-01T10:57:34+01:00")
		XCTAssertEqual(inst.payload?[1].contentAttachment?.hash, Base64Binary(value: "SGVsbG8gdGhlcmU="))
		XCTAssertEqual(inst.payload?[1].contentAttachment?.size, 104274)
		XCTAssertEqual(inst.payload?[1].contentAttachment?.url?.absoluteString, "http://happyvalley.com/docs/AB12345")
		XCTAssertEqual(inst.recipient?[0].reference, "#payor")
		XCTAssertEqual(inst.sender?.reference, "#provider")
		XCTAssertEqual(inst.sent?.description, "2016-06-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/1")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Attachment in response to a Request</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCommunication3() {
		do {
			let instance = try runCommunication3()
			try runCommunication3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Communication successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCommunication3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCommunication {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communication-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "Alert")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.category?[0].text, "Alert")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.definition?[0].display, "Hyperkalemia")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:oid:1.3.4.5.6.7")
		XCTAssertEqual(inst.identifier?[0].type?.text, "Paging System")
		XCTAssertEqual(inst.identifier?[0].value, "2345678901")
		XCTAssertEqual(inst.medium?[0].coding?[0].code, "WRITTEN")
		XCTAssertEqual(inst.medium?[0].coding?[0].display, "written")
		XCTAssertEqual(inst.medium?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationMode")
		XCTAssertEqual(inst.medium?[0].text, "written")
		XCTAssertEqual(inst.partOf?[0].display, "Serum Potassium Observation")
		XCTAssertEqual(inst.payload?[0].contentString, "Patient 1 has a very high serum potassium value (7.2 mmol/L on 2014-Dec-12 at 5:55 pm)")
		XCTAssertEqual(inst.payload?[1].contentReference?.display, "Serum Potassium Observation")
		XCTAssertEqual(inst.received?.description, "2014-12-12T18:01:11-08:00")
		XCTAssertEqual(inst.recipient?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.sender?.reference, "Device/f001")
		XCTAssertEqual(inst.sent?.description, "2014-12-12T18:01:10-08:00")
		XCTAssertEqual(inst.status, EventStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient has very high serum potassium</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
