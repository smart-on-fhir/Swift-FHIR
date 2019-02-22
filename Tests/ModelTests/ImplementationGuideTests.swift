//
//  ImplementationGuideTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		
		XCTAssertEqual(inst.contact?[0].name, "ONC")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://www.healthit.gov")
		XCTAssertEqual(inst.contact?[1].name, "HL7")
		XCTAssertEqual(inst.contact?[1].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[1].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.copyright, "Published by ONC under the standard FHIR license (CC0)")
		XCTAssertEqual(inst.date?.description, "2015-01-01")
		XCTAssertEqual(inst.definition?.grouping?[0].description_fhir, "Base package (not broken up into multiple packages)")
		XCTAssertEqual(inst.definition?.grouping?[0].name, "test")
		XCTAssertEqual(inst.definition?.page?.generation, GuidePageGeneration(rawValue: "html")!)
		XCTAssertEqual(inst.definition?.page?.nameUrl?.absoluteString, "patient-example.html")
		XCTAssertEqual(inst.definition?.page?.page?[0].generation, GuidePageGeneration(rawValue: "html")!)
		XCTAssertEqual(inst.definition?.page?.page?[0].nameUrl?.absoluteString, "list.html")
		XCTAssertEqual(inst.definition?.page?.page?[0].title, "Value Set Page")
		XCTAssertEqual(inst.definition?.page?.title, "Example Patient Page")
		XCTAssertEqual(inst.definition?.parameter?[0].code, GuideParameterCode(rawValue: "apply")!)
		XCTAssertEqual(inst.definition?.parameter?[0].value, "version")
		XCTAssertEqual(inst.definition?.resource?[0].description_fhir, "A test example to show how an implementation guide works")
		XCTAssertEqual(inst.definition?.resource?[0].exampleCanonical?.absoluteString, "http://hl7.org/fhir/us/core/StructureDefinition/patient")
		XCTAssertEqual(inst.definition?.resource?[0].name, "Test Example")
		XCTAssertEqual(inst.definition?.resource?[0].reference?.reference, "Patient/test")
		XCTAssertEqual(inst.dependsOn?[0].uri?.absoluteString, "http://hl7.org/fhir/ImplementationGuide/uscore")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.fhirVersion?[0], "4.0.0")
		XCTAssertEqual(inst.global?[0].profile?.absoluteString, "http://hl7.org/fhir/us/core/StructureDefinition/patient")
		XCTAssertEqual(inst.global?[0].type, ResourceType(rawValue: "Patient")!)
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.license, "CC0-1.0")
		XCTAssertEqual(inst.manifest?.image?[0], "fhir.png")
		XCTAssertEqual(inst.manifest?.other?[0], "fhir.css")
		XCTAssertEqual(inst.manifest?.page?[0].anchor?[0], "patient-test")
		XCTAssertEqual(inst.manifest?.page?[0].anchor?[1], "tx")
		XCTAssertEqual(inst.manifest?.page?[0].anchor?[2], "uml")
		XCTAssertEqual(inst.manifest?.page?[0].name, "patient-test.html")
		XCTAssertEqual(inst.manifest?.page?[0].title, "Test Patient Example")
		XCTAssertEqual(inst.manifest?.rendering?.absoluteString, "http://hl7.org/fhir/us/daf")
		XCTAssertEqual(inst.manifest?.resource?[0].exampleCanonical?.absoluteString, "http://hl7.org/fhir/us/core/StructureDefinition/patient")
		XCTAssertEqual(inst.manifest?.resource?[0].reference?.reference, "Patient/test")
		XCTAssertEqual(inst.manifest?.resource?[0].relativePath?.absoluteString, "patient-test.html#patient-test")
		XCTAssertEqual(inst.name, "Data Access Framework (DAF)")
		XCTAssertEqual(inst.packageId, "hl7.fhir.us.daf")
		XCTAssertEqual(inst.publisher, "ONC / HL7 Joint project")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/us/daf")
		XCTAssertEqual(inst.version, "0")
		
		return inst
	}
}
