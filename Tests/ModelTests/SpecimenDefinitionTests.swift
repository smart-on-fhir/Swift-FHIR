//
//  SpecimenDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSpecimenDefinition = Models.SpecimenDefinition
#else
import SwiftFHIR
typealias SwiftFHIRSpecimenDefinition = SwiftFHIR.SpecimenDefinition
#endif


class SpecimenDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSpecimenDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSpecimenDefinition {
		return try SwiftFHIRSpecimenDefinition(json: json)
	}
	
	func testSpecimenDefinition1() {
		do {
			let instance = try runSpecimenDefinition1()
			try runSpecimenDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test SpecimenDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSpecimenDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSpecimenDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "specimendefinition-example-serum-plasma.json")
		
		XCTAssertEqual(inst.id, "2364")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.patientPreparation?[0].text, "12 hour fasting")
		XCTAssertEqual(inst.patientPreparation?[1].coding?[0].code, "263678003")
		XCTAssertEqual(inst.patientPreparation?[1].coding?[0].display, "At rest")
		XCTAssertEqual(inst.patientPreparation?[1].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.timeAspect, "preferrably morning time")
		XCTAssertEqual(inst.typeCollected?.coding?[0].code, "122555007")
		XCTAssertEqual(inst.typeCollected?.coding?[0].display, "Venous blood specimen")
		XCTAssertEqual(inst.typeCollected?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[0].container?.cap?.coding?[0].code, "yellow")
		XCTAssertEqual(inst.typeTested?[0].container?.cap?.coding?[0].display, "yellow cap")
		XCTAssertEqual(inst.typeTested?[0].container?.cap?.coding?[0].system?.absoluteString, "urn:iso:std:iso:6710:2017")
		XCTAssertEqual(inst.typeTested?[0].container?.material?.coding?[0].code, "61088005")
		XCTAssertEqual(inst.typeTested?[0].container?.material?.coding?[0].display, "plastic")
		XCTAssertEqual(inst.typeTested?[0].container?.material?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[0].container?.minimumVolumeQuantity?.code, "mL")
		XCTAssertEqual(inst.typeTested?[0].container?.minimumVolumeQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].container?.minimumVolumeQuantity?.unit, "ml")
		XCTAssertEqual(inst.typeTested?[0].container?.minimumVolumeQuantity?.value, "2")
		XCTAssertEqual(inst.typeTested?[0].container?.type?.coding?[0].code, "702281005")
		XCTAssertEqual(inst.typeTested?[0].container?.type?.coding?[0].display, "Evacuated blood collection tube, thrombin/clot activator/gel separator")
		XCTAssertEqual(inst.typeTested?[0].container?.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].maxDuration?.code, "min")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].maxDuration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].maxDuration?.unit, "minute")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].maxDuration?.value, "60")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureQualifier?.text, "Ambient temperature")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.high?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.high?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.high?.value, "25")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.low?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.low?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[0].handling?[0].temperatureRange?.low?.value, "15")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].maxDuration?.code, "h")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].maxDuration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].maxDuration?.unit, "hour")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].maxDuration?.value, "8")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureQualifier?.text, "Refrigerated temperature")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.high?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.high?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.high?.value, "8")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.low?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.low?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[0].handling?[1].temperatureRange?.low?.value, "2")
		XCTAssertEqual(inst.typeTested?[0].preference, SpecimenContainedPreference(rawValue: "preferred")!)
		XCTAssertEqual(inst.typeTested?[0].type?.coding?[0].code, "119364003")
		XCTAssertEqual(inst.typeTested?[0].type?.coding?[0].display, "Serum specimen")
		XCTAssertEqual(inst.typeTested?[0].type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[1].container?.cap?.coding?[0].code, "green")
		XCTAssertEqual(inst.typeTested?[1].container?.cap?.coding?[0].display, "green cap")
		XCTAssertEqual(inst.typeTested?[1].container?.cap?.coding?[0].system?.absoluteString, "urn:iso:std:iso:6710:2017")
		XCTAssertEqual(inst.typeTested?[1].container?.material?.coding?[0].code, "32039001")
		XCTAssertEqual(inst.typeTested?[1].container?.material?.coding?[0].display, "glass")
		XCTAssertEqual(inst.typeTested?[1].container?.material?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[1].container?.minimumVolumeQuantity?.code, "mL")
		XCTAssertEqual(inst.typeTested?[1].container?.minimumVolumeQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].container?.minimumVolumeQuantity?.unit, "ml")
		XCTAssertEqual(inst.typeTested?[1].container?.minimumVolumeQuantity?.value, "2")
		XCTAssertEqual(inst.typeTested?[1].container?.type?.coding?[0].code, "767390000")
		XCTAssertEqual(inst.typeTested?[1].container?.type?.coding?[0].display, "Evacuated blood collection tube with heparin lithium and gel separator")
		XCTAssertEqual(inst.typeTested?[1].container?.type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].maxDuration?.code, "min")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].maxDuration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].maxDuration?.unit, "minute")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].maxDuration?.value, "60")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureQualifier?.text, "Ambient temperature")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.high?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.high?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.high?.value, "25")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.low?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.low?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[1].handling?[0].temperatureRange?.low?.value, "15")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].maxDuration?.code, "h")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].maxDuration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].maxDuration?.unit, "hour")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].maxDuration?.value, "8")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureQualifier?.text, "Refrigerated temperature")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.high?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.high?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.high?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.high?.value, "8")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.low?.code, "Cel")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.low?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.low?.unit, "°C")
		XCTAssertEqual(inst.typeTested?[1].handling?[1].temperatureRange?.low?.value, "2")
		XCTAssertEqual(inst.typeTested?[1].preference, SpecimenContainedPreference(rawValue: "alternate")!)
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[0].coding?[0].code, "insufficient")
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[0].coding?[0].display, "insufficient specimen volume")
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/rejection-criteria")
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[1].coding?[0].code, "hemolized")
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[1].coding?[0].display, "hemolized specimen")
		XCTAssertEqual(inst.typeTested?[1].rejectionCriterion?[1].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/rejection-criteria")
		XCTAssertEqual(inst.typeTested?[1].type?.coding?[0].code, "119361006")
		XCTAssertEqual(inst.typeTested?[1].type?.coding?[0].display, "Plasma specimen")
		XCTAssertEqual(inst.typeTested?[1].type?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
