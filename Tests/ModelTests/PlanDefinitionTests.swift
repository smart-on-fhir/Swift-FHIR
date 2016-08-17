//
//  PlanDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PlanDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PlanDefinition {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.PlanDefinition {
		let instance = SwiftFHIR.PlanDefinition(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testPlanDefinition1() {
		do {
			let instance = try runPlanDefinition1()
			try runPlanDefinition1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runPlanDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PlanDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-example.json")
		
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].activityDefinition?.reference, "#referralToMentalHealthCare")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].expression, "Now()")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].path, "timing.event")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].expression, "Code '261QM0850X' from \"urn:oid:2.16.840.1.113883.11.19462\"")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].path, "specialty")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].expression, "ReferralRequestFulfillmentTime")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].path, "fulfillmentTime")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].expression, "Patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].path, "patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].expression, "Practitioner")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].path, "requester")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[5].expression, "RiskAssessmentScore")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[5].path, "reason")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[6].expression, "RiskAssessment")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[6].path, "supportingInformation")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "Refer to outpatient mental health program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].selectionBehavior, "any")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[0].title, "Consults and Referrals")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].activityDefinition?.reference, "#citalopramPrescription")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].expression, "'draft'")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[0].path, "status")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].expression, "Patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[1].path, "patient")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].expression, "Practitioner")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[2].path, "prescriber")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].expression, "RiskAssessmentScore")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[3].path, "reasonCode")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].expression, "RiskAssessment")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].dynamicValue?[4].path, "reasonReference")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[0].textEquivalent, "citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[1].textEquivalent, "escitalopram 10 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[2].textEquivalent, "fluoxetine 20 mg capsule 1 capsule oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[3].textEquivalent, "paroxetine 20 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].actionDefinition?[4].textEquivalent, "sertraline 50 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.title, "National Library of Medicine. DailyMed website. CITALOPRAM- citalopram hydrobromide tablet, film coated.")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].document?.url?.absoluteString, "http://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=6daeb45c-451d-b135-bf8f-2d6dff4b6b01")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].documentation?[0].type, "justification")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[0].title, "Selective Serotonin Reuptake Inhibitors (Choose a mazimum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[1].textEquivalent, "Dopamine Norepinephrine Reuptake Inhibitors (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[2].textEquivalent, "Serotonin Norepinephrine Reuptake Inhibitors (Choose a maximum of one or doument reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].actionDefinition?[3].textEquivalent, "Norepinephrine-Serotonin Modulators (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.contentType, "text/html")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.title, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].document?.url?.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].documentation?[0].type, "justification")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].actionDefinition?[0].title, "First-Line Antidepressants")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].groupingBehavior, "logical-group")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].selectionBehavior, "at-most-one")
		XCTAssertEqual(inst.actionDefinition?[0].actionDefinition?[1].title, "Medications")
		XCTAssertEqual(inst.actionDefinition?[0].title, "Suicide Risk Assessment and Outpatient Management")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contact?[0].telecom?[0].use, "work")
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contact?[0].telecom?[1].use, "work")
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contained?[0].id, "referralToMentalHealthCare")
		XCTAssertEqual(inst.contained?[1].id, "citalopramPrescription")
		XCTAssertEqual(inst.contained?[2].id, "citalopramMedication")
		XCTAssertEqual(inst.contained?[3].id, "citalopramSubstance")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].system, "phone")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].use, "work")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[0].value, "415-362-4007")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].system, "email")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].use, "work")
		XCTAssertEqual(inst.contributor?[0].contact?[0].telecom?[1].value, "info@motivemi.com")
		XCTAssertEqual(inst.contributor?[0].name, "Motive Medical Intelligence")
		XCTAssertEqual(inst.contributor?[0].type, "author")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[0].coding?[0].code, "87512008")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[0].coding?[0].display, "Mild major depression")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[1].coding?[0].code, "40379007")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[1].coding?[0].display, "Major depression, recurrent, mild")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[2].coding?[0].code, "394687007")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[2].coding?[0].display, "Low suicide risk")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[3].coding?[0].code, "225337009")
		XCTAssertEqual(inst.coverage?[0].clinicalFocus?[3].coding?[0].display, "Suicide risk assessment")
		XCTAssertEqual(inst.coverage?[0].clinicalVenue?[0].coding?[0].code, "440655000")
		XCTAssertEqual(inst.coverage?[0].clinicalVenue?[0].coding?[0].display, "Outpatient environment")
		XCTAssertEqual(inst.coverage?[0].patientAgeGroup?[0].coding?[0].code, "133936004")
		XCTAssertEqual(inst.coverage?[0].patientAgeGroup?[0].coding?[0].display, "Adult")
		XCTAssertEqual(inst.coverage?[0].targetUser?[0].coding?[0].code, "309343006")
		XCTAssertEqual(inst.coverage?[0].targetUser?[0].coding?[0].display, "Physician")
		XCTAssertEqual(inst.description_fhir, "...")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].use, "official")
		XCTAssertEqual(inst.identifier?[0].value, "mmi:low-suicide-risk-order-set")
		XCTAssertEqual(inst.library?[0].reference, "Library/mmi-suiciderisk-orderset-logic")
		XCTAssertEqual(inst.publicationDate?.description, "2015-08-15")
		XCTAssertEqual(inst.publisher, "Motive Medical Intelligence")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Low Suicide Risk Order Set...</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Low Suicide Risk Order Set")
		XCTAssertEqual(inst.topic?[0].text, "Suicide risk assessment")
		XCTAssertEqual(inst.version, "1.0.0")
		
		return inst
	}
	
	func testPlanDefinition2() {
		do {
			let instance = try runPlanDefinition2()
			try runPlanDefinition2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PlanDefinition successfully, but threw")
		}
	}
	
	@discardableResult
	func runPlanDefinition2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PlanDefinition {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "plandefinition-protocol-example.json")
		
		XCTAssertEqual(inst.actionDefinition?[0].activityDefinition?.reference, "#procedure")
		XCTAssertEqual(inst.actionDefinition?[0].condition?.expression, "Observation of Obesity or BMI Measured in Past 2 Years")
		XCTAssertEqual(inst.actionDefinition?[0].label, "Measure BMI")
		XCTAssertEqual(inst.actionDefinition?[0].title, "Measure, Weight, Height, Waist, Circumference; Calculate BMI")
		XCTAssertEqual(inst.contained?[0].id, "procedure")
		XCTAssertEqual(inst.contributor?[0].name, "National Heart, Lung, and Blood Institute http://www.nhlbi.nih.gov/health-pro/guidelines/current/obesity-guidelines/e_textbook/txgd/algorthm/algorthm.htm")
		XCTAssertEqual(inst.contributor?[0].type, "author")
		XCTAssertEqual(inst.id, "protocol-example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.org")
		XCTAssertEqual(inst.identifier?[0].value, "example-1")
		XCTAssertEqual(inst.purpose, "Example of A medical algorithm for assessment and treatment of overweight and obesity")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.title, "Obesity Assessment Protocol")
		XCTAssertEqual(inst.type?.coding?[0].code, "protocol")
		
		return inst
	}
}
