//
//  ObservationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRObservation = Models.Observation
#else
import SwiftFHIR
typealias SwiftFHIRObservation = SwiftFHIR.Observation
#endif


class ObservationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRObservation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRObservation {
		return try SwiftFHIRObservation(json: json)
	}
	
	func testObservation1() {
		do {
			let instance = try runObservation1()
			try runObservation1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-genetics-1.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "55233-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Genetic analysis master panel-- This is the parent OBR for the panel holding all of the associated observations that can be reported with a molecular genetics analysis result.")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGene")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "3236")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "EGFR")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsDNARegionName")
		XCTAssertEqual(inst.extension_fhir?[1].valueString, "Exon 21")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGenomicSourceClass")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].code, "LA6684-0")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].display, "somatic")
		XCTAssertEqual(inst.extension_fhir?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "example-genetics-1")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].display, "Molecular Diagnostics Laboratory")
		XCTAssertEqual(inst.performer?[0].reference, "Practitioner/example")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example1-somatic")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Molecular Lab Patient ID: HOSP-23456")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].code, "10828004")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].display, "Positive")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testObservation2() {
		do {
			let instance = try runObservation2()
			try runObservation2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bmd.json")
		
		XCTAssertEqual(inst.bodySite?.coding?[0].code, "71341001:272741003=7771000")
		XCTAssertEqual(inst.bodySite?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.bodySite?.text, "Left Femur")
		XCTAssertEqual(inst.code?.coding?[0].code, "24701-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Femur DXA Bone density")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "BMD - Left Femur")
		XCTAssertEqual(inst.id, "bmd")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.performer?[0].display, "Acme Imaging Diagnostics")
		XCTAssertEqual(inst.performer?[0].reference, "Organization/1832473e-2fe0-452d-abe9-3cdb9879522f")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/pat2")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "g/cm-2")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "g/cm²")
		XCTAssertEqual(inst.valueQuantity?.value, "0.887")
		
		return inst
	}
	
	func testObservation3() {
		do {
			let instance = try runObservation3()
			try runObservation3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-respiratory-rate.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "9279-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Respiratory rate")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Respiratory rate")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "respiratory-rate")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "/min")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "breaths/minute")
		XCTAssertEqual(inst.valueQuantity?.value, "26")
		
		return inst
	}
	
	func testObservation4() {
		do {
			let instance = try runObservation4()
			try runObservation4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/observation-category")
		XCTAssertEqual(inst.code?.coding?[0].code, "29463-7")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body Weight")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[1].code, "3141-9")
		XCTAssertEqual(inst.code?.coding?[1].display, "Body weight Measured")
		XCTAssertEqual(inst.code?.coding?[1].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.coding?[2].code, "27113001")
		XCTAssertEqual(inst.code?.coding?[2].display, "Body weight")
		XCTAssertEqual(inst.code?.coding?[2].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[3].code, "body-weight")
		XCTAssertEqual(inst.code?.coding?[3].display, "Body Weight")
		XCTAssertEqual(inst.code?.coding?[3].system?.absoluteString, "http://acme.org/devices/clinical-codes")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-03-28")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "[lb_av]")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "lbs")
		XCTAssertEqual(inst.valueQuantity?.value, "185")
		
		return inst
	}
	
	func testObservation5() {
		do {
			let instance = try runObservation5()
			try runObservation5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-haplotype2.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "55233-1")
		XCTAssertEqual(inst.code?.coding?[0].display, "Genetic analysis master panel-- This is the parent OBR for the panel holding all of the associated observations that can be reported with a molecular genetics analysis result.")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.derivedFrom?[0].reference, "MolecularSequence/example-pgx-1")
		XCTAssertEqual(inst.derivedFrom?[1].reference, "MolecularSequence/example-pgx-2")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGene")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "2623")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "CYP2C9")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://www.genenames.org")
		XCTAssertEqual(inst.id, "example-haplotype2")
		XCTAssertEqual(inst.issued?.description, "2013-04-03T15:30:10+01:00")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.specimen?.display, "Molecular Specimen ID: MLD45-Z4-1234")
		XCTAssertEqual(inst.specimen?.reference, "Specimen/genetics-example1-somatic")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "unknown")!)
		XCTAssertEqual(inst.subject?.display, "J*********** C***********")
		XCTAssertEqual(inst.subject?.reference, "Patient/727127")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].code, "PA16581679")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].display, "*4")
		XCTAssertEqual(inst.valueCodeableConcept?.coding?[0].system?.absoluteString, "http://pharmakb.org")
		
		return inst
	}
	
	func testObservation6() {
		do {
			let instance = try runObservation6()
			try runObservation6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-mbp.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "8478-0")
		XCTAssertEqual(inst.code?.coding?[0].display, "Mean blood pressure")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Mean blood pressure")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "mbp")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "mm[Hg]")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "mm[Hg]")
		XCTAssertEqual(inst.valueQuantity?.value, "80")
		
		return inst
	}
	
	func testObservation7() {
		do {
			let instance = try runObservation7()
			try runObservation7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-genetics-brcapat.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "59041-4")
		XCTAssertEqual(inst.code?.coding?[0].display, "BRCA1+BRCA2 gene mutations tested for in Blood or Tissue by Molecular genetics method Nominal")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/observation-geneticsGene")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "KX470182.1")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].display, "BRCA")
		XCTAssertEqual(inst.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "https://www.ncbi.nlm.nih.gov/nuccore")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].code, "413581001")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].display, "Unknown racial group")
		XCTAssertEqual(inst.extension_fhir?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://browser.ihtsdotools.org/")
		XCTAssertEqual(inst.id, "example-genetics-brcapat")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.display, "Patient1 with Breast Cancer FamilyHistory")
		XCTAssertEqual(inst.subject?.reference, "Patient/brcapat")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testObservation8() {
		do {
			let instance = try runObservation8()
			try runObservation8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-bmi.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "39156-5")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body mass index (BMI) [Ratio]")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "BMI")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "bmi")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "kg/m2")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "kg/m2")
		XCTAssertEqual(inst.valueQuantity?.value, "16.2")
		
		return inst
	}
	
	func testObservation9() {
		do {
			let instance = try runObservation9()
			try runObservation9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-body-height.json")
		
		XCTAssertEqual(inst.category?[0].coding?[0].code, "vital-signs")
		XCTAssertEqual(inst.category?[0].coding?[0].display, "Vital Signs")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/observation-category")
		XCTAssertEqual(inst.category?[0].text, "Vital Signs")
		XCTAssertEqual(inst.code?.coding?[0].code, "8302-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "Body height")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Body height")
		XCTAssertEqual(inst.effectiveDateTime?.description, "1999-07-02")
		XCTAssertEqual(inst.id, "body-height")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/vitalsigns")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueQuantity?.code, "[in_i]")
		XCTAssertEqual(inst.valueQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.valueQuantity?.unit, "in")
		XCTAssertEqual(inst.valueQuantity?.value, "66.89999999999999")
		
		return inst
	}
	
	func testObservation10() {
		do {
			let instance = try runObservation10()
			try runObservation10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Observation successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runObservation10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRObservation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "observation-example-eye-color.json")
		
		XCTAssertEqual(inst.code?.text, "eye color")
		XCTAssertEqual(inst.effectiveDateTime?.description, "2016-05-18")
		XCTAssertEqual(inst.id, "eye-color")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, ObservationStatus(rawValue: "final")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.valueString, "blue")
		
		return inst
	}
}
