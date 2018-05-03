//
//  UserSessionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.3.0.13671 on 2018-05-03.
//  2018, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRUserSession = Models.UserSession
#else
import SwiftFHIR
typealias SwiftFHIRUserSession = SwiftFHIR.UserSession
#endif


class UserSessionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRUserSession {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRUserSession {
		return try SwiftFHIRUserSession(json: json)
	}
	
	func testUserSession1() {
		do {
			let instance = try runUserSession1()
			try runUserSession1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test UserSession successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runUserSession1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRUserSession {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "usersession-example.json")
		
		XCTAssertEqual(inst.context?[0].type, "task")
		XCTAssertEqual(inst.context?[0].valueCodeableConcept?.text, "context-value")
		XCTAssertEqual(inst.created?.description, "2017-11-15T17:31:00Z")
		XCTAssertEqual(inst.focus?[0].reference, "Patient/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.value, "usersession-1")
		XCTAssertEqual(inst.status?.code, UserSessionStatusEnum(rawValue: "active")!)
		XCTAssertEqual(inst.status?.source, UserSessionStatusSource(rawValue: "system")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example UserSession.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.user?.reference, "Practitioner/1")
		XCTAssertEqual(inst.workstation?.value, "computer-name")
		
		return inst
	}
}
