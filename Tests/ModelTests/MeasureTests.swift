//
//  MeasureTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11377 on 2017-02-24.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRMeasure = Models.Measure
#else
import SwiftFHIR
typealias SwiftFHIRMeasure = SwiftFHIR.Measure
#endif


class MeasureTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRMeasure {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRMeasure {
		return try SwiftFHIRMeasure(json: json)
	}
	
	func testMeasure1() {
		do {
			let instance = try runMeasure1()
			try runMeasure1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Measure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasure1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-cms146-example.json")
		
		XCTAssertEqual(inst.description_fhir, "Percentage of children 2-18 years of age who were diagnosed with pharyngitis, ordered an antibiotic and received a group A streptococcus (strep) test for the episode.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.group?[0].identifier?.value, "CMS146-group-1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria, "CMS146.InInitialPopulation")
		XCTAssertEqual(inst.group?[0].population?[0].identifier?.value, "initial-population-identifier")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria, "CMS146.InNumerator")
		XCTAssertEqual(inst.group?[0].population?[1].identifier?.value, "numerator-identifier")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria, "CMS146.InDenominator")
		XCTAssertEqual(inst.group?[0].population?[2].identifier?.value, "denominator-identifier")
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].population?[3].criteria, "CMS146.InDenominatorExclusions")
		XCTAssertEqual(inst.group?[0].population?[3].identifier?.value, "denominator-exclusions-identifier")
		XCTAssertEqual(inst.group?[0].stratifier?[0].criteria, "CMS146.AgesUpToNine")
		XCTAssertEqual(inst.group?[0].stratifier?[0].identifier?.value, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[1].criteria, "CMS146.AgesTenPlus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].identifier?.value, "stratifier-ages-10-plus")
		XCTAssertEqual(inst.group?[0].stratifier?[2].identifier?.value, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[2].path, "Patient.gender")
		XCTAssertEqual(inst.id, "measure-cms146-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://hl7.org/fhir/cqi/ecqm/Measure/Identifier/cms")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "146")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://hl7.org/fhir/cqi/ecqm/Measure/Identifier/nqf")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "0002")
		XCTAssertEqual(inst.library?[0].reference, "Library/library-cms146-example")
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplementalData?[0].identifier?.value, "supplemental-data-gender")
		XCTAssertEqual(inst.supplementalData?[0].path, "Patient.gender")
		XCTAssertEqual(inst.supplementalData?[1].identifier?.value, "supplemental-data-deceased")
		XCTAssertEqual(inst.supplementalData?[1].path, "deceasedBoolean")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.title, "Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.topic?[0].coding?[0].code, "57024-2")
		XCTAssertEqual(inst.topic?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/c80-doc-typecodes")
		XCTAssertEqual(inst.type?[0].coding?[0].code, "process")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
}
