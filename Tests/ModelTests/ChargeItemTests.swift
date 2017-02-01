//
//  ChargeItemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.10959 on 2017-02-01.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRChargeItem = Models.ChargeItem
#else
import SwiftFHIR
typealias SwiftFHIRChargeItem = SwiftFHIR.ChargeItem
#endif


class ChargeItemTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRChargeItem {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRChargeItem {
		return try SwiftFHIRChargeItem(json: json)
	}
	
	func testChargeItem1() {
		do {
			let instance = try runChargeItem1()
			try runChargeItem1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ChargeItem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runChargeItem1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRChargeItem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "chargeitem-example.json")
		
		XCTAssertEqual(inst.account?.reference, "Account/9912345")
		XCTAssertEqual(inst.code?.coding?[0].code, "01510")
		XCTAssertEqual(inst.code?.coding?[0].display, "Zusatzpauschale für Beobachtung nach diagnostischer Koronarangiografie")
		XCTAssertEqual(inst.context?.reference, "Encounter/345")
		XCTAssertEqual(inst.enteredDate?.description, "2017-01-25T23:55:04+01:00")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/123")
		XCTAssertEqual(inst.factorOverride, "0.8")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://myHospital.org/ChargeItems")
		XCTAssertEqual(inst.identifier?.value, "654321")
		XCTAssertEqual(inst.occurrencePeriod?.end?.description, "2017-01-25T12:35:00+01:00")
		XCTAssertEqual(inst.occurrencePeriod?.start?.description, "2017-01-25T08:00:00+01:00")
		XCTAssertEqual(inst.overrideReason, "Patient is Cardiologist's golf buddy, so he gets a 20% discount")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Practitioner/123")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].code, "17561000")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].display, "Cardiologist")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/345")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].code, "224542009")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].display, "Coronary Care Nurse")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.performingOrganization?.identifier?.system?.absoluteString, "http://myhospital/NamingSystem/departments")
		XCTAssertEqual(inst.performingOrganization?.identifier?.value, "CARD_INTERMEDIATE_CARE")
		XCTAssertEqual(inst.quantity?.value, "1")
		XCTAssertEqual(inst.requestingOrganization?.identifier?.system?.absoluteString, "http://myhospital/NamingSystem/departments")
		XCTAssertEqual(inst.requestingOrganization?.identifier?.value, "CARD_U1")
		XCTAssertEqual(inst.service?[0].reference, "Procedure/4711")
		XCTAssertEqual(inst.subject?.reference, "Patient/123")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example of ChargeItem Usage in Context of the German EBM Billing code system</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
