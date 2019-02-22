//
//  ObservationDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRObservationDefinition = Models.ObservationDefinition
#else
import SwiftFHIR
typealias SwiftFHIRObservationDefinition = SwiftFHIR.ObservationDefinition
#endif


class ObservationDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRObservationDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRObservationDefinition {
		return try SwiftFHIRObservationDefinition(json: json)
	}
	
	func testObservationDefinition1() {
		do {
			let instance = try runObservationDefinition1()
			try runObservationDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ObservationDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservationDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservationDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observationdefinition-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "15074-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Glucose [Moles/volume] in Blood")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
