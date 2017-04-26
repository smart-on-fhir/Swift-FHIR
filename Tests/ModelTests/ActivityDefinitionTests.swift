//
//  ActivityDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.1.11917 on 2017-04-25.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRActivityDefinition = Models.ActivityDefinition
#else
import SwiftFHIR
typealias SwiftFHIRActivityDefinition = SwiftFHIR.ActivityDefinition
#endif


class ActivityDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRActivityDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRActivityDefinition {
		return try SwiftFHIRActivityDefinition(json: json)
	}
	
	func testActivityDefinition1() {
		do {
			let instance = try runActivityDefinition1()
			try runActivityDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-example.json")
		
		XCTAssertEqual(inst.approvalDate?.description, "2017-03-01")
		XCTAssertEqual(inst.code?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Referral to service (procedure)")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.contributor?[0].type, ContributorType(rawValue: "author")!)
		XCTAssertEqual(inst.copyright, "© Copyright 2016 Motive Medical Intelligence. All rights reserved.")
		XCTAssertEqual(inst.date?.description, "2017-03-03T14:06:00Z")
		XCTAssertEqual(inst.description_fhir, "refer to primary care mental-health integrated care program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2017-03-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "referralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://motivemi.com/artifacts")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "referralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, "ReferralRequest")
		XCTAssertEqual(inst.lastReviewDate?.description, "2017-03-01")
		XCTAssertEqual(inst.name, "ReferralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.participant?[0].type, ActionParticipantType(rawValue: "practitioner")!)
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.reference, "ActivityDefinition/referralPrimaryCareMentalHealth-initial")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "predecessor")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Referral to Primary Care Mental Health")
		XCTAssertEqual(inst.topic?[0].text, "Mental Health Referral")
		XCTAssertEqual(inst.url?.absoluteString, "http://motivemi.com/artifacts/ActivityDefinition/referralPrimaryCareMentalHealth")
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
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "225444004")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "At risk for suicide (finding)")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Referral to service (procedure)")
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
		XCTAssertEqual(inst.version, "1.1.0")
		
		return inst
	}
	
	func testActivityDefinition2() {
		do {
			let instance = try runActivityDefinition2()
			try runActivityDefinition2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-medicationorder-example.json")
		
		XCTAssertEqual(inst.approvalDate?.description, "2016-03-12")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contained?[0].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[1].id, "citalopramSubstance")
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
		XCTAssertEqual(inst.description_fhir, "Citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills")
		XCTAssertEqual(inst.dosage?[0].doseQuantity?.unit, "{tbl}")
		XCTAssertEqual(inst.dosage?[0].doseQuantity?.value, "1")
		XCTAssertEqual(inst.dosage?[0].route?.coding?[0].code, "26643006")
		XCTAssertEqual(inst.dosage?[0].route?.coding?[0].display, "Oral route (qualifier value)")
		XCTAssertEqual(inst.dosage?[0].route?.text, "Oral route (qualifier value)")
		XCTAssertEqual(inst.dosage?[0].text, "1 tablet oral 1 time daily")
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.frequency, 1)
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.period, "1")
		XCTAssertEqual(inst.dosage?[0].timing?.repeat_fhir?.periodUnit, "d")
		XCTAssertEqual(inst.dynamicValue?[0].description_fhir, "dispenseRequest.numberOfRepeatsAllowed is three (3)")
		XCTAssertEqual(inst.dynamicValue?[0].expression, "3")
		XCTAssertEqual(inst.dynamicValue?[0].language, "text/cql")
		XCTAssertEqual(inst.dynamicValue?[0].path, "dispenseRequest.numberOfRepeatsAllowed")
		XCTAssertEqual(inst.dynamicValue?[1].description_fhir, "dispenseRequest.quantity is thirty (30) tablets")
		XCTAssertEqual(inst.dynamicValue?[1].expression, "30 '{tbl}'")
		XCTAssertEqual(inst.dynamicValue?[1].language, "text/cql")
		XCTAssertEqual(inst.dynamicValue?[1].path, "dispenseRequest.quantity")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "citalopramPrescription")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://motivemi.com")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "citalopramPrescription")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, "MedicationRequest")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-08-15")
		XCTAssertEqual(inst.name, "CitalopramPrescription")
		XCTAssertEqual(inst.productReference?.reference, "#citalopramMedication")
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.purpose, "Defines a guideline supported prescription for the treatment of depressive disorders")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.reference, "#citalopramMedication")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "composed-of")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Citalopram Prescription")
		XCTAssertEqual(inst.topic?[0].text, "Mental Health Treatment")
		XCTAssertEqual(inst.url?.absoluteString, "http://motivemi.com/artifacts/ActivityDefinition/citalopramPrescription")
		XCTAssertEqual(inst.usage, "This activity definition is used as part of various suicide risk order sets")
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
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "225444004")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "At risk for suicide (finding)")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Referral to service (procedure)")
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
	
	func testActivityDefinition3() {
		do {
			let instance = try runActivityDefinition3()
			try runActivityDefinition3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-predecessor-example.json")
		
		XCTAssertEqual(inst.approvalDate?.description, "2016-03-12")
		XCTAssertEqual(inst.code?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Referral to service (procedure)")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "phone")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].use, ContactPointUse(rawValue: "work")!)
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.contributor?[0].type, ContributorType(rawValue: "author")!)
		XCTAssertEqual(inst.copyright, "© Copyright 2016 Motive Medical Intelligence. All rights reserved.")
		XCTAssertEqual(inst.date?.description, "2017-03-03T14:06:00Z")
		XCTAssertEqual(inst.description_fhir, "refer to primary care mental-health integrated care program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.effectivePeriod?.end?.description, "2017-12-31")
		XCTAssertEqual(inst.effectivePeriod?.start?.description, "2016-01-01")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "referralPrimaryCareMentalHealth-initial")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://motivemi.com/artifacts")
		XCTAssertEqual(inst.identifier?[0].use, IdentifierUse(rawValue: "official")!)
		XCTAssertEqual(inst.identifier?[0].value, "referralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "US")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.kind, "ReferralRequest")
		XCTAssertEqual(inst.lastReviewDate?.description, "2016-08-15")
		XCTAssertEqual(inst.name, "ReferralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.participant?[0].type, ActionParticipantType(rawValue: "practitioner")!)
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.relatedArtifact?[0].display, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.relatedArtifact?[0].type, RelatedArtifactType(rawValue: "citation")!)
		XCTAssertEqual(inst.relatedArtifact?[0].url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.relatedArtifact?[1].resource?.reference, "ActivityDefinition/referralPrimaryCareMentalHealth")
		XCTAssertEqual(inst.relatedArtifact?[1].type, RelatedArtifactType(rawValue: "successor")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "retired")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Referral to Primary Care Mental Health")
		XCTAssertEqual(inst.topic?[0].text, "Mental Health Referral")
		XCTAssertEqual(inst.url?.absoluteString, "http://motivemi.com/artifacts/ActivityDefinition/referralPrimaryCareMentalHealth")
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
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].code, "225444004")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].display, "At risk for suicide (finding)")
		XCTAssertEqual(inst.useContext?[3].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[4].code?.code, "focus")
		XCTAssertEqual(inst.useContext?[4].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].code, "306206005")
		XCTAssertEqual(inst.useContext?[4].valueCodeableConcept?.coding?[0].display, "Referral to service (procedure)")
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
	
	func testActivityDefinition4() {
		do {
			let instance = try runActivityDefinition4()
			try runActivityDefinition4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-procedurerequest-example.json")
		
		XCTAssertEqual(inst.bodySite?[0].coding?[0].code, "17401000")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].display, "Heart valve structure")
		XCTAssertEqual(inst.bodySite?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.coding?[0].code, "34068001")
		XCTAssertEqual(inst.code?.coding?[0].display, "Heart valve replacement")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.description_fhir, "Heart valve replacement")
		XCTAssertEqual(inst.id, "heart-valve-replacement")
		XCTAssertEqual(inst.kind, "ProcedureRequest")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].code, "207RI0011X")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].display, "Interventional Cardiology")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].system?.absoluteString, "http://nucc.org/provider-taxonomy")
		XCTAssertEqual(inst.participant?[0].role?.text, "Interventional Cardiology")
		XCTAssertEqual(inst.participant?[0].type, ActionParticipantType(rawValue: "practitioner")!)
		XCTAssertEqual(inst.purpose, "Describes the proposal to perform a Heart Valve replacement.")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.topic?[0].coding?[0].code, "34068001")
		XCTAssertEqual(inst.topic?[0].coding?[0].display, "Heart valve replacement")
		XCTAssertEqual(inst.topic?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.useContext?[0].code?.code, "age")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "D000328")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Adult")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "https://meshb.nlm.nih.gov")
		XCTAssertEqual(inst.useContext?[1].code?.code, "user")
		XCTAssertEqual(inst.useContext?[1].code?.system?.absoluteString, "http://hl7.org/fhir/usage-context-type")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].code, "309343006")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].display, "Physician")
		XCTAssertEqual(inst.useContext?[1].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		
		return inst
	}
	
	func testActivityDefinition5() {
		do {
			let instance = try runActivityDefinition5()
			try runActivityDefinition5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ActivityDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runActivityDefinition5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRActivityDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "activitydefinition-supplyrequest-example.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "BlueTubes")
		XCTAssertEqual(inst.code?.coding?[0].display, "Blood collect tubes blue cap")
		XCTAssertEqual(inst.description_fhir, "10 Blood collect tubes blue cap")
		XCTAssertEqual(inst.id, "blood-tubes-supply")
		XCTAssertEqual(inst.kind, "SupplyRequest")
		XCTAssertEqual(inst.purpose, "Describes a request for 10 Blood collection tubes with blue caps.")
		XCTAssertEqual(inst.quantity?.value, "10")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.transform?.reference, "StructureMap/supplyrequest-transform")
		
		return inst
	}
}
