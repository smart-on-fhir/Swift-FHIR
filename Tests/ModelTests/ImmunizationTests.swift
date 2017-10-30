//
//  ImmunizationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 3.0.0.11832 on 2017-03-22.
//  2017, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRImmunization = Models.Immunization
#else
import SwiftFHIR
typealias SwiftFHIRImmunization = SwiftFHIR.Immunization
#endif


class ImmunizationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRImmunization {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRImmunization {
		return try SwiftFHIRImmunization(json: json)
	}
	
	func testImmunization1() {
		do {
			let instance = try runImmunization1()
			try runImmunization1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Immunization successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunization1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunization {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunization-example-historical.json")
		
		XCTAssertEqual(inst.date?.description, "2012-01-15")
		XCTAssertEqual(inst.id, "historical")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.notGiven, false)
		XCTAssertEqual(inst.note?[0].text, "Notes on adminstration of a historical vaccine")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.primarySource, false)
		XCTAssertEqual(inst.reportOrigin?.coding?[0].code, "record")
		XCTAssertEqual(inst.reportOrigin?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/immunization-origin")
		XCTAssertEqual(inst.reportOrigin?.text, "Written Record")
		XCTAssertEqual(inst.status, MedicationAdministrationStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.vaccineCode?.coding?[0].code, "GNFLU")
		XCTAssertEqual(inst.vaccineCode?.coding?[0].system?.absoluteString, "urn:oid:1.2.36.1.2001.1005.17")
		XCTAssertEqual(inst.vaccineCode?.text, "Influenza")
		
		return inst
	}
	
	func testImmunization2() {
		do {
			let instance = try runImmunization2()
			try runImmunization2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Immunization successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunization2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunization {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunization-example-refused.json")
		
		XCTAssertEqual(inst.date?.description, "2013-01-10")
		XCTAssertEqual(inst.explanation?.reasonNotGiven?[0].coding?[0].code, "MEDPREC")
		XCTAssertEqual(inst.explanation?.reasonNotGiven?[0].coding?[0].display, "medical precaution")
		XCTAssertEqual(inst.explanation?.reasonNotGiven?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id, "notGiven")
		XCTAssertEqual(inst.notGiven, true)
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.primarySource, true)
		XCTAssertEqual(inst.status, MedicationAdministrationStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.vaccineCode?.coding?[0].code, "01")
		XCTAssertEqual(inst.vaccineCode?.coding?[0].display, "DTP")
		XCTAssertEqual(inst.vaccineCode?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/sid/cvx")
		
		return inst
	}
	
	func testImmunization3() {
		do {
			let instance = try runImmunization3()
			try runImmunization3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Immunization successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runImmunization3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRImmunization {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "immunization-example.json")
		
		XCTAssertEqual(inst.date?.description, "2013-01-10")
		XCTAssertEqual(inst.doseQuantity?.code, "mg")
		XCTAssertEqual(inst.doseQuantity?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.doseQuantity?.value, "5")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.expirationDate?.description, "2015-02-15")
		XCTAssertEqual(inst.explanation?.reason?[0].coding?[0].code, "429060002")
		XCTAssertEqual(inst.explanation?.reason?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234")
		XCTAssertEqual(inst.location?.reference, "Location/1")
		XCTAssertEqual(inst.lotNumber, "AAJN11K")
		XCTAssertEqual(inst.manufacturer?.reference, "Organization/hl7")
		XCTAssertEqual(inst.notGiven, false)
		XCTAssertEqual(inst.note?[0].text, "Notes on adminstration of vaccine")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.practitioner?[0].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.practitioner?[0].role?.coding?[0].code, "OP")
		XCTAssertEqual(inst.practitioner?[0].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0443")
		XCTAssertEqual(inst.practitioner?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.practitioner?[1].role?.coding?[0].code, "AP")
		XCTAssertEqual(inst.practitioner?[1].role?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v2/0443")
		XCTAssertEqual(inst.primarySource, true)
		XCTAssertEqual(inst.reaction?[0].date?.description, "2013-01-10")
		XCTAssertEqual(inst.reaction?[0].detail?.reference, "Observation/example")
		XCTAssertEqual(inst.reaction?[0].reported, true)
		XCTAssertEqual(inst.route?.coding?[0].code, "IM")
		XCTAssertEqual(inst.route?.coding?[0].display, "Injection, intramuscular")
		XCTAssertEqual(inst.route?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/RouteOfAdministration")
		XCTAssertEqual(inst.site?.coding?[0].code, "LA")
		XCTAssertEqual(inst.site?.coding?[0].display, "left arm")
		XCTAssertEqual(inst.site?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ActSite")
		XCTAssertEqual(inst.status, MedicationAdministrationStatus(rawValue: "completed")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.vaccinationProtocol?[0].authority?.reference, "Organization/hl7")
		XCTAssertEqual(inst.vaccinationProtocol?[0].description_fhir, "Vaccination Protocol Sequence 1")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseSequence, 1)
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatus?.coding?[0].code, "count")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatus?.coding?[0].display, "Counts")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatus?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/vaccination-protocol-dose-status")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatusReason?.coding?[0].code, "coldchbrk")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatusReason?.coding?[0].display, "Cold chain break")
		XCTAssertEqual(inst.vaccinationProtocol?[0].doseStatusReason?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/vaccination-protocol-dose-status-reason")
		XCTAssertEqual(inst.vaccinationProtocol?[0].series, "Vaccination Series 1")
		XCTAssertEqual(inst.vaccinationProtocol?[0].seriesDoses, 2)
		XCTAssertEqual(inst.vaccinationProtocol?[0].targetDisease?[0].coding?[0].code, "1857005")
		XCTAssertEqual(inst.vaccinationProtocol?[0].targetDisease?[0].coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.vaccineCode?.coding?[0].code, "FLUVAX")
		XCTAssertEqual(inst.vaccineCode?.coding?[0].system?.absoluteString, "urn:oid:1.2.36.1.2001.1005.17")
		XCTAssertEqual(inst.vaccineCode?.text, "Fluvax (Influenza)")
		
		return inst
	}
}
