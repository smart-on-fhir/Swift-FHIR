//
//  PlanDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11923 on 2017-04-18.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRPlanDefinition = Models.PlanDefinition
#else
import SwiftFHIR
typealias SwiftFHIRPlanDefinition = SwiftFHIR.PlanDefinition
#endif


class PlanDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRPlanDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRPlanDefinition {
		return try SwiftFHIRPlanDefinition(json: json)
	}
	
	func testPlanDefinition1() {
		do {
			let instance = try runPlanDefinition1()
			try runPlanDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example-kdn5-simplified.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].definition?.reference, "#1111")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].url?.absoluteString, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].extension_fhir?[1].valueInteger, 8)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].id, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[0].textEquivalent, "Gemcitabine 1250 mg/m² IV over 30 minutes on days 1 and 8")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].definition?.reference, "#2222")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].url?.absoluteString, "day")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].extension_fhir?[0].valueInteger, 1)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/timing-daysOfCycle")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].id, "action-2")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].actionId, "action-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "concurrent-with-start")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].action?[1].textEquivalent, "CARBOplatin AUC 5 IV over 30 minutes on Day 1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].id, "cycle-definition-1")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].textEquivalent, "21-day cycle for 6 cycles")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.count, 6)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.duration, "21")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].action?[0].timingTiming?.repeat_fhir?.durationUnit, "d")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "sentence-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "exactly-one")!)
		XCTAssertEqual(inst.approvalDate?.description, "2016-07-27")
		XCTAssertEqual(inst.contained?[0].id, "1111")
		XCTAssertEqual(inst.contained?[1].id, "2222")
		XCTAssertEqual(inst.contributor?[0].name, "Lee Surprenant")
		XCTAssertEqual(inst.contributor?[0].type, ContributorType(rawValue: "author")!)
		XCTAssertEqual(inst.copyright, "All rights reserved.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "KDN5")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/ordertemplates")
		XCTAssertEqual(inst.identifier?[0].value, "KDN5")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-07-27")
		XCTAssertEqual(inst.publisher, "National Comprehensive Cancer Network, Inc.")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "NCCN Guidelines for Kidney Cancer. V.2.2016")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://www.example.org/professionals/physician_gls/PDF/kidney.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].citation, "Oudard S, et al. J Urol. 2007;177(5):1698-702")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.relatedArtifact?[1].url?.absoluteString, "http://www.ncbi.nlm.nih.gov/pubmed/17437788")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "additional")!)
		XCTAssertEqual(inst.title, "Gemcitabine/CARBOplatin")
		XCTAssertEqual(inst.type?.text, "Chemotherapy Order Template")
		XCTAssertEqual(inst.useContext?[0].code?.code, "treamentSetting-or-diseaseStatus")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[0].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[0].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.text, "Metastatic")
		XCTAssertEqual(inst.useContext?[1].code?.code, "disease-or-histology")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[1].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[1].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.text, "Collecting Duct/Medullary Subtypes")
		XCTAssertEqual(inst.useContext?[2].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[2].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[2].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[2].extension_fhir?[0].valueString, "A")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.text, "Kidney Cancer")
		XCTAssertEqual(inst.useContext?[3].code?.code, "treatmentSetting-or-diseaseStatus")
		XCTAssertEqual(inst.useContext?[3].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[3].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[3].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.text, "Relapsed")
		XCTAssertEqual(inst.useContext?[4].code?.code, "disease-or-histology")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://example.org/fhir/CodeSystem/indications")
		XCTAssertEqual(inst.useContext?[4].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[4].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.text, "Collecting Duct/Medullary Subtypes")
		XCTAssertEqual(inst.useContext?[5].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[5].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[5].extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/usagecontext-group")
		XCTAssertEqual(inst.useContext?[5].extension_fhir?[0].valueString, "B")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.text, "Kidney Cancer – Collecting Duct/Medullary Subtypes - Metastatic")
		XCTAssertEqual(inst.version, "1")
		
		return inst
	}
	
	func testPlanDefinition2() {
		do {
			let instance = try runPlanDefinition2()
			try runPlanDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].definition?.reference, "#referralToMentalHealthCare")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].expression, "Now()")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[0].path, "timing.event")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].expression, "Code '261QM0850X' from SuicideRiskLogic.\"NUCC Provider Taxonomy\" display 'Adult Mental Health'")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[1].path, "specialty")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].expression, "SuicideRiskLogic.ReferralRequestFulfillmentTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[2].path, "occurrenceDateTime")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].expression, "SuicideRiskLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[3].path, "subject")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].expression, "SuicideRiskLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[4].path, "requester.agent")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].expression, "SuicideRiskLogic.RiskAssessmentScore")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[5].path, "reasonCode")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].expression, "SuicideRiskLogic.RiskAssessment")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].dynamicValue?[6].path, "reasonReference")
		XCTAssertEqual(inst.action?[0].action?[0].action?[0].textEquivalent, "Refer to outpatient mental health program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "any")!)
		XCTAssertEqual(inst.action?[0].action?[0].title, "Consults and Referrals")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].definition?.reference, "#citalopramPrescription")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[0].expression, "'draft'")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[1].expression, "SuicideRiskLogic.Patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[2].expression, "SuicideRiskLogic.Practitioner")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[3].expression, "SuicideRiskLogic.RiskAssessmentScore")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[3].path, "reasonCode")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[4].expression, "SuicideRiskLogic.RiskAssessment")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].dynamicValue?[4].path, "reasonReference")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[0].textEquivalent, "citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[1].textEquivalent, "escitalopram 10 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[2].textEquivalent, "fluoxetine 20 mg capsule 1 capsule oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[3].textEquivalent, "paroxetine 20 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].action?[4].textEquivalent, "sertraline 50 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.title, "National Library of Medicine. DailyMed website. CITALOPRAM- citalopram hydrobromide tablet, film coated.")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].document?.url?.absoluteString, "http://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=6daeb45c-451d-b135-bf8f-2d6dff4b6b01")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].documentation?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[0].title, "Selective Serotonin Reuptake Inhibitors (Choose a mazimum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[1].textEquivalent, "Dopamine Norepinephrine Reuptake Inhibitors (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[2].textEquivalent, "Serotonin Norepinephrine Reuptake Inhibitors (Choose a maximum of one or doument reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].action?[3].textEquivalent, "Norepinephrine-Serotonin Modulators (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].url?.absoluteString, "http://hl7.org/fhir/StructureDefinition/cqif-qualityOfEvidence")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.coding?[0].code, "high")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/evidence-quality")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.extension_fhir?[0].valueCodeableConcept?.text, "High Quality")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.title, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].document?.url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].documentation?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].action?[0].title, "First-Line Antidepressants")
		XCTAssertEqual(inst.action?[0].action?[1].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].action?[1].selectionBehavior, ActionSelectionBehavior(rawValue: "at-most-one")!)
		XCTAssertEqual(inst.action?[0].action?[1].title, "Medications")
		XCTAssertEqual(inst.action?[0].title, "Suicide Risk Assessment and Outpatient Management")
		XCTAssertEqual(inst.approvalDate?.description, "2016-03-12")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contained?[0].id, "referralToMentalHealthCare")
		XCTAssertEqual(inst.contained?[1].id, "citalopramPrescription")
		XCTAssertEqual(inst.contained?[2].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[3].id, "citalopramSubstance")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.contributor?[0].type, ContributorType(rawValue: "author")!)
		XCTAssertEqual(inst.copyright, "© Copyright 2016 Motive Medical Intelligence. All rights reserved.")
		XCTAssertEqual(inst.date?.description, "2015-08-15")
		XCTAssertEqual(inst.description_fhir, "Orders to be applied to a patient characterized as low suicide risk.")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "low-suicide-risk-order-set")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://motivemi.com/artifacts")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "mmi:low-suicide-risk-order-set")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-08-15")
		XCTAssertEqual(inst.library?[0].display, "SuicideRiskLogic")
		XCTAssertEqual(inst.library?[0].reference, "Library/suiciderisk-orderset-logic")
		XCTAssertEqual(inst.name, "LowSuicideRiskOrderSet")
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.purpose, "This order set helps ensure consistent application of appropriate orders for the care of low suicide risk patients.")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.reference, "ActivityDefinition/referralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.relatedArtifact?[2].resource?.reference, "ActivityDefinition/citalopramPrescription")
		XCTAssertEqual(inst.relatedArtifact?[2].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Low Suicide Risk Order Set")
		XCTAssertEqual(inst.topic?[0].text, "Suicide risk assessment")
		XCTAssertEqual(inst.url?.absoluteString, "http://motivemi.com/artifacts/PlanDefinition/low-suicide-risk-order-set")
		XCTAssertEqual(inst.usage, "This order set should be applied after assessing a patient for suicide risk, when the findings of that assessment indicate the patient has low suicide risk.")
		XCTAssertEqual(inst.useContext?[0].code?.code, "age")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "D000328")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Adult")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "https://meshb.nlm.nih.gov")
		XCTAssertEqual(inst.useContext?[1].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].code, "87512008")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].display, "Mild major depression")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[2].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[2].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].code, "40379007")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].display, "Major depression, recurrent, mild")
		XCTAssertEqual(inst.useContext?[2].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[3].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[3].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "394687007")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "Low suicide risk")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "225337009")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Suicide risk assessment")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[5].code?.code, "user")
		XCTAssertEqual(inst.useContext?[5].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].code, "309343006")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].display, "Physician")
		XCTAssertEqual(inst.useContext?[5].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[6].code?.code, "venue")
		XCTAssertEqual(inst.useContext?[6].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].code, "440655000")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].display, "Outpatient environment")
		XCTAssertEqual(inst.useContext?[6].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testPlanDefinition3() {
		do {
			let instance = try runPlanDefinition3()
			try runPlanDefinition3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-options-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].definition?.reference, "#activitydefinition-medicationrequest-1")
		XCTAssertEqual(inst.action?[0].action?[0].id, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[0].title, "Administer Medication 1")
		XCTAssertEqual(inst.action?[0].action?[1].definition?.reference, "#activitydefinition-medicationrequest-2")
		XCTAssertEqual(inst.action?[0].action?[1].id, "medication-action-2")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].actionId, "medication-action-1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.unit, "h")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].offsetDuration?.value, "1")
		XCTAssertEqual(inst.action?[0].action?[1].relatedAction?[0].relationship, ActionRelationshipType(rawValue: "after-end")!)
		XCTAssertEqual(inst.action?[0].action?[1].title, "Administer Medication 2")
		XCTAssertEqual(inst.action?[0].groupingBehavior, ActionGroupingBehavior(rawValue: "logical-group")!)
		XCTAssertEqual(inst.action?[0].selectionBehavior, ActionSelectionBehavior(rawValue: "all")!)
		XCTAssertEqual(inst.contained?[0].id, "activitydefinition-medicationrequest-1")
		XCTAssertEqual(inst.contained?[1].id, "activitydefinition-medicationrequest-2")
		XCTAssertEqual(inst.id, "options-example")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "This example illustrates relationships between actions.")
		
		return inst
	}
	
	func testPlanDefinition4() {
		do {
			let instance = try runPlanDefinition4()
			try runPlanDefinition4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-predecessor-example.json")
		
		XCTAssertEqual(inst.action?[0].action?[0].condition?[0].expression, "Should Administer Zika Virus Exposure Assessment")
		XCTAssertEqual(inst.action?[0].action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].action?[0].definition?.reference, "ActivityDefinition/administer-zika-virus-exposure-assessment")
		XCTAssertEqual(inst.action?[0].action?[1].condition?[0].expression, "Should Order Serum + Urine rRT-PCR Test")
		XCTAssertEqual(inst.action?[0].action?[1].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].action?[1].definition?.reference, "ActivityDefinition/order-serum-urine-rrt-pcr-test")
		XCTAssertEqual(inst.action?[0].action?[2].condition?[0].expression, "Should Order Serum Zika Virus IgM + Dengue Virus IgM")
		XCTAssertEqual(inst.action?[0].action?[2].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].action?[2].definition?.reference, "ActivityDefinition/order-serum-zika-dengue-virus-igm")
		XCTAssertEqual(inst.action?[0].action?[3].condition?[0].expression, "Should Consider IgM Antibody Testing")
		XCTAssertEqual(inst.action?[0].action?[3].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].action?[3].definition?.reference, "ActivityDefinition/consider-igm-antibody-testing")
		XCTAssertEqual(inst.action?[0].action?[4].action?[0].definition?.reference, "ActivityDefinition/provide-mosquito-prevention-advice")
		XCTAssertEqual(inst.action?[0].action?[4].action?[1].definition?.reference, "ActivityDefinition/provide-contraception-advice")
		XCTAssertEqual(inst.action?[0].action?[4].condition?[0].expression, "Should Provide Mosquito Prevention and Contraception Advice")
		XCTAssertEqual(inst.action?[0].action?[4].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].condition?[0].expression, "Is Patient Pregnant")
		XCTAssertEqual(inst.action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].title, "Zika Virus Assessment")
		XCTAssertEqual(inst.action?[0].triggerDefinition?[0].eventName, "patient-view")
		XCTAssertEqual(inst.action?[0].triggerDefinition?[0].type, TriggerType(rawValue: "named-event")!)
		XCTAssertEqual(inst.date?.description, "2016-11-14")
		XCTAssertEqual(inst.description_fhir, "Zika Virus Management intervention describing the CDC Guidelines for Zika Virus Reporting and Management.")
		XCTAssertEqual(inst.id, "zika-virus-intervention-initial")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "zika-virus-intervention")
		XCTAssertEqual(inst.library?[0].reference, "Library/zika-virus-intervention-logic")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "https://www.cdc.gov/mmwr/volumes/65/wr/mm6539e1.htm?s_cid=mm6539e1_w")
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.reference, "PlanDefinition/zika-virus-intervention")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "successor")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Zika Virus Intervention")
		XCTAssertEqual(inst.topic?[0].text, "Zika Virus Management")
		XCTAssertEqual(inst.url?.absoluteString, "http://example.org/PlanDefinition/zika-virus-intervention")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testPlanDefinition5() {
		do {
			let instance = try runPlanDefinition5()
			try runPlanDefinition5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runPlanDefinition5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRPlanDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-protocol-example.json")
		
		XCTAssertEqual(inst.action?[0].cardinalityBehavior, ActionCardinalityBehavior(rawValue: "single")!)
		XCTAssertEqual(inst.action?[0].condition?[0].expression, "exists ([Condition: Obesity]) or not exists ([Observation: BMI] O where O.effectiveDateTime 2 years or less before Today())")
		XCTAssertEqual(inst.action?[0].condition?[0].kind, ActionConditionKind(rawValue: "applicability")!)
		XCTAssertEqual(inst.action?[0].condition?[0].language, "text/cql")
		XCTAssertEqual(inst.action?[0].definition?.reference, "#procedure")
		XCTAssertEqual(inst.action?[0].goalId?[0], "reduce-bmi-ratio")
		XCTAssertEqual(inst.action?[0].label, "Measure BMI")
		XCTAssertEqual(inst.action?[0].requiredBehavior, ActionRequiredBehavior(rawValue: "must-unless-documented")!)
		XCTAssertEqual(inst.action?[0].title, "Measure, Weight, Height, Waist, Circumference; Calculate BMI")
		XCTAssertEqual(inst.contained?[0].id, "procedure")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "https://www.nhlbi.nih.gov/health-pro/guidelines")
		XCTAssertEqual(inst.contributor?[0].name, "National Heart, Lung, and Blood Institute")
		XCTAssertEqual(inst.contributor?[0].type, ContributorType(rawValue: "author")!)
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].code, "414916001")
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].display, "Obesity (disorder)")
		XCTAssertEqual(inst.goal?[0].addresses?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.goal?[0].category?.text, "Treatment")
		XCTAssertEqual(inst.goal?[0].description_fhir?.text, "Reduce BMI to below 25")
		XCTAssertEqual(inst.goal?[0].documentation?[0].display, "Evaluation and Treatment Strategy")
		XCTAssertEqual(inst.goal?[0].documentation?[0].type, RelatedArtifactType(rawValue: "justification")!)
		XCTAssertEqual(inst.goal?[0].documentation?[0].url?.absoluteString, "https://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/42.htm")
		XCTAssertEqual(inst.goal?[0].id, "reduce-bmi-ratio")
		XCTAssertEqual(inst.goal?[0].priority?.text, "medium-priority")
		XCTAssertEqual(inst.goal?[0].start?.text, "When the patient's BMI Ratio is at or above 25")
		XCTAssertEqual(inst.goal?[0].target?[0].detailRange?.high?.unit, "kg/m2")
		XCTAssertEqual(inst.goal?[0].target?[0].detailRange?.high?.value, "24.9")
		XCTAssertEqual(inst.goal?[0].target?[0].due?.unit, "a")
		XCTAssertEqual(inst.goal?[0].target?[0].due?.value, "1")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].code, "39156-5")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].display, "Body mass index (BMI) [Ratio]")
		XCTAssertEqual(inst.goal?[0].target?[0].measure?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.id, "protocol-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org")
		XCTAssertEqual(inst.identifier?[0].value, "example-1")
		XCTAssertEqual(inst.purpose, "Example of A medical algorithm for assessment and treatment of overweight and obesity")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Overweight and Obesity Treatment Guidelines")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "derived-from")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/algorthm/algorthm.htm")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Obesity Assessment Protocol")
		XCTAssertEqual(inst.type?.coding?[0].code, "protocol")
		XCTAssertEqual(inst.useContext?[0].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "414916001")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Obesity (disorder)")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
}
