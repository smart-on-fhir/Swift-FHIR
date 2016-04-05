//
//  OrderSetTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-04-05.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class OrderSetTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> OrderSet {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> OrderSet {
		let instance = OrderSet(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testOrderSet1() {
		do {
			let instance = try runOrderSet1()
			try runOrderSet1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test OrderSet successfully, but threw")
		}
	}
	
	func runOrderSet1(json: FHIRJSON? = nil) throws -> OrderSet {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "orderset-example.json")
		
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![0].expression!, "ReferralRequestFulfillmentTime")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![0].path!, "fulfillmentTime")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![1].expression!, "Patient")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![1].path!, "patient")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![2].expression!, "Practitioner")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![2].path!, "requester")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![3].expression!, "RiskAssessmentScore")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![3].path!, "reason")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![4].expression!, "RiskAssessment")
		XCTAssertEqual(inst.action![0].action![0].action![0].customization![4].path!, "supportingInformation")
		XCTAssertEqual(inst.action![0].action![0].action![0].resource!.reference!, "#referralRequest")
		XCTAssertEqual(inst.action![0].action![0].action![0].textEquivalent!, "Refer to outpatient mental health program for evaluation and treatment of mental health conditions now")
		XCTAssertEqual(inst.action![0].action![0].behavior![0].type!.code!, "grouping-behavior")
		XCTAssertEqual(inst.action![0].action![0].behavior![0].value!.code!, "logical-group")
		XCTAssertEqual(inst.action![0].action![0].behavior![1].type!.code!, "selection-behavior")
		XCTAssertEqual(inst.action![0].action![0].behavior![1].value!.code!, "any")
		XCTAssertEqual(inst.action![0].action![0].title!, "Consults and Referrals")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![0].resource!.reference!, "#citalopramPrescription")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![0].textEquivalent!, "citalopram 20 mg tablet 1 tablet oral 1 time daily now (30 table; 3 refills)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![1].textEquivalent!, "escitalopram 10 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![2].textEquivalent!, "fluoxetine 20 mg capsule 1 capsule oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![3].textEquivalent!, "paroxetine 20 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].action![4].textEquivalent!, "sertraline 50 mg tablet 1 tablet oral 1 time daily now (30 tablet; 3 refills)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].behavior![0].type!.code!, "grouping-behavior")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].behavior![0].value!.code!, "logical-group")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].behavior![1].type!.code!, "selection-behavior")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].behavior![1].value!.code!, "at-most-one")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].documentation![0].contentType!, "text/html")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].documentation![0].title!, "National Library of Medicine. DailyMed website. CITALOPRAM- citalopram hydrobromide tablet, film coated.")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].documentation![0].url!.absoluteString, "http://dailymed.nlm.nih.gov/dailymed/drugInfo.cfm?setid=6daeb45c-451d-b135-bf8f-2d6dff4b6b01")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![0].title!, "Selective Serotonin Reuptake Inhibitors (Choose a mazimum of one or document reasons for exception)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![1].textEquivalent!, "Dopamine Norepinephrine Reuptake Inhibitors (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![2].textEquivalent!, "Serotonin Norepinephrine Reuptake Inhibitors (Choose a maximum of one or doument reasons for exception)")
		XCTAssertEqual(inst.action![0].action![1].action![0].action![3].textEquivalent!, "Norepinephrine-Serotonin Modulators (Choose a maximum of one or document reasons for exception)")
		XCTAssertEqual(inst.action![0].action![1].action![0].behavior![0].type!.code!, "grouping-behavior")
		XCTAssertEqual(inst.action![0].action![1].action![0].behavior![0].value!.code!, "logical-group")
		XCTAssertEqual(inst.action![0].action![1].action![0].behavior![1].type!.code!, "selection-behavior")
		XCTAssertEqual(inst.action![0].action![1].action![0].behavior![1].value!.code!, "at-most-one")
		XCTAssertEqual(inst.action![0].action![1].action![0].supportingEvidence![0].contentType!, "text/html")
		XCTAssertEqual(inst.action![0].action![1].action![0].supportingEvidence![0].title!, "Practice Guideline for the Treatment of Patients with Major Depressive Disorder")
		XCTAssertEqual(inst.action![0].action![1].action![0].supportingEvidence![0].url!.absoluteString, "http://psychiatryonline.org/pb/assets/raw/sitewide/practice_guidelines/guidelines/mdd.pdf")
		XCTAssertEqual(inst.action![0].action![1].action![0].title!, "First-Line Antidepressants")
		XCTAssertEqual(inst.action![0].action![1].behavior![0].type!.code!, "grouping-behavior")
		XCTAssertEqual(inst.action![0].action![1].behavior![0].value!.code!, "logical-group")
		XCTAssertEqual(inst.action![0].action![1].behavior![1].type!.code!, "selection-behavior")
		XCTAssertEqual(inst.action![0].action![1].behavior![1].value!.code!, "at-most-one")
		XCTAssertEqual(inst.action![0].action![1].title!, "Medications")
		XCTAssertEqual(inst.action![0].title!, "Suicide Risk Assessment and Outpatient Management")
		XCTAssertEqual(inst.contained![0].id!, "referralRequest")
		XCTAssertEqual(inst.contained![1].id!, "citalopramPrescription")
		XCTAssertEqual(inst.contained![2].id!, "citalopramMedication")
		XCTAssertEqual(inst.contained![3].id!, "citalopramSubstance")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.library![0].reference!, "Library/mmi-suiciderisk-orderset-logic")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![0].value!, "415-362-4007")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![1].use!, "work")
		XCTAssertEqual(inst.moduleMetadata!.contact![0].telecom![1].value!, "info@motivemi.com")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![0].system!, "phone")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![0].use!, "work")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![0].value!, "415-362-4007")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![1].system!, "email")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![1].use!, "work")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].contact![0].telecom![1].value!, "info@motivemi.com")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].name!, "Motive Medical Intelligence")
		XCTAssertEqual(inst.moduleMetadata!.contributor![0].type!, "author")
		XCTAssertEqual(inst.moduleMetadata!.coverage![0].focus!.code!, "patient-age-group")
		XCTAssertEqual(inst.moduleMetadata!.coverage![0].value!.coding![0].code!, "133936004")
		XCTAssertEqual(inst.moduleMetadata!.coverage![0].value!.coding![0].display!, "Adult")
		XCTAssertEqual(inst.moduleMetadata!.coverage![1].focus!.code!, "clinical-focus")
		XCTAssertEqual(inst.moduleMetadata!.coverage![1].value!.coding![0].code!, "87512008")
		XCTAssertEqual(inst.moduleMetadata!.coverage![1].value!.coding![0].display!, "Mild major depression")
		XCTAssertEqual(inst.moduleMetadata!.coverage![2].focus!.code!, "clinical-focus")
		XCTAssertEqual(inst.moduleMetadata!.coverage![2].value!.coding![0].code!, "40379007")
		XCTAssertEqual(inst.moduleMetadata!.coverage![2].value!.coding![0].display!, "Major depression, recurrent, mild")
		XCTAssertEqual(inst.moduleMetadata!.coverage![3].focus!.code!, "clinical-focus")
		XCTAssertEqual(inst.moduleMetadata!.coverage![3].value!.coding![0].code!, "394687007")
		XCTAssertEqual(inst.moduleMetadata!.coverage![3].value!.coding![0].display!, "Low suicide risk")
		XCTAssertEqual(inst.moduleMetadata!.coverage![4].focus!.code!, "clinical-focus")
		XCTAssertEqual(inst.moduleMetadata!.coverage![4].value!.coding![0].code!, "225337009")
		XCTAssertEqual(inst.moduleMetadata!.coverage![4].value!.coding![0].display!, "Suicide risk assessment")
		XCTAssertEqual(inst.moduleMetadata!.coverage![5].focus!.code!, "clinical-venue")
		XCTAssertEqual(inst.moduleMetadata!.coverage![5].value!.coding![0].code!, "440655000")
		XCTAssertEqual(inst.moduleMetadata!.coverage![5].value!.coding![0].display!, "Outpatient environment")
		XCTAssertEqual(inst.moduleMetadata!.coverage![6].focus!.code!, "target-user")
		XCTAssertEqual(inst.moduleMetadata!.coverage![6].value!.coding![0].code!, "309343006")
		XCTAssertEqual(inst.moduleMetadata!.coverage![6].value!.coding![0].display!, "Physician")
		XCTAssertEqual(inst.moduleMetadata!.description_fhir!, "...")
		XCTAssertEqual(inst.moduleMetadata!.identifier![0].use!, "official")
		XCTAssertEqual(inst.moduleMetadata!.identifier![0].value!, "mmi:low-suicide-risk-order-set")
		XCTAssertEqual(inst.moduleMetadata!.publicationDate!.description, "2015-08-15")
		XCTAssertEqual(inst.moduleMetadata!.publisher!, "Motive Medical Intelligence")
		XCTAssertEqual(inst.moduleMetadata!.status!, "draft")
		XCTAssertEqual(inst.moduleMetadata!.title!, "Low Suicide Risk Order Set")
		XCTAssertEqual(inst.moduleMetadata!.topic![0].text!, "Chlamydia Screeening")
		XCTAssertEqual(inst.moduleMetadata!.type!, "order-set")
		XCTAssertEqual(inst.moduleMetadata!.version!, "1.0.0")
		XCTAssertEqual(inst.text!.div!, "<div>Low Suicide Risk Order Set...</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
