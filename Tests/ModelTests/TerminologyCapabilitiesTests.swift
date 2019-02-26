//
//  TerminologyCapabilitiesTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-26.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRTerminologyCapabilities = Models.TerminologyCapabilities
#else
import SwiftFHIR
typealias SwiftFHIRTerminologyCapabilities = SwiftFHIR.TerminologyCapabilities
#endif


class TerminologyCapabilitiesTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRTerminologyCapabilities {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRTerminologyCapabilities {
		return try SwiftFHIRTerminologyCapabilities(json: json)
	}
	
	func testTerminologyCapabilities1() {
		do {
			let instance = try runTerminologyCapabilities1()
			try runTerminologyCapabilities1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test TerminologyCapabilities successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runTerminologyCapabilities1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRTerminologyCapabilities {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "terminologycapabilities-example.json")
		
		XCTAssertEqual(inst.codeSearch, CodeSearchSupport(rawValue: "explicit")!)
		XCTAssertEqual(inst.contact?[0].name, "System Administrator")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "wile@acme.org")
		XCTAssertEqual(inst.date?.description, "2012-01-04")
		XCTAssertEqual(inst.description_fhir, "This is the FHIR capability statement for the main EHR at ACME for the private interface - it does not describe the public interface")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.implementation?.description_fhir, "Acme Terminology Server")
		XCTAssertEqual(inst.implementation?.url?.absoluteString, "http://example.org/tx")
		XCTAssertEqual(inst.kind, CapabilityStatementKind(rawValue: "instance")!)
		XCTAssertEqual(inst.name, "ACME-EHR")
		XCTAssertEqual(inst.publisher, "ACME Corporation")
		XCTAssertEqual(inst.software?.name, "TxServer")
		XCTAssertEqual(inst.software?.version, "0.1.2")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ACME EHR capability statement")
		XCTAssertEqual(inst.url?.absoluteString, "urn:uuid:68D043B5-9ECF-4559-A57A-396E0D452311")
		XCTAssertEqual(inst.version, "20130510")
		
		return inst
	}
}
