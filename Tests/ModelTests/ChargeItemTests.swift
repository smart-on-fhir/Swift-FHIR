//
//  ChargeItemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.9.0.11599 on 2017-03-14.
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
		
		XCTAssertEqual(inst.account?[0].reference, "Account/example")
		XCTAssertEqual(inst.code?.coding?[0].code, "01510")
		XCTAssertEqual(inst.code?.coding?[0].display, "Zusatzpauschale für Beobachtung nach diagnostischer Koronarangiografie")
		XCTAssertEqual(inst.context?.reference, "Encounter/example")
		XCTAssertEqual(inst.definition?[0].absoluteString, "http://www.kbv.de/tools/ebm/html/01520_2904360860826220813632.html")
		XCTAssertEqual(inst.enteredDate?.description, "2017-01-25T23:55:04+01:00")
		XCTAssertEqual(inst.enterer?.reference, "Practitioner/example")
		XCTAssertEqual(inst.factorOverride, "0.8")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?.system?.absoluteString, "http://myHospital.org/ChargeItems")
		XCTAssertEqual(inst.identifier?.value, "654321")
		XCTAssertEqual(inst.note?[0].authorReference?.reference, "Practitioner/example")
		XCTAssertEqual(inst.note?[0].text, "The code is only applicable for periods longer than 4h")
		XCTAssertEqual(inst.note?[0].time?.description, "2017-01-25T23:55:04+01:00")
		XCTAssertEqual(inst.occurrencePeriod?.end?.description, "2017-01-25T12:35:00+01:00")
		XCTAssertEqual(inst.occurrencePeriod?.start?.description, "2017-01-25T08:00:00+01:00")
		XCTAssertEqual(inst.overrideReason, "Patient is Cardiologist's golf buddy, so he gets a 20% discount!")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].code, "17561000")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].display, "Cardiologist")
		XCTAssertEqual(inst.participant?[0].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].code, "224542009")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].display, "Coronary Care Nurse")
		XCTAssertEqual(inst.participant?[1].role?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.performingOrganization?.identifier?.system?.absoluteString, "http://myhospital/NamingSystem/departments")
		XCTAssertEqual(inst.performingOrganization?.identifier?.value, "CARD_INTERMEDIATE_CARE")
		XCTAssertEqual(inst.priceOverride?.code, "EUR")
		XCTAssertEqual(inst.priceOverride?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.priceOverride?.unit, "EUR")
		XCTAssertEqual(inst.priceOverride?.value, "40")
		XCTAssertEqual(inst.quantity?.value, "1")
		XCTAssertEqual(inst.reason?[0].coding?[0].code, "123456")
		XCTAssertEqual(inst.reason?[0].coding?[0].display, "DIAG-1")
		XCTAssertEqual(inst.reason?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/icd-10")
		XCTAssertEqual(inst.requestingOrganization?.identifier?.system?.absoluteString, "http://myhospital/NamingSystem/departments")
		XCTAssertEqual(inst.requestingOrganization?.identifier?.value, "CARD_U1")
		XCTAssertEqual(inst.service?[0].reference, "Procedure/example")
		XCTAssertEqual(inst.status, ChargeItemStatus(rawValue: "billable")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Example of ChargeItem Usage in Context of the German EBM Billing code system</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
