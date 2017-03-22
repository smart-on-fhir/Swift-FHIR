//
//  ImplementationGuideTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImplementationGuide = Models.ImplementationGuide
#else
import SwiftFHIR
typealias SwiftFHIRImplementationGuide = SwiftFHIR.ImplementationGuide
#endif


class ImplementationGuideTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImplementationGuide {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImplementationGuide {
		return try SwiftFHIRImplementationGuide(json: json)
	}
	
	func testImplementationGuide1() {
		do {
			let instance = try runImplementationGuide1()
			try runImplementationGuide1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ImplementationGuide successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImplementationGuide1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImplementationGuide {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "implementationguide-example.json")
		
		XCTAssertEqual(inst.binary?[0].absoluteString, "http://h7.org/fhir/fhir.css")
		XCTAssertEqual(inst.contact?[0].name, "ONC")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://www.healthit.gov")
		XCTAssertEqual(inst.contact?[1].name, "HL7")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "Published by ONC under the standard FHIR license (CC0)")
		XCTAssertEqual(inst.date?.description, "2015-01-01")
		XCTAssertEqual(inst.dependency?[0].type, GuideDependencyType(rawValue: "reference")!)
		XCTAssertEqual(inst.dependency?[0].uri?.absoluteString, "http://hl7.org/fhir/ImplementationGuide/uscore")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.fhirVersion, "1.0.0")
		XCTAssertEqual(inst.global?[0].profile?.reference, "StructureDefinition/daf-patient")
		XCTAssertEqual(inst.global?[0].type, "Patient")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.name, "Data Access Framework (DAF)")
		XCTAssertEqual(inst.package?[0].description_fhir, "Base package (not broken up into multiple packages)")
		XCTAssertEqual(inst.package?[0].name, "test")
		XCTAssertEqual(inst.package?[0].resource?[0].acronym, "daf-tst")
		XCTAssertEqual(inst.package?[0].resource?[0].description_fhir, "A test example to show how a package works")
		XCTAssertEqual(inst.package?[0].resource?[0].example, true)
		XCTAssertEqual(inst.package?[0].resource?[0].exampleFor?.reference, "StructureDefinition/daf-patient")
		XCTAssertEqual(inst.package?[0].resource?[0].name, "Test Example")
		XCTAssertEqual(inst.package?[0].resource?[0].sourceUri?.absoluteString, "test.html")
		XCTAssertEqual(inst.page?.kind, GuidePageKind(rawValue: "page")!)
		XCTAssertEqual(inst.page?.page?[0].format, "text/html")
		XCTAssertEqual(inst.page?.page?[0].kind, GuidePageKind(rawValue: "list")!)
		XCTAssertEqual(inst.page?.page?[0].package?[0], "test")
		XCTAssertEqual(inst.page?.page?[0].source?.absoluteString, "list.html")
		XCTAssertEqual(inst.page?.page?[0].title, "Value Set Page")
		XCTAssertEqual(inst.page?.page?[0].type?[0], "ValueSet")
		XCTAssertEqual(inst.page?.source?.absoluteString, "patient-example.html")
		XCTAssertEqual(inst.page?.title, "Example Patient Page")
		XCTAssertEqual(inst.publisher, "ONC / HL7 Joint project")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/us/daf")
		XCTAssertEqual(inst.version, "0")
		
		return inst
	}
}
