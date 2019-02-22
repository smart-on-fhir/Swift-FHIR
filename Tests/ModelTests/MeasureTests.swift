//
//  MeasureTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-02-22.
//  2019, SMART Health IT.
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
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-component-b-example.json")
		
		XCTAssertEqual(inst.group?[0].id, "Main")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.expression, "Initial Population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.expression, "Denominator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.expression, "Numerator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.language, "text/cql")
		XCTAssertEqual(inst.id, "component-b-example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Screening for Depression")
		
		return inst
	}
	
	func testMeasure2() {
		do {
			let instance = try runMeasure2()
			try runMeasure2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Measure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasure2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-predecessor-example.json")
		
		XCTAssertEqual(inst.date?.description, "2014-03-08")
		XCTAssertEqual(inst.description_fhir, "Exclusive breastfeeding measure of outcomes for exclusive breastmilk feeding of newborns.")
		XCTAssertEqual(inst.group?[0].id, "PopulationGroup1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.expression, "InitialPopulation1")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.expression, "Denominator1")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator-exclusions")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.expression, "DenominatorExclusions1")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[3].criteria?.expression, "Numerator1")
		XCTAssertEqual(inst.group?[0].population?[3].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[1].id, "PopulationGroup2")
		XCTAssertEqual(inst.group?[1].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[1].population?[0].criteria?.expression, "InitialPopulation2")
		XCTAssertEqual(inst.group?[1].population?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[1].population?[1].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[1].population?[1].criteria?.expression, "Denominator2")
		XCTAssertEqual(inst.group?[1].population?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[1].population?[2].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[1].population?[2].criteria?.expression, "DenominatorExclusions2")
		XCTAssertEqual(inst.group?[1].population?[2].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[1].population?[3].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[1].population?[3].criteria?.expression, "Numerator2")
		XCTAssertEqual(inst.group?[1].population?[3].criteria?.language, "text/cql")
		XCTAssertEqual(inst.id, "measure-predecessor-example")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "exclusive-breastfeeding-measure")
		XCTAssertEqual(inst.improvementNotation?.coding?[0].code, "increase")
		XCTAssertEqual(inst.improvementNotation?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/measure-improvement-notation")
		XCTAssertEqual(inst.library?[0].absoluteString, "Library/library-exclusive-breastfeeding-cqm-logic")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.purpose, "Measure of newborns who were fed breast milk only since birth")
		XCTAssertEqual(inst.relatedArtifact?[0].citation, "American Academy of Pediatrics. (2005). Section on Breastfeeding. Policy Statement:Breastfeeding and the Use of Human Milk. Pediatrics.115:496-506.")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[3].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[4].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[5].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[6].citation, "Kramer, M.S. & Kakuma, R. (2002).Optimal duration of exclusive breastfeeding. [107 refs] Cochrane Database of Systematic Reviews. (1):CD003517.")
		XCTAssertEqual(inst.relatedArtifact?[6].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[7].citation, "Petrova, A., Hegyi, T., & Mehta, R. (2007). Maternal race/ethnicity and one-month exclusive breastfeeding in association with the in-hospital feeding modality. Breastfeeding Medicine. 2(2):92-8.")
		XCTAssertEqual(inst.relatedArtifact?[7].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[8].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[9].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Exclusive Breastfeeding Measure")
		XCTAssertEqual(inst.topic?[0].text, "Exclusive Breastfeeding")
		XCTAssertEqual(inst.type?[0].coding?[0].code, "process")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testMeasure3() {
		do {
			let instance = try runMeasure3()
			try runMeasure3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Measure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasure3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-cms146-example.json")
		
		XCTAssertEqual(inst.approvalDate?.description, "2016-01-01")
		XCTAssertEqual(inst.author?[0].name, "National Committee for Quality Assurance")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://www.ncqa.org/")
		XCTAssertEqual(inst.date?.description, "2017-03-10")
		XCTAssertEqual(inst.description_fhir, "Percentage of children 3-18 years of age who were diagnosed with pharyngitis, ordered an antibiotic and received a group A streptococcus (strep) test for the episode.")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2017-01-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.group?[0].id, "CMS146-group-1")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.expression, "CMS146.InInitialPopulation")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.expression, "CMS146.InNumerator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.expression, "CMS146.InDenominator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[3].code?.coding?[0].code, "denominator-exclusion")
		XCTAssertEqual(inst.group?[0].population?[3].criteria?.expression, "CMS146.InDenominatorExclusions")
		XCTAssertEqual(inst.group?[0].population?[3].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].stratifier?[0].code?.text, "stratifier-ages-up-to-9")
		XCTAssertEqual(inst.group?[0].stratifier?[0].criteria?.expression, "CMS146.AgesUpToNine")
		XCTAssertEqual(inst.group?[0].stratifier?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].stratifier?[1].code?.text, "stratifier-ages-10-plus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].criteria?.expression, "CMS146.AgesTenPlus")
		XCTAssertEqual(inst.group?[0].stratifier?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].stratifier?[2].code?.text, "stratifier-gender")
		XCTAssertEqual(inst.group?[0].stratifier?[2].criteria?.expression, "Patient.gender")
		XCTAssertEqual(inst.group?[0].stratifier?[2].criteria?.language, "text/fhirpath")
		XCTAssertEqual(inst.guidance, "This is an episode of care measure that examines all eligible episodes for the patient during the measurement period. If the patient has more than one episode, include all episodes in the measure")
		XCTAssertEqual(inst.id, "measure-cms146-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://hl7.org/fhir/cqi/ecqm/Measure/Identifier/cms")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "146")
		XCTAssertEqual(inst.identifier?[1].system?.absoluteString, "http://hl7.org/fhir/cqi/ecqm/Measure/Identifier/nqf")
		XCTAssertEqual(inst.identifier?[1].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[1].value, "0002")
		XCTAssertEqual(inst.improvementNotation?.coding?[0].code, "increase")
		XCTAssertEqual(inst.improvementNotation?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/measure-improvement-notation")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-09-01")
		XCTAssertEqual(inst.library?[0].absoluteString, "Library/library-cms146-example")
		XCTAssertEqual(inst.name, "CMS146")
		XCTAssertEqual(inst.publisher, "National Committee for Quality Assurance")
		XCTAssertEqual(inst.purpose, "Measure of children with a group A streptococcus test in the 7-day period from 3 days prior through 3 days after the diagnosis of pharyngitis")
		XCTAssertEqual(inst.relatedArtifact?[0].citation, "Linder, J.A., D.W. Bates, G.M. Lee, J.A. Finkelstein. 2005. _Antibiotic treatment of children with sore throat._ JAMA 294(18):2315-2322. ")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[1].citation, "Infectious Diseases Society of America. 2012. _Clinical Practice Guideline for the Diagnosis and Management of Group A Streptococcal Pharyngitis: 2012 Update._ ")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "documentation")!)
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.supplementalData?[0].code?.text, "supplemental-data-gender")
		XCTAssertEqual(inst.supplementalData?[0].criteria?.expression, "Patient.gender")
		XCTAssertEqual(inst.supplementalData?[0].criteria?.language, "text/fhirpath")
		XCTAssertEqual(inst.supplementalData?[1].code?.text, "supplemental-data-deceased")
		XCTAssertEqual(inst.supplementalData?[1].criteria?.expression, "deceasedBoolean")
		XCTAssertEqual(inst.supplementalData?[1].criteria?.language, "text/fhirpath")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.title, "Appropriate Testing for Children with Pharyngitis")
		XCTAssertEqual(inst.topic?[0].coding?[0].code, "57024-2")
		XCTAssertEqual(inst.topic?[0].coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.type?[0].coding?[0].code, "process")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/Measure/measure-cms146-example")
		XCTAssertEqual(inst.useContext?[0].code?.code, "program")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.text, "eligibile-provider")
		XCTAssertEqual(inst.useContext?[1].code?.code, "age")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://terminology.hl7.org/CodeSystem/usage-context-type")
		XCTAssertEqual(inst.useContext?[1].valueRange?.high?.unit, "a")
		XCTAssertEqual(inst.useContext?[1].valueRange?.high?.value, "18")
		XCTAssertEqual(inst.useContext?[1].valueRange?.low?.unit, "a")
		XCTAssertEqual(inst.useContext?[1].valueRange?.low?.value, "3")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testMeasure4() {
		do {
			let instance = try runMeasure4()
			try runMeasure4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Measure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasure4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-component-a-example.json")
		
		XCTAssertEqual(inst.group?[0].id, "Main")
		XCTAssertEqual(inst.group?[0].population?[0].code?.coding?[0].code, "initial-population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.expression, "Initial Population")
		XCTAssertEqual(inst.group?[0].population?[0].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[1].code?.coding?[0].code, "denominator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.expression, "Denominator")
		XCTAssertEqual(inst.group?[0].population?[1].criteria?.language, "text/cql")
		XCTAssertEqual(inst.group?[0].population?[2].code?.coding?[0].code, "numerator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.expression, "Numerator")
		XCTAssertEqual(inst.group?[0].population?[2].criteria?.language, "text/cql")
		XCTAssertEqual(inst.id, "component-a-example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Screening for Alcohol Misuse")
		
		return inst
	}
	
	func testMeasure5() {
		do {
			let instance = try runMeasure5()
			try runMeasure5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Measure successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runMeasure5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRMeasure {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "measure-composite-example.json")
		
		XCTAssertEqual(inst.compositeScoring?.coding?[0].code, "opportunity")
		XCTAssertEqual(inst.id, "composite-example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.relatedArtifact?[0].resource?.absoluteString, "Measure/component-a-example")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.absoluteString, "Measure/component-b-example")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.scoring?.coding?[0].code, "proportion")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Behavioral Assessment Composite Measure")
		
		return inst
	}
}
